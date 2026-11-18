import "@ebusd/ebus-typespec";
import "../_templates.tsp";
import "./_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Str;
using Ebus.Dtm;

namespace Wolf;

// --- shared register-read template (precomputed address CRC, see 15.w.ka.tsp / evidence) ---

/** register read whose first ID byte is the precomputed Weishaupt CRC-8 (poly 0x5C) */
@base(MF, 0x22)
model crcr {}

/** register read with a precomputed address checksum */
@inherit(crcr)
model CrcRead<T> {
  value: T;
}

/**
 * register write: ebusd computes the first ID byte when sending, a CRC-8 (poly 0x5C) over the
 * register address and the value
 */
@write
@base(MF, 0x23)
model crcw {}

/**
 * Setting read with 50 22 and written with 50 23, one register per telegram, both with the
 * checksum computed at run time (`@wcrc` on the model).
 */
@inherit(crcr, crcw)
model CrcSetting<T> {
  value: T;
}

// --- heating-circuit registers of the room units (FS), read side, see evidence ---
// A room unit and its heating module answer the same register numbers, each with its own value.

/** flow temperature the heating circuit requests from the heat source */
@ext(0xb8, 0x02, 0x00)
model HeatDemandTemp is CrcRead<temp10>;

/** flow setpoint of the heating circuit */
@ext(0x2c, 0x04, 0x00)
model SupplyHCSetTemp is CrcRead<otemp10>;

/** outside temperature */
@ext(0x74, 0x0c, 0x00)
model OutsideTemp is CrcRead<otemp10>;

/** outside temperature, weighted over time */
@ext(0x7e, 0x0c, 0x0a)
model OutsideWeightedTemp is CrcRead<otemp10>;

/** room temperature */
@ext(0xec, 0x11, 0x00)
model RoomTemp is CrcRead<otemp10>;

/** normal room temperature setpoint */
@ext(0x70, 0x05, 0x00)
model RoomNormalTemp is CrcRead<temp10>;

/** setback room temperature setpoint */
@ext(0x58, 0x08, 0x00)
model RoomSetbackTemp is CrcRead<temp10>;

/** room temperature setpoint of the frost protection */
@ext(0x96, 0x14, 0x0a)
model RoomFrostProtectionTemp is CrcRead<temp10>;

/** steepness of the heating curve */
@inherit(crcr)
@ext(0xcd, 0x0e, 0x01)
model GradientCurve {
  @divisor(10)
  value: UIN;
}

/** outside temperature of the summer / winter changeover */
@ext(0x25, 0x16, 0x01)
model SummerWinterChangeOverTemp is CrcRead<temp10>;

/** maximum flow temperature */
@ext(0x64, 0x28, 0x00)
model SupplyMaxTemp is CrcRead<temp10>;

/** minimum flow temperature */
@ext(0x81, 0x2b, 0x01)
model SupplyMinTemp is CrcRead<temp10>;

/** lead time of the optimised switch-on */
@ext(0xb1, 0x10, 0x01)
model SwitchOnRuntime is CrcRead<minutes>;

/** outside temperature below which the frost protection starts */
@ext(0xb2, 0xbe, 0x02)
model FrostProtectionLimitTemp is CrcRead<otemp10>;

// --- registers of the heating modules (EM), read side, see evidence ---

/** flow temperature of the heating circuit */
@ext(0x90, 0x0f, 0x00)
model SupplyHCTemp is CrcRead<otemp10>;

/** boiler boost offset: added to the flow setpoint for the demand to the heat source */
@ext(0xed, 0x11, 0x01)
model BoilerMCBoostTemp is CrcRead<diff10>;

// --- information-value registers of the boiler automat (PBSB 50 22), read side, see evidence ---
// The WTC display shows these as "i" codes (menu Info). They share the generic register space
// with the system manager (lot A); the sensor wired to a register differs by device. Shared by
// both boilers; the "i" code is cited on the per-boiler read.

/** flow temperature */
@ext(0x28, 0x0d, 0x00)
model SupplyTemp is CrcRead<otemp10>;

/** return temperature */
@ext(0x24, 0x16, 0x00)
model ReturnTemp is CrcRead<otemp10>;

/** flue gas temperature */
@ext(0x09, 0x45, 0x01)
model FlueGasTemp is CrcRead<otemp10>;

/** domestic hot water temperature */
@ext(0xcc, 0x0e, 0x00)
model DHWTemp is CrcRead<otemp10>;

/** hydraulic separator temperature */
@ext(0x66, 0x86, 0x02)
model HydraulicSeparatorTemp is CrcRead<otemp10>;

// Software versions: two bytes carrying the version the bus scan reports as "SW" (for the
// boiler automat, 0x11 0x04 = SW 1104). Kept as the raw bytes, like the scan.

/** WCM-CPU software version */
@inherit(crcr)
@ext(0x45, 0x99, 0x01)
model SoftwareVersionCPU {
  @maxLength(2)
  value: HEX;
}

/** WCM-CUI software version */
@inherit(crcr)
@ext(0xa1, 0x9a, 0x01)
model SoftwareVersionCUI {
  @maxLength(2)
  value: HEX;
}

// --- memory read of the boiler automat (PBSB 50 00), see evidence ---

/**
 * Memory read. The ID is the precomputed CRC-8 followed by items "code, address": the high
 * nibble of the code is the number of bytes minus one, the low nibble the memory area
 * (1 = RAM, 2 = EEPROM, 3 = XRAM); code 0x06 sets the high byte of the address. The answer
 * starts with a status byte, followed by the bytes of all items in order.
 */
@base(MF, 0x00)
model memr {
  /** first answer byte: 0, or the number of bytes asked for when the data read 0 */
  FirstByte: UCH;
}

enum _faultKind {
  fault: 0,
  warning: 1,
}

/** ionisation signal */
@divisor(10)
scalar ionisation extends UCH;

/**
 * One slot of the fault history of the boiler automat: the fault and the operating values
 * at the moment it occurred. The six slots form a ring, see FaultHistoryPointer.
 */
@inherit(memr)
model FaultHistorySlot {
  /** fault number */
  Number: BI0_7;

  /** fault (F) or warning (W) */
  @values(_faultKind)
  Kind: BI7;

  /** operating phase */
  OperatingPhase: operatingPhase;

  /** burner load */
  Load: percent0;

  /** set speed of the PWM pump */
  PumpSpeed: percent0;

  /** boiler temperature */
  BoilerTemp: temp0;

  /** flue gas temperature */
  FlueGasTemp: temp0;

  /** ionisation signal */
  Ionisation: ionisation;

  /** return temperature */
  ReturnTemp: temp0;
}

/**
 * Address of the last byte written to the fault history. The slot that ends at this address
 * holds the most recent fault (slot 1 ends at 0x0209, slot 6 at 0x0231).
 */
@inherit(memr)
model FaultHistoryPointer {
  value: UIN;
}

/**
 * Counters of the boiler automat, read in one memory read of EEPROM 0x01e6 to 0x01ed.
 */
@inherit(memr)
@ext(0x26, 0x06, 0x01, 0x72, 0xe6)
model Counters {
  /** hours with mains on */
  @unit("h")
  OperatingHours: U3N;

  /** burner operating hours */
  BurnerHours: hours;

  /** burner starts */
  BurnerStarts: U3N;
}

/*
 * Fault counters of the boiler automat, one per fault number, two bytes each, in EEPROM
 * 0x0196 to 0x01d7 by descending number. The number is the one of the fault history; a
 * number the manual lists both as a warning (W) and as a fault (F) has one counter only.
 * Read in items of at most 10 bytes: an answer of 12 data bytes that are all zero was lost
 * most of the time on the bus, one of 10 never. The first byte of each answer is kept as a
 * field through the shared `memr` base, like the other memory reads.
 */

/** Fault counters, EEPROM 0x0196 to 0x019f. */
@inherit(memr)
@ext(0xe2, 0x06, 0x01, 0x92, 0x96)
model FaultCounters1 {
  /** W57/F57: communication between the automat and its operating unit faulty */
  Code57: UIN;

  /** F55: reset too often */
  Code55: UIN;

  /** F53: supply voltage or mains frequency out of tolerance */
  Code53: UIN;

  /** F52: burner data record error */
  Code52: UIN;

  /** F51: boiler data record error */
  Code51: UIN;
}

/** Fault counters, EEPROM 0x01a0 to 0x01a9. */
@inherit(memr)
@ext(0xd4, 0x06, 0x01, 0x92, 0xa0)
model FaultCounters2 {
  /** F49: input H2 closed while set for a condensate lifting unit */
  Code49: UIN;

  /** W48/F48: run time of the flue gas damper exceeded */
  Code48: UIN;

  /** W47: gas pressure too low */
  Code47: UIN;

  /** F46: pressure on the flue gas side too high */
  Code46: UIN;

  /** F45: air pressure switch does not switch */
  Code45: UIN;
}

/** Fault counters, EEPROM 0x01aa to 0x01b3. */
@inherit(memr)
@ext(0xde, 0x06, 0x01, 0x92, 0xaa)
model FaultCounters3 {
  /** F44: fan standstill check failed */
  Code44: UIN;

  /** F43: fan does not reach the requested speed */
  Code43: UIN;

  /** F41: gas valve leaking */
  Code41: UIN;

  /** W39: de-coupling sensor defective */
  Code39: UIN;

  /** F38: flue gas pressure switch does not release at the fan standstill check */
  Code38: UIN;
}

/** Fault counters, EEPROM 0x01b4 to 0x01bd. */
@inherit(memr)
@ext(0xc0, 0x06, 0x01, 0x92, 0xb4)
model FaultCounters4 {
  /** F37: return sensor defective */
  Code37: UIN;

  /** F36: water pressure too low */
  Code36: UIN;

  /** F35: flow sensor defective */
  Code35: UIN;

  /** W34: hot-water sensor defective */
  Code34: UIN;

  /** W33: outside sensor defective */
  Code33: UIN;
}

/** Fault counters, EEPROM 0x01be to 0x01c7. */
@inherit(memr)
@ext(0xca, 0x06, 0x01, 0x92, 0xbe)
model FaultCounters5 {
  /** F32: air pressure switch not in its rest position */
  Code32: UIN;

  /** F31: flue gas sensor defective */
  Code31: UIN;

  /** F30: sensor of the safety temperature limiter defective */
  Code30: UIN;

  /** W24: input H2 closed while set as a lockout input */
  Code24: UIN;

  /** F23: flame signal without a flame */
  Code23: UIN;
}

/** Fault counters, EEPROM 0x01c8 to 0x01d1. */
@inherit(memr)
@ext(0xbc, 0x06, 0x01, 0x92, 0xc8)
model FaultCounters6 {
  /** W22: flame lost during operation */
  Code22: UIN;

  /** W21/F21: no flame at burner start */
  Code21: UIN;

  /** W18/F18: difference between limiter and flow temperature too large */
  Code18: UIN;

  /** W16: flue gas temperature too high */
  Code16: UIN;

  /** W15/F15: difference between flow and return temperature too large */
  Code15: UIN;
}

/** Fault counters, EEPROM 0x01d2 to 0x01d7. */
@inherit(memr)
@ext(0x2e, 0x06, 0x01, 0x52, 0xd2)
model FaultCounters7 {
  /** W14: temperature at the safety limiter rises too fast */
  Code14: UIN;

  /** W12: temperature at the safety limiter, flow or return sensor above 95 °C */
  Code12: UIN;

  /** F11: temperature at the safety limiter above 105 °C */
  Code11: UIN;
}

/** temperature, -40 when the sensor is not fitted */
@unit("°C")
scalar temp0s extends SCH;

/**
 * Temperatures measured by the boiler automat, read in one memory read of the RAM bytes
 * 0x62, 0x63, 0x68 and 0x6c.
 */
@inherit(memr)
@ext(0x40, 0x11, 0x62, 0x01, 0x68, 0x01, 0x6c)
model Temperatures {
  /** return temperature */
  ReturnTemp: temp0s;

  /** flue gas temperature */
  FlueGasTemp: temp0s;

  /** boiler flow temperature */
  SupplyTemp: temp0s;

  /** outside temperature */
  OutsideTemp: temp0s;
}

/**
 * Burner load, flame signal and pump speed of the boiler automat, read in one memory read of
 * the XRAM bytes 0xb2 and 0xd5 and the RAM byte 0xed.
 */
@inherit(memr)
@ext(0xd1, 0x03, 0xb2, 0x03, 0xd5, 0x01, 0xed)
model Operation {
  /** burner load */
  Load: percent0;

  /** ionisation signal */
  Ionisation: ionisation;

  /** set speed of the PWM pump */
  PumpSpeed: percent0;
}

// Signed tenths: outside sensors, and registers that answer -100.0 when no sensor is fitted.
/** temperature */
@unit("°C")
@divisor(10)
scalar otemp10 extends SIN;

/** temperature difference */
@unit("K")
@divisor(10)
scalar diff10 extends SIN;

/** seconds */
@unit("s")
scalar seconds extends UIN;

enum _enabled {
  Enabled: 0,
  Disabled: 1,
}

enum _weekday {
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6,
  Sunday: 7,
}

/** day of the week */
@values(_weekday)
scalar weekday extends UIN;

enum _month {
  January: 1,
  February: 2,
  March: 3,
  April: 4,
  May: 5,
  June: 6,
  July: 7,
  August: 8,
  September: 9,
  October: 10,
  November: 11,
  December: 12,
}

/** month of the year */
@values(_month)
scalar month extends UIN;

/**
 * One switch-time slot of a weekly program (read side): a start ("from") and stop ("to")
 * time, each with an enable flag. Read via the precomputed-CRC register base.
 */
@inherit(crcr)
model SwitchTimes {
  ToTime: TTQ;
  @values(_enabled) ToEnabled: BI7;
  FromTime: TTQ;
  @values(_enabled) FromEnabled: BI7;
}

/**
 * Switch-time slot read and written, one slot per telegram, the checksum computed at run time
 * (`@wcrc` on the model): end time then start time, each with its enable flag.
 */
@inherit(crcr, crcw)
model SwitchTimesSetting {
  ToTime: TTQ;
  @values(_enabled) ToEnabled: BI7;
  FromTime: TTQ;
  @values(_enabled) FromEnabled: BI7;
}

// --- weekly programs of the room units (FS), read side, see evidence ---
// Three switch-time slots per weekday. Register address: the weekday in the high nibble
// (1 = Monday to 7 = Sunday) and the slot in the low nibble (0 to 2); the second byte selects
// the program.

// heating program 1 (0x14)

/** heating program 1, Monday slot 1 */
@ext(0xa4, 0x10, 0x14)
model HCProgram1Mon1 is SwitchTimes;

/** heating program 1, Monday slot 2 */
@ext(0xf8, 0x11, 0x14)
model HCProgram1Mon2 is SwitchTimes;

/** heating program 1, Monday slot 3 */
@ext(0x1c, 0x12, 0x14)
model HCProgram1Mon3 is SwitchTimes;

/** heating program 1, Tuesday slot 1 */
@ext(0x28, 0x20, 0x14)
model HCProgram1Tue1 is SwitchTimes;

/** heating program 1, Tuesday slot 2 */
@ext(0x74, 0x21, 0x14)
model HCProgram1Tue2 is SwitchTimes;

/** heating program 1, Tuesday slot 3 */
@ext(0x90, 0x22, 0x14)
model HCProgram1Tue3 is SwitchTimes;

/** heating program 1, Wednesday slot 1 */
@ext(0x98, 0x30, 0x14)
model HCProgram1Wed1 is SwitchTimes;

/** heating program 1, Wednesday slot 2 */
@ext(0xc4, 0x31, 0x14)
model HCProgram1Wed2 is SwitchTimes;

/** heating program 1, Wednesday slot 3 */
@ext(0x20, 0x32, 0x14)
model HCProgram1Wed3 is SwitchTimes;

/** heating program 1, Thursday slot 1 */
@ext(0x6c, 0x40, 0x14)
model HCProgram1Thu1 is SwitchTimes;

/** heating program 1, Thursday slot 2 */
@ext(0x30, 0x41, 0x14)
model HCProgram1Thu2 is SwitchTimes;

/** heating program 1, Thursday slot 3 */
@ext(0xd4, 0x42, 0x14)
model HCProgram1Thu3 is SwitchTimes;

/** heating program 1, Friday slot 1 */
@ext(0xdc, 0x50, 0x14)
model HCProgram1Fri1 is SwitchTimes;

/** heating program 1, Friday slot 2 */
@ext(0x80, 0x51, 0x14)
model HCProgram1Fri2 is SwitchTimes;

/** heating program 1, Friday slot 3 */
@ext(0x64, 0x52, 0x14)
model HCProgram1Fri3 is SwitchTimes;

/** heating program 1, Saturday slot 1 */
@ext(0x50, 0x60, 0x14)
model HCProgram1Sat1 is SwitchTimes;

/** heating program 1, Saturday slot 2 */
@ext(0x0c, 0x61, 0x14)
model HCProgram1Sat2 is SwitchTimes;

/** heating program 1, Saturday slot 3 */
@ext(0xe8, 0x62, 0x14)
model HCProgram1Sat3 is SwitchTimes;

/** heating program 1, Sunday slot 1 */
@ext(0xe0, 0x70, 0x14)
model HCProgram1Sun1 is SwitchTimes;

/** heating program 1, Sunday slot 2 */
@ext(0xbc, 0x71, 0x14)
model HCProgram1Sun2 is SwitchTimes;

/** heating program 1, Sunday slot 3 */
@ext(0x58, 0x72, 0x14)
model HCProgram1Sun3 is SwitchTimes;

// heating program 2 (0x15)

/** heating program 2, Monday slot 1 */
@ext(0xa5, 0x10, 0x15)
model HCProgram2Mon1 is SwitchTimes;

/** heating program 2, Monday slot 2 */
@ext(0xf9, 0x11, 0x15)
model HCProgram2Mon2 is SwitchTimes;

/** heating program 2, Monday slot 3 */
@ext(0x1d, 0x12, 0x15)
model HCProgram2Mon3 is SwitchTimes;

/** heating program 2, Tuesday slot 1 */
@ext(0x29, 0x20, 0x15)
model HCProgram2Tue1 is SwitchTimes;

/** heating program 2, Tuesday slot 2 */
@ext(0x75, 0x21, 0x15)
model HCProgram2Tue2 is SwitchTimes;

/** heating program 2, Tuesday slot 3 */
@ext(0x91, 0x22, 0x15)
model HCProgram2Tue3 is SwitchTimes;

/** heating program 2, Wednesday slot 1 */
@ext(0x99, 0x30, 0x15)
model HCProgram2Wed1 is SwitchTimes;

/** heating program 2, Wednesday slot 2 */
@ext(0xc5, 0x31, 0x15)
model HCProgram2Wed2 is SwitchTimes;

/** heating program 2, Wednesday slot 3 */
@ext(0x21, 0x32, 0x15)
model HCProgram2Wed3 is SwitchTimes;

/** heating program 2, Thursday slot 1 */
@ext(0x6d, 0x40, 0x15)
model HCProgram2Thu1 is SwitchTimes;

/** heating program 2, Thursday slot 2 */
@ext(0x31, 0x41, 0x15)
model HCProgram2Thu2 is SwitchTimes;

/** heating program 2, Thursday slot 3 */
@ext(0xd5, 0x42, 0x15)
model HCProgram2Thu3 is SwitchTimes;

/** heating program 2, Friday slot 1 */
@ext(0xdd, 0x50, 0x15)
model HCProgram2Fri1 is SwitchTimes;

/** heating program 2, Friday slot 2 */
@ext(0x81, 0x51, 0x15)
model HCProgram2Fri2 is SwitchTimes;

/** heating program 2, Friday slot 3 */
@ext(0x65, 0x52, 0x15)
model HCProgram2Fri3 is SwitchTimes;

/** heating program 2, Saturday slot 1 */
@ext(0x51, 0x60, 0x15)
model HCProgram2Sat1 is SwitchTimes;

/** heating program 2, Saturday slot 2 */
@ext(0x0d, 0x61, 0x15)
model HCProgram2Sat2 is SwitchTimes;

/** heating program 2, Saturday slot 3 */
@ext(0xe9, 0x62, 0x15)
model HCProgram2Sat3 is SwitchTimes;

/** heating program 2, Sunday slot 1 */
@ext(0xe1, 0x70, 0x15)
model HCProgram2Sun1 is SwitchTimes;

/** heating program 2, Sunday slot 2 */
@ext(0xbd, 0x71, 0x15)
model HCProgram2Sun2 is SwitchTimes;

/** heating program 2, Sunday slot 3 */
@ext(0x59, 0x72, 0x15)
model HCProgram2Sun3 is SwitchTimes;

// heating program 3 (0x16)

/** heating program 3, Monday slot 1 */
@ext(0xa6, 0x10, 0x16)
model HCProgram3Mon1 is SwitchTimes;

/** heating program 3, Monday slot 2 */
@ext(0xfa, 0x11, 0x16)
model HCProgram3Mon2 is SwitchTimes;

/** heating program 3, Monday slot 3 */
@ext(0x1e, 0x12, 0x16)
model HCProgram3Mon3 is SwitchTimes;

/** heating program 3, Tuesday slot 1 */
@ext(0x2a, 0x20, 0x16)
model HCProgram3Tue1 is SwitchTimes;

/** heating program 3, Tuesday slot 2 */
@ext(0x76, 0x21, 0x16)
model HCProgram3Tue2 is SwitchTimes;

/** heating program 3, Tuesday slot 3 */
@ext(0x92, 0x22, 0x16)
model HCProgram3Tue3 is SwitchTimes;

/** heating program 3, Wednesday slot 1 */
@ext(0x9a, 0x30, 0x16)
model HCProgram3Wed1 is SwitchTimes;

/** heating program 3, Wednesday slot 2 */
@ext(0xc6, 0x31, 0x16)
model HCProgram3Wed2 is SwitchTimes;

/** heating program 3, Wednesday slot 3 */
@ext(0x22, 0x32, 0x16)
model HCProgram3Wed3 is SwitchTimes;

/** heating program 3, Thursday slot 1 */
@ext(0x6e, 0x40, 0x16)
model HCProgram3Thu1 is SwitchTimes;

/** heating program 3, Thursday slot 2 */
@ext(0x32, 0x41, 0x16)
model HCProgram3Thu2 is SwitchTimes;

/** heating program 3, Thursday slot 3 */
@ext(0xd6, 0x42, 0x16)
model HCProgram3Thu3 is SwitchTimes;

/** heating program 3, Friday slot 1 */
@ext(0xde, 0x50, 0x16)
model HCProgram3Fri1 is SwitchTimes;

/** heating program 3, Friday slot 2 */
@ext(0x82, 0x51, 0x16)
model HCProgram3Fri2 is SwitchTimes;

/** heating program 3, Friday slot 3 */
@ext(0x66, 0x52, 0x16)
model HCProgram3Fri3 is SwitchTimes;

/** heating program 3, Saturday slot 1 */
@ext(0x52, 0x60, 0x16)
model HCProgram3Sat1 is SwitchTimes;

/** heating program 3, Saturday slot 2 */
@ext(0x0e, 0x61, 0x16)
model HCProgram3Sat2 is SwitchTimes;

/** heating program 3, Saturday slot 3 */
@ext(0xea, 0x62, 0x16)
model HCProgram3Sat3 is SwitchTimes;

/** heating program 3, Sunday slot 1 */
@ext(0xe2, 0x70, 0x16)
model HCProgram3Sun1 is SwitchTimes;

/** heating program 3, Sunday slot 2 */
@ext(0xbe, 0x71, 0x16)
model HCProgram3Sun2 is SwitchTimes;

/** heating program 3, Sunday slot 3 */
@ext(0x5a, 0x72, 0x16)
model HCProgram3Sun3 is SwitchTimes;

// hot-water program (0x17)

/** hot-water program, Monday slot 1 */
@ext(0xa7, 0x10, 0x17)
model DHWProgramMon1 is SwitchTimes;

/** hot-water program, Monday slot 2 */
@ext(0xfb, 0x11, 0x17)
model DHWProgramMon2 is SwitchTimes;

/** hot-water program, Monday slot 3 */
@ext(0x1f, 0x12, 0x17)
model DHWProgramMon3 is SwitchTimes;

/** hot-water program, Tuesday slot 1 */
@ext(0x2b, 0x20, 0x17)
model DHWProgramTue1 is SwitchTimes;

/** hot-water program, Tuesday slot 2 */
@ext(0x77, 0x21, 0x17)
model DHWProgramTue2 is SwitchTimes;

/** hot-water program, Tuesday slot 3 */
@ext(0x93, 0x22, 0x17)
model DHWProgramTue3 is SwitchTimes;

/** hot-water program, Wednesday slot 1 */
@ext(0x9b, 0x30, 0x17)
model DHWProgramWed1 is SwitchTimes;

/** hot-water program, Wednesday slot 2 */
@ext(0xc7, 0x31, 0x17)
model DHWProgramWed2 is SwitchTimes;

/** hot-water program, Wednesday slot 3 */
@ext(0x23, 0x32, 0x17)
model DHWProgramWed3 is SwitchTimes;

/** hot-water program, Thursday slot 1 */
@ext(0x6f, 0x40, 0x17)
model DHWProgramThu1 is SwitchTimes;

/** hot-water program, Thursday slot 2 */
@ext(0x33, 0x41, 0x17)
model DHWProgramThu2 is SwitchTimes;

/** hot-water program, Thursday slot 3 */
@ext(0xd7, 0x42, 0x17)
model DHWProgramThu3 is SwitchTimes;

/** hot-water program, Friday slot 1 */
@ext(0xdf, 0x50, 0x17)
model DHWProgramFri1 is SwitchTimes;

/** hot-water program, Friday slot 2 */
@ext(0x83, 0x51, 0x17)
model DHWProgramFri2 is SwitchTimes;

/** hot-water program, Friday slot 3 */
@ext(0x67, 0x52, 0x17)
model DHWProgramFri3 is SwitchTimes;

/** hot-water program, Saturday slot 1 */
@ext(0x53, 0x60, 0x17)
model DHWProgramSat1 is SwitchTimes;

/** hot-water program, Saturday slot 2 */
@ext(0x0f, 0x61, 0x17)
model DHWProgramSat2 is SwitchTimes;

/** hot-water program, Saturday slot 3 */
@ext(0xeb, 0x62, 0x17)
model DHWProgramSat3 is SwitchTimes;

/** hot-water program, Sunday slot 1 */
@ext(0xe3, 0x70, 0x17)
model DHWProgramSun1 is SwitchTimes;

/** hot-water program, Sunday slot 2 */
@ext(0xbf, 0x71, 0x17)
model DHWProgramSun2 is SwitchTimes;

/** hot-water program, Sunday slot 3 */
@ext(0x5b, 0x72, 0x17)
model DHWProgramSun3 is SwitchTimes;

// circulation program (0x1a)

/** circulation program, Monday slot 1 */
@ext(0xaa, 0x10, 0x1a)
model CircProgramMon1 is SwitchTimes;

/** circulation program, Monday slot 2 */
@ext(0xf6, 0x11, 0x1a)
model CircProgramMon2 is SwitchTimes;

/** circulation program, Monday slot 3 */
@ext(0x12, 0x12, 0x1a)
model CircProgramMon3 is SwitchTimes;

/** circulation program, Tuesday slot 1 */
@ext(0x26, 0x20, 0x1a)
model CircProgramTue1 is SwitchTimes;

/** circulation program, Tuesday slot 2 */
@ext(0x7a, 0x21, 0x1a)
model CircProgramTue2 is SwitchTimes;

/** circulation program, Tuesday slot 3 */
@ext(0x9e, 0x22, 0x1a)
model CircProgramTue3 is SwitchTimes;

/** circulation program, Wednesday slot 1 */
@ext(0x96, 0x30, 0x1a)
model CircProgramWed1 is SwitchTimes;

/** circulation program, Wednesday slot 2 */
@ext(0xca, 0x31, 0x1a)
model CircProgramWed2 is SwitchTimes;

/** circulation program, Wednesday slot 3 */
@ext(0x2e, 0x32, 0x1a)
model CircProgramWed3 is SwitchTimes;

/** circulation program, Thursday slot 1 */
@ext(0x62, 0x40, 0x1a)
model CircProgramThu1 is SwitchTimes;

/** circulation program, Thursday slot 2 */
@ext(0x3e, 0x41, 0x1a)
model CircProgramThu2 is SwitchTimes;

/** circulation program, Thursday slot 3 */
@ext(0xda, 0x42, 0x1a)
model CircProgramThu3 is SwitchTimes;

/** circulation program, Friday slot 1 */
@ext(0xd2, 0x50, 0x1a)
model CircProgramFri1 is SwitchTimes;

/** circulation program, Friday slot 2 */
@ext(0x8e, 0x51, 0x1a)
model CircProgramFri2 is SwitchTimes;

/** circulation program, Friday slot 3 */
@ext(0x6a, 0x52, 0x1a)
model CircProgramFri3 is SwitchTimes;

/** circulation program, Saturday slot 1 */
@ext(0x5e, 0x60, 0x1a)
model CircProgramSat1 is SwitchTimes;

/** circulation program, Saturday slot 2 */
@ext(0x02, 0x61, 0x1a)
model CircProgramSat2 is SwitchTimes;

/** circulation program, Saturday slot 3 */
@ext(0xe6, 0x62, 0x1a)
model CircProgramSat3 is SwitchTimes;

/** circulation program, Sunday slot 1 */
@ext(0xee, 0x70, 0x1a)
model CircProgramSun1 is SwitchTimes;

/** circulation program, Sunday slot 2 */
@ext(0xb2, 0x71, 0x1a)
model CircProgramSun2 is SwitchTimes;

/** circulation program, Sunday slot 3 */
@ext(0x56, 0x72, 0x1a)
model CircProgramSun3 is SwitchTimes;

enum _onoff {
  off: 0,
  on: 1,
}

/** off or on */
@values(_onoff)
scalar onoff16 extends UIN;

enum _legionellaDay {
  off: 0,
  Monday: 1,
  Tuesday: 2,
  Wednesday: 3,
  Thursday: 4,
  Friday: 5,
  Saturday: 6,
  Sunday: 7,
}

/** day of the week, or off */
@values(_legionellaDay)
scalar legionellaDay extends UIN;

enum _holidayLevel {
  Antifreeze: 0,
  Setback: 1,
}

/** temperature level during a holiday period */
@values(_holidayLevel)
scalar holidayLevel extends UIN;

enum _operatingPhase {
  BurnerOff: 0x00,
  StandbyCheckFan: 0x01,
  PrepurgeSpeedAchieved: 0x02,
  Prepurge: 0x03,
  IgnitionSpeedAchieved: 0x04,
  Ignition: 0x05,
  BurnerInOperation: 0x06,
  GasValveCheck: 0x07,
  PostPurge: 0x08,
  ForcedVenting: 0x09,
}

/** burner operating phase */
@values(_operatingPhase)
scalar operatingPhase extends UCH;

/**
 * Boiler burner load (PBSB 05 04): current load and the configured minimum and maximum.
 * Incoming only, decoded passively.
 */
@ext(0x05, 0x04)
model Power {
  /** current burner load */
  CurrentLoad: percent0;

  /** minimum burner load */
  MinLoad: percent0;

  /** maximum burner load */
  MaxLoad: percent0;
}

/**
 * Boiler status the WTC broadcasts (PBSB 50 0A). Incoming only: the boiler sends it on its
 * own, so ebusd decodes it passively. Field layout confirmed against a live broadcast frame
 * (see evidence).
 */
@ext(0x50, 0x0a)
model Status {
  /** status byte */
  Status1: UCH;

  OperatingPhase: operatingPhase;
  Ukn2_1: BI0;
  Ukn2_2: BI1;
  Ukn2_3: BI2;
  @values(_onoff) Flame: BI3;
  @values(_onoff) GasValve1: BI4;
  @values(_onoff) GasValve2: BI5;
  @values(_onoff) Pump: BI6;
  @values(_onoff) Error: BI7;
  @values(_onoff) ManualStartUp: BI0;
  @values(_onoff) BurnerStatus: BI1;
  Ukn3_3: BI2;
  @values(_onoff) Service: BI3;
  Ukn3_5: BI4;
  @values(_onoff) Fan: BI5;
  @values(_onoff) CircPump: BI6;
  @values(_onoff) DHWPump: BI7;

  /** burner load */
  Load: percent0;

  /** boiler flow temperature */
  SupplyTemp: temp1;

  /** flue gas temperature */
  FlueGasTemp: temp0;

  /** domestic hot water temperature */
  DHWTemp: temp1;

  /** outside temperature */
  OutsideTemp: temp2;

  /** outside temperature, weighted over time */
  OutsideWeightedTemp: temp2;

  /** boiler flow setpoint */
  SupplySetTemp: temp0;
}

/** temperature difference */
@unit("K")
scalar temp1k extends D1C;

// Signed with a fraction byte, without the range of temp2: a heating module that has no
// outside sensor answers -100.0, and ebusd rejects a whole message for one value out of range.
/** temperature */
@unit("°C")
scalar otemp2 extends D2B;

/**
 * Exchange between a room controller and its heating module (PBSB 50 14). Incoming only:
 * the room controller sends the first part, the module answers with the second; ebusd decodes
 * both passively. Field layout confirmed against a live frame (see evidence). The bits whose
 * meaning is not established are named Ukn<byte>_<bit>: bytes 1 and 2 are the two flag bytes
 * the room controller sends, byte 3 the flag byte of the answer that holds Pump and the valves.
 */
@ext(0x50, 0x14)
model HcMode {
  @out Ukn1_1: BI0;
  @out @values(_onoff) Heating: BI1;
  @out Ukn1_3: BI2;
  @out Ukn1_4: BI3;
  @out Ukn1_5: BI4;
  @out Ukn1_6: BI5;
  @out Ukn1_7: BI6;
  @out Ukn1_8: BI7;

  /** requested flow setpoint */
  @out SupplyHCSetTemp: temp2;

  /** room temperature */
  @out RoomTemp: temp2;

  @out Ukn2_1: BI0;
  @out Ukn2_2: BI1;
  @out Ukn2_3: BI2;
  @out @values(_onoff) DHW: BI3;
  @out Ukn2_5: BI4;
  @out Ukn2_6: BI5;
  @out Ukn2_7: BI6;
  @out Ukn2_8: BI7;
  @out @maxLength(1) ign: IGN;

  /** operating mode */
  @in Opmode: UCH;

  @in @values(_onoff) Pump: BI0;
  @in @values(_onoff) ValveClosing: BI1;
  @in @values(_onoff) ValveOpening: BI2;
  @in Ukn3_4: BI3;
  @in Ukn3_5: BI4;
  @in Ukn3_6: BI5;
  @in Ukn3_7: BI6;

  /** actual flow temperature */
  @in SupplyHCTemp: temp2;

  /** outside temperature, -100.0 when the module has no outside sensor */
  @in OutsideTemp: otemp2;

  /** boiler boost offset */
  @in BoilerMCBoostTemp: temp1k;

  /** maximum flow temperature */
  @in SupplyHCMaxTemp: temp1;

  /** minimum flow temperature */
  @in SupplyHCMinTemp: temp1;
}
