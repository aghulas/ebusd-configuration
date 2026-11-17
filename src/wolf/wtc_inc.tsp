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

enum _onoff {
  off: 0,
  on: 1,
}

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
 * both passively. Field layout confirmed against a live frame (see evidence).
 */
@ext(0x50, 0x14)
model HcMode {
  @out Ink1_1: BI0;
  @out @values(_onoff) Heating: BI1;
  @out Ink1_3: BI2;
  @out Ink1_4: BI3;
  @out Ink1_5: BI4;
  @out Ink1_6: BI5;
  @out Ink1_7: BI6;
  @out Ink1_8: BI7;

  /** requested flow setpoint */
  @out SupplyHCSetTemp: temp2;

  /** room temperature */
  @out RoomTemp: temp2;

  @out Ink2_1: BI0;
  @out Ink2_2: BI1;
  @out Ink2_3: BI2;
  @out @values(_onoff) DHW: BI3;
  @out Ink2_5: BI4;
  @out Ink2_6: BI5;
  @out Ink2_7: BI6;
  @out Ink2_8: BI7;
  @out @maxLength(1) ign: IGN;

  /** operating mode */
  @in Opmode: UCH;

  @in @values(_onoff) Pump: BI0;
  @in @values(_onoff) ValveClosing: BI1;
  @in @values(_onoff) ValveOpening: BI2;
  @in Opmode_4: BI3;
  @in Opmode_5: BI4;
  @in Opmode_6: BI5;
  @in Opmode_7: BI6;

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
