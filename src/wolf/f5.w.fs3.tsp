import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

@zz(0xf5) // room unit of heating circuit #3 (FS)
namespace fs3 {
  // Heat demand, passive: sent by this room unit (QQ 0xf0, its master address) to the cascade
  // manager (ZZ 0xf1), whose slave address has no file of its own.

  /** heat demand of the room unit to the cascade manager */
  @passive
  @qq(0xf0)
  @zz(0xf1)
  model PowerDemand is Wolf.PowerDemand;

  // Values of the heating circuit, read side only.

  /** flow temperature the heating circuit requests from the heat source */
  model HeatDemandTemp is Wolf.HeatDemandTemp;

  /** flow setpoint of the heating circuit */
  model SupplyHCSetTemp is Wolf.SupplyHCSetTemp;

  /** outside temperature */
  model OutsideTemp is Wolf.OutsideTemp;

  /** outside temperature, weighted over time */
  model OutsideWeightedTemp is Wolf.OutsideWeightedTemp;

  /** room temperature */
  model RoomTemp is Wolf.RoomTemp;

  /** room setpoint in effect */
  model RoomSetpointTemp is Wolf.RoomSetpointTemp;

  /** outside temperature, mixed */
  model OutsideMixedTemp is Wolf.OutsideMixedTemp;

  /** heating circuit type, read only */
  model HeatingCircuitType is Wolf.HeatingCircuitType;

  // Settings, read and written. The room unit acknowledges a write from any master but takes
  // the value only from source address 0xff (`write -s ff`).

  /** normal room temperature setpoint */
  @wcrc(0x05, 0x00)
  @inherit(crcr, crcw)
  model RoomNormalTemp {
    @minValue(16)
    @maxValue(35)
    @step(0.5)
    value: temp10;
  }

  /** setback room temperature setpoint */
  @wcrc(0x08, 0x00)
  @inherit(crcr, crcw)
  model RoomSetbackTemp {
    // 10.0 to 21.5: no range here, a bound of an integer type cannot be fractional
    value: temp10;
  }

  /** room temperature setpoint of the frost protection */
  @wcrc(0x14, 0x0a)
  @inherit(crcr, crcw)
  model RoomFrostProtectionTemp {
    @minValue(4)
    @maxValue(16)
    @step(0.5)
    value: temp10;
  }

  /** steepness of the heating curve */
  @wcrc(0x0e, 0x01)
  @inherit(crcr, crcw)
  model GradientCurve {
    // 2.5 to 40.0: no range here, for the same reason
    @divisor(10)
    value: UIN;
  }

  /** outside temperature of the summer / winter changeover */
  @wcrc(0x16, 0x01)
  @inherit(crcr, crcw)
  model SummerWinterChangeOverTemp {
    @minValue(8)
    @maxValue(30)
    @step(0.5)
    value: temp10;
  }

  /** maximum flow temperature */
  @wcrc(0x28, 0x00)
  @inherit(crcr, crcw)
  model SupplyMaxTemp {
    @minValue(8)
    @maxValue(82)
    @step(0.5)
    value: temp10;
  }

  /** minimum flow temperature */
  @wcrc(0x2b, 0x01)
  @inherit(crcr, crcw)
  model SupplyMinTemp {
    @minValue(8)
    @maxValue(82)
    @step(0.5)
    value: temp10;
  }

  /** configured hot water setpoint */
  @wcrc(0x13, 0x00)
  @inherit(crcr, crcw)
  model DHWSetpoint {
    @minValue(40)
    @maxValue(60)
    @step(0.5)
    value: temp10;
  }

  /** boiler boost offset: added to the flow setpoint for the demand to the heat source */
  @wcrc(0x11, 0x01)
  @inherit(crcr, crcw)
  model BoilerMCBoostTemp {
    @minValue(0)
    @maxValue(20)
    @step(0.5)
    value: diff10;
  }

  /** temperature level during a holiday period */
  @wcrc(0x3d, 0x01)
  @inherit(crcr, crcw)
  model HolidayTempLevel {
    value: holidayLevel;
  }

  // Control variation, vendor parameter 315 / 316 of the room unit. 1 is the value in service,
  // the factory setting "outside temperature". 0 was written and read back on 2026-11-19: the
  // modules then broadcast the constant flow setpoint of the circuit type (60 and 75 °C), as
  // the manual describes "constant flow". The manual also lists "room" and "outside and room";
  // which of 2 and 3 is which is not established, so the field stays a number.

  /** control variation of the heating circuit (parameter 315): 0 constant flow temperature, 1 outside temperature */
  @wcrc(0x41, 0x01)
  @inherit(crcr, crcw)
  model ControlVariation {
    value: UIN;
  }

  // Holiday period: start and end date, three registers each, read and written from 0xff. Day
  // and month are the calendar values. The third register of each date took 0 and 24 and read
  // them back; what it holds is not established (the operator's log reports it set back to 0
  // when the start written is the day of the write).

  /** day of the month on which the holiday period starts */
  @wcrc(0x1b, 0x01)
  @inherit(crcr, crcw)
  model HolidayStartDay {
    @minValue(1)
    @maxValue(31)
    value: UIN;
  }

  /** month in which the holiday period starts */
  @wcrc(0x1c, 0x01)
  @inherit(crcr, crcw)
  model HolidayStartMonth {
    @minValue(1)
    @maxValue(12)
    value: UIN;
  }

  /** third register of the start date of the holiday period, meaning not established */
  @wcrc(0x1d, 0x01)
  @inherit(crcr, crcw)
  model HolidayStartThird {
    value: UIN;
  }

  /** day of the month on which the holiday period ends */
  @wcrc(0x1e, 0x01)
  @inherit(crcr, crcw)
  model HolidayEndDay {
    @minValue(1)
    @maxValue(31)
    value: UIN;
  }

  /** month in which the holiday period ends */
  @wcrc(0x1f, 0x01)
  @inherit(crcr, crcw)
  model HolidayEndMonth {
    @minValue(1)
    @maxValue(12)
    value: UIN;
  }

  /** third register of the end date of the holiday period, meaning not established */
  @wcrc(0x20, 0x01)
  @inherit(crcr, crcw)
  model HolidayEndThird {
    value: UIN;
  }

  /** lead time of the optimised switch-on */
  @wcrc(0x10, 0x01)
  @inherit(crcr, crcw)
  model SwitchOnRuntime {
    @minValue(0)
    @maxValue(10)
    value: minutes;
  }

  /** outside temperature below which the frost protection starts */
  @wcrc(0xbe, 0x02)
  @inherit(crcr, crcw)
  model FrostProtectionLimitTemp {
    @minValue(-20)
    @maxValue(0)
    @step(0.5)
    value: otemp10;
  }

  // Weekly heating programs: three switch-time slots per weekday, read and written (the room
  // unit takes a slot from the address of ebusd).

  // Heating program 1

  /** heating program 1, Monday slot 1 */
  @wcrc(0x10, 0x14)
  model HCProgram1Mon1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Monday slot 2 */
  @wcrc(0x11, 0x14)
  model HCProgram1Mon2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Monday slot 3 */
  @wcrc(0x12, 0x14)
  model HCProgram1Mon3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Tuesday slot 1 */
  @wcrc(0x20, 0x14)
  model HCProgram1Tue1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Tuesday slot 2 */
  @wcrc(0x21, 0x14)
  model HCProgram1Tue2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Tuesday slot 3 */
  @wcrc(0x22, 0x14)
  model HCProgram1Tue3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Wednesday slot 1 */
  @wcrc(0x30, 0x14)
  model HCProgram1Wed1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Wednesday slot 2 */
  @wcrc(0x31, 0x14)
  model HCProgram1Wed2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Wednesday slot 3 */
  @wcrc(0x32, 0x14)
  model HCProgram1Wed3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Thursday slot 1 */
  @wcrc(0x40, 0x14)
  model HCProgram1Thu1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Thursday slot 2 */
  @wcrc(0x41, 0x14)
  model HCProgram1Thu2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Thursday slot 3 */
  @wcrc(0x42, 0x14)
  model HCProgram1Thu3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Friday slot 1 */
  @wcrc(0x50, 0x14)
  model HCProgram1Fri1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Friday slot 2 */
  @wcrc(0x51, 0x14)
  model HCProgram1Fri2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Friday slot 3 */
  @wcrc(0x52, 0x14)
  model HCProgram1Fri3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Saturday slot 1 */
  @wcrc(0x60, 0x14)
  model HCProgram1Sat1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Saturday slot 2 */
  @wcrc(0x61, 0x14)
  model HCProgram1Sat2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Saturday slot 3 */
  @wcrc(0x62, 0x14)
  model HCProgram1Sat3 is Wolf.SwitchTimesSetting;

  /** heating program 1, Sunday slot 1 */
  @wcrc(0x70, 0x14)
  model HCProgram1Sun1 is Wolf.SwitchTimesSetting;

  /** heating program 1, Sunday slot 2 */
  @wcrc(0x71, 0x14)
  model HCProgram1Sun2 is Wolf.SwitchTimesSetting;

  /** heating program 1, Sunday slot 3 */
  @wcrc(0x72, 0x14)
  model HCProgram1Sun3 is Wolf.SwitchTimesSetting;

  // Heating program 2

  /** heating program 2, Monday slot 1 */
  @wcrc(0x10, 0x15)
  model HCProgram2Mon1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Monday slot 2 */
  @wcrc(0x11, 0x15)
  model HCProgram2Mon2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Monday slot 3 */
  @wcrc(0x12, 0x15)
  model HCProgram2Mon3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Tuesday slot 1 */
  @wcrc(0x20, 0x15)
  model HCProgram2Tue1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Tuesday slot 2 */
  @wcrc(0x21, 0x15)
  model HCProgram2Tue2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Tuesday slot 3 */
  @wcrc(0x22, 0x15)
  model HCProgram2Tue3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Wednesday slot 1 */
  @wcrc(0x30, 0x15)
  model HCProgram2Wed1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Wednesday slot 2 */
  @wcrc(0x31, 0x15)
  model HCProgram2Wed2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Wednesday slot 3 */
  @wcrc(0x32, 0x15)
  model HCProgram2Wed3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Thursday slot 1 */
  @wcrc(0x40, 0x15)
  model HCProgram2Thu1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Thursday slot 2 */
  @wcrc(0x41, 0x15)
  model HCProgram2Thu2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Thursday slot 3 */
  @wcrc(0x42, 0x15)
  model HCProgram2Thu3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Friday slot 1 */
  @wcrc(0x50, 0x15)
  model HCProgram2Fri1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Friday slot 2 */
  @wcrc(0x51, 0x15)
  model HCProgram2Fri2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Friday slot 3 */
  @wcrc(0x52, 0x15)
  model HCProgram2Fri3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Saturday slot 1 */
  @wcrc(0x60, 0x15)
  model HCProgram2Sat1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Saturday slot 2 */
  @wcrc(0x61, 0x15)
  model HCProgram2Sat2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Saturday slot 3 */
  @wcrc(0x62, 0x15)
  model HCProgram2Sat3 is Wolf.SwitchTimesSetting;

  /** heating program 2, Sunday slot 1 */
  @wcrc(0x70, 0x15)
  model HCProgram2Sun1 is Wolf.SwitchTimesSetting;

  /** heating program 2, Sunday slot 2 */
  @wcrc(0x71, 0x15)
  model HCProgram2Sun2 is Wolf.SwitchTimesSetting;

  /** heating program 2, Sunday slot 3 */
  @wcrc(0x72, 0x15)
  model HCProgram2Sun3 is Wolf.SwitchTimesSetting;

  // Heating program 3

  /** heating program 3, Monday slot 1 */
  @wcrc(0x10, 0x16)
  model HCProgram3Mon1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Monday slot 2 */
  @wcrc(0x11, 0x16)
  model HCProgram3Mon2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Monday slot 3 */
  @wcrc(0x12, 0x16)
  model HCProgram3Mon3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Tuesday slot 1 */
  @wcrc(0x20, 0x16)
  model HCProgram3Tue1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Tuesday slot 2 */
  @wcrc(0x21, 0x16)
  model HCProgram3Tue2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Tuesday slot 3 */
  @wcrc(0x22, 0x16)
  model HCProgram3Tue3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Wednesday slot 1 */
  @wcrc(0x30, 0x16)
  model HCProgram3Wed1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Wednesday slot 2 */
  @wcrc(0x31, 0x16)
  model HCProgram3Wed2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Wednesday slot 3 */
  @wcrc(0x32, 0x16)
  model HCProgram3Wed3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Thursday slot 1 */
  @wcrc(0x40, 0x16)
  model HCProgram3Thu1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Thursday slot 2 */
  @wcrc(0x41, 0x16)
  model HCProgram3Thu2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Thursday slot 3 */
  @wcrc(0x42, 0x16)
  model HCProgram3Thu3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Friday slot 1 */
  @wcrc(0x50, 0x16)
  model HCProgram3Fri1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Friday slot 2 */
  @wcrc(0x51, 0x16)
  model HCProgram3Fri2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Friday slot 3 */
  @wcrc(0x52, 0x16)
  model HCProgram3Fri3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Saturday slot 1 */
  @wcrc(0x60, 0x16)
  model HCProgram3Sat1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Saturday slot 2 */
  @wcrc(0x61, 0x16)
  model HCProgram3Sat2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Saturday slot 3 */
  @wcrc(0x62, 0x16)
  model HCProgram3Sat3 is Wolf.SwitchTimesSetting;

  /** heating program 3, Sunday slot 1 */
  @wcrc(0x70, 0x16)
  model HCProgram3Sun1 is Wolf.SwitchTimesSetting;

  /** heating program 3, Sunday slot 2 */
  @wcrc(0x71, 0x16)
  model HCProgram3Sun2 is Wolf.SwitchTimesSetting;

  /** heating program 3, Sunday slot 3 */
  @wcrc(0x72, 0x16)
  model HCProgram3Sun3 is Wolf.SwitchTimesSetting;

  // Weekly hot-water and circulation programs as stored by the room unit, read and written.

  // Hot-water program, as stored in the room unit. Where a system manager prepares the hot
  // water, the program of the manager is the one applied (see 50.w.em1), not this one.

  /** hot-water program stored in the room unit, Monday slot 1 */
  @wcrc(0x10, 0x17)
  model DHWProgramMon1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Monday slot 2 */
  @wcrc(0x11, 0x17)
  model DHWProgramMon2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Monday slot 3 */
  @wcrc(0x12, 0x17)
  model DHWProgramMon3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Tuesday slot 1 */
  @wcrc(0x20, 0x17)
  model DHWProgramTue1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Tuesday slot 2 */
  @wcrc(0x21, 0x17)
  model DHWProgramTue2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Tuesday slot 3 */
  @wcrc(0x22, 0x17)
  model DHWProgramTue3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Wednesday slot 1 */
  @wcrc(0x30, 0x17)
  model DHWProgramWed1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Wednesday slot 2 */
  @wcrc(0x31, 0x17)
  model DHWProgramWed2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Wednesday slot 3 */
  @wcrc(0x32, 0x17)
  model DHWProgramWed3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Thursday slot 1 */
  @wcrc(0x40, 0x17)
  model DHWProgramThu1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Thursday slot 2 */
  @wcrc(0x41, 0x17)
  model DHWProgramThu2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Thursday slot 3 */
  @wcrc(0x42, 0x17)
  model DHWProgramThu3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Friday slot 1 */
  @wcrc(0x50, 0x17)
  model DHWProgramFri1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Friday slot 2 */
  @wcrc(0x51, 0x17)
  model DHWProgramFri2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Friday slot 3 */
  @wcrc(0x52, 0x17)
  model DHWProgramFri3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Saturday slot 1 */
  @wcrc(0x60, 0x17)
  model DHWProgramSat1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Saturday slot 2 */
  @wcrc(0x61, 0x17)
  model DHWProgramSat2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Saturday slot 3 */
  @wcrc(0x62, 0x17)
  model DHWProgramSat3 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Sunday slot 1 */
  @wcrc(0x70, 0x17)
  model DHWProgramSun1 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Sunday slot 2 */
  @wcrc(0x71, 0x17)
  model DHWProgramSun2 is Wolf.SwitchTimesSetting;

  /** hot-water program stored in the room unit, Sunday slot 3 */
  @wcrc(0x72, 0x17)
  model DHWProgramSun3 is Wolf.SwitchTimesSetting;

  // Circulation program, as stored in the room unit; see the note on the hot-water program.

  /** circulation program stored in the room unit, Monday slot 1 */
  @wcrc(0x10, 0x1a)
  model CircProgramMon1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Monday slot 2 */
  @wcrc(0x11, 0x1a)
  model CircProgramMon2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Monday slot 3 */
  @wcrc(0x12, 0x1a)
  model CircProgramMon3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Tuesday slot 1 */
  @wcrc(0x20, 0x1a)
  model CircProgramTue1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Tuesday slot 2 */
  @wcrc(0x21, 0x1a)
  model CircProgramTue2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Tuesday slot 3 */
  @wcrc(0x22, 0x1a)
  model CircProgramTue3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Wednesday slot 1 */
  @wcrc(0x30, 0x1a)
  model CircProgramWed1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Wednesday slot 2 */
  @wcrc(0x31, 0x1a)
  model CircProgramWed2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Wednesday slot 3 */
  @wcrc(0x32, 0x1a)
  model CircProgramWed3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Thursday slot 1 */
  @wcrc(0x40, 0x1a)
  model CircProgramThu1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Thursday slot 2 */
  @wcrc(0x41, 0x1a)
  model CircProgramThu2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Thursday slot 3 */
  @wcrc(0x42, 0x1a)
  model CircProgramThu3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Friday slot 1 */
  @wcrc(0x50, 0x1a)
  model CircProgramFri1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Friday slot 2 */
  @wcrc(0x51, 0x1a)
  model CircProgramFri2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Friday slot 3 */
  @wcrc(0x52, 0x1a)
  model CircProgramFri3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Saturday slot 1 */
  @wcrc(0x60, 0x1a)
  model CircProgramSat1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Saturday slot 2 */
  @wcrc(0x61, 0x1a)
  model CircProgramSat2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Saturday slot 3 */
  @wcrc(0x62, 0x1a)
  model CircProgramSat3 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Sunday slot 1 */
  @wcrc(0x70, 0x1a)
  model CircProgramSun1 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Sunday slot 2 */
  @wcrc(0x71, 0x1a)
  model CircProgramSun2 is Wolf.SwitchTimesSetting;

  /** circulation program stored in the room unit, Sunday slot 3 */
  @wcrc(0x72, 0x1a)
  model CircProgramSun3 is Wolf.SwitchTimesSetting;
}
