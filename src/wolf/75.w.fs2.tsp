import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

@zz(0x75) // room unit of heating circuit #2 (FS)
namespace fs2 {
  // Heat demand, passive: sent by this room unit (QQ 0x70, its master address) to the cascade
  // manager (ZZ 0xf1), whose slave address has no file of its own.

  /** heat demand of the room unit to the cascade manager */
  @passive
  @qq(0x70)
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

  /** software version, major part */
  model VersionMajor is Wolf.UnitVersionMajor;

  /** software version, minor part */
  model VersionMinor is Wolf.UnitVersionMinor;

  // Hot-water settings as the room unit stores them, read only; the system manager prepares
  // the hot water on this installation, its values are the ones in use.

  /** priority of the hot water loading over the heating circuit */
  model DHWLoadingPriority is Wolf.UnitDHWLoadingPriority;

  /** reduced hot-water setpoint */
  model DHWSetbackTemp is Wolf.UnitDHWSetbackTemp;

  /** maximum hot-water temperature */
  model DHWMaxTemp is Wolf.UnitDHWMaxTemp;

  /** day of the legionella protection */
  model DHWLegionellaDay is Wolf.UnitDHWLegionellaDay;

  /** running time of the circulation pump during the legionella protection */
  model LegionellaCirculationTime is Wolf.UnitLegionellaCirculationTime;

  /** hot water setpoint of the legionella protection */
  model LegionellaSetpoint is Wolf.UnitLegionellaSetpoint;

  /** day of the start of summer time */
  model SummerTimeStartDay is Wolf.UnitSummerTimeStartDay;

  /** month of the start of summer time */
  model SummerTimeStartMonth is Wolf.UnitSummerTimeStartMonth;

  /** day of the end of summer time */
  model SummerTimeEndDay is Wolf.UnitSummerTimeEndDay;

  /** month of the end of summer time */
  model SummerTimeEndMonth is Wolf.UnitSummerTimeEndMonth;

  // Fault log, read side: the entry selector is written by the vendor tool's History tab.

  /** selected fault-log entry (0 = most recent) */
  model ErrorId is Wolf.UnitErrorId;

  /** fault code of the selected entry */
  model ErrorCode is Wolf.UnitErrorCode;

  /** fault type of the selected entry */
  model ErrorType is Wolf.UnitErrorType;

  /** device that raised the selected entry */
  model ErrorDevice is Wolf.UnitErrorDevice;

  /** fault minute */
  model ErrorMinute is Wolf.UnitErrorMinute;

  /** fault hour */
  model ErrorHour is Wolf.UnitErrorHour;

  /** fault day of the month */
  model ErrorDay is Wolf.UnitErrorDay;

  /** fault month */
  model ErrorMonth is Wolf.UnitErrorMonth;

  /** fault year */
  model ErrorYear is Wolf.UnitErrorYear;

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

  // Read only here: on the test installation this address answers the setback and the frost
  // protection setpoints from the store of the room unit at 35 (one room unit addressed for
  // circuits 1 and 2): a write to 35 was read here within 3 s with no telegram in between.
  // Written through 35.w.fs1.

  /** setback room temperature setpoint, read only: seen to be the setpoint of room unit 1, written through 35.w.fs1 */
  @ext(0x58, 0x08, 0x00)
  model RoomSetbackTemp is CrcRead<temp10>;

  /** room temperature setpoint of the frost protection, read only: seen to be the setpoint of room unit 1, written through 35.w.fs1 */
  @ext(0x96, 0x14, 0x0a)
  @inherit(crcr)
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

  // Weekly heating programs, read side only: three switch-time slots per weekday.

  // Heating program 1. On the test installation this address answers it from the store of the
  // room unit at 35: a slot written there was read here within 3 s, both ways, with nothing on
  // the bus between, and a slot written here was acknowledged and not kept. Written through
  // 35.w.fs1.

  /** heating program 1, Monday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Mon1 is Wolf.HCProgram1Mon1;

  /** heating program 1, Monday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Mon2 is Wolf.HCProgram1Mon2;

  /** heating program 1, Monday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Mon3 is Wolf.HCProgram1Mon3;

  /** heating program 1, Tuesday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Tue1 is Wolf.HCProgram1Tue1;

  /** heating program 1, Tuesday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Tue2 is Wolf.HCProgram1Tue2;

  /** heating program 1, Tuesday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Tue3 is Wolf.HCProgram1Tue3;

  /** heating program 1, Wednesday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Wed1 is Wolf.HCProgram1Wed1;

  /** heating program 1, Wednesday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Wed2 is Wolf.HCProgram1Wed2;

  /** heating program 1, Wednesday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Wed3 is Wolf.HCProgram1Wed3;

  /** heating program 1, Thursday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Thu1 is Wolf.HCProgram1Thu1;

  /** heating program 1, Thursday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Thu2 is Wolf.HCProgram1Thu2;

  /** heating program 1, Thursday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Thu3 is Wolf.HCProgram1Thu3;

  /** heating program 1, Friday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Fri1 is Wolf.HCProgram1Fri1;

  /** heating program 1, Friday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Fri2 is Wolf.HCProgram1Fri2;

  /** heating program 1, Friday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Fri3 is Wolf.HCProgram1Fri3;

  /** heating program 1, Saturday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sat1 is Wolf.HCProgram1Sat1;

  /** heating program 1, Saturday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sat2 is Wolf.HCProgram1Sat2;

  /** heating program 1, Saturday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sat3 is Wolf.HCProgram1Sat3;

  /** heating program 1, Sunday slot 1, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sun1 is Wolf.HCProgram1Sun1;

  /** heating program 1, Sunday slot 2, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sun2 is Wolf.HCProgram1Sun2;

  /** heating program 1, Sunday slot 3, read only: seen to be the slot of room unit 1, written through 35.w.fs1 */
  model HCProgram1Sun3 is Wolf.HCProgram1Sun3;

  // Heating program 2

  /** heating program 2, Monday slot 1 */
  model HCProgram2Mon1 is Wolf.HCProgram2Mon1;

  /** heating program 2, Monday slot 2 */
  model HCProgram2Mon2 is Wolf.HCProgram2Mon2;

  /** heating program 2, Monday slot 3 */
  model HCProgram2Mon3 is Wolf.HCProgram2Mon3;

  /** heating program 2, Tuesday slot 1 */
  model HCProgram2Tue1 is Wolf.HCProgram2Tue1;

  /** heating program 2, Tuesday slot 2 */
  model HCProgram2Tue2 is Wolf.HCProgram2Tue2;

  /** heating program 2, Tuesday slot 3 */
  model HCProgram2Tue3 is Wolf.HCProgram2Tue3;

  /** heating program 2, Wednesday slot 1 */
  model HCProgram2Wed1 is Wolf.HCProgram2Wed1;

  /** heating program 2, Wednesday slot 2 */
  model HCProgram2Wed2 is Wolf.HCProgram2Wed2;

  /** heating program 2, Wednesday slot 3 */
  model HCProgram2Wed3 is Wolf.HCProgram2Wed3;

  /** heating program 2, Thursday slot 1 */
  model HCProgram2Thu1 is Wolf.HCProgram2Thu1;

  /** heating program 2, Thursday slot 2 */
  model HCProgram2Thu2 is Wolf.HCProgram2Thu2;

  /** heating program 2, Thursday slot 3 */
  model HCProgram2Thu3 is Wolf.HCProgram2Thu3;

  /** heating program 2, Friday slot 1 */
  model HCProgram2Fri1 is Wolf.HCProgram2Fri1;

  /** heating program 2, Friday slot 2 */
  model HCProgram2Fri2 is Wolf.HCProgram2Fri2;

  /** heating program 2, Friday slot 3 */
  model HCProgram2Fri3 is Wolf.HCProgram2Fri3;

  /** heating program 2, Saturday slot 1 */
  model HCProgram2Sat1 is Wolf.HCProgram2Sat1;

  /** heating program 2, Saturday slot 2 */
  model HCProgram2Sat2 is Wolf.HCProgram2Sat2;

  /** heating program 2, Saturday slot 3 */
  model HCProgram2Sat3 is Wolf.HCProgram2Sat3;

  /** heating program 2, Sunday slot 1 */
  model HCProgram2Sun1 is Wolf.HCProgram2Sun1;

  /** heating program 2, Sunday slot 2 */
  model HCProgram2Sun2 is Wolf.HCProgram2Sun2;

  /** heating program 2, Sunday slot 3 */
  model HCProgram2Sun3 is Wolf.HCProgram2Sun3;

  // Heating program 3

  /** heating program 3, Monday slot 1 */
  model HCProgram3Mon1 is Wolf.HCProgram3Mon1;

  /** heating program 3, Monday slot 2 */
  model HCProgram3Mon2 is Wolf.HCProgram3Mon2;

  /** heating program 3, Monday slot 3 */
  model HCProgram3Mon3 is Wolf.HCProgram3Mon3;

  /** heating program 3, Tuesday slot 1 */
  model HCProgram3Tue1 is Wolf.HCProgram3Tue1;

  /** heating program 3, Tuesday slot 2 */
  model HCProgram3Tue2 is Wolf.HCProgram3Tue2;

  /** heating program 3, Tuesday slot 3 */
  model HCProgram3Tue3 is Wolf.HCProgram3Tue3;

  /** heating program 3, Wednesday slot 1 */
  model HCProgram3Wed1 is Wolf.HCProgram3Wed1;

  /** heating program 3, Wednesday slot 2 */
  model HCProgram3Wed2 is Wolf.HCProgram3Wed2;

  /** heating program 3, Wednesday slot 3 */
  model HCProgram3Wed3 is Wolf.HCProgram3Wed3;

  /** heating program 3, Thursday slot 1 */
  model HCProgram3Thu1 is Wolf.HCProgram3Thu1;

  /** heating program 3, Thursday slot 2 */
  model HCProgram3Thu2 is Wolf.HCProgram3Thu2;

  /** heating program 3, Thursday slot 3 */
  model HCProgram3Thu3 is Wolf.HCProgram3Thu3;

  /** heating program 3, Friday slot 1 */
  model HCProgram3Fri1 is Wolf.HCProgram3Fri1;

  /** heating program 3, Friday slot 2 */
  model HCProgram3Fri2 is Wolf.HCProgram3Fri2;

  /** heating program 3, Friday slot 3 */
  model HCProgram3Fri3 is Wolf.HCProgram3Fri3;

  /** heating program 3, Saturday slot 1 */
  model HCProgram3Sat1 is Wolf.HCProgram3Sat1;

  /** heating program 3, Saturday slot 2 */
  model HCProgram3Sat2 is Wolf.HCProgram3Sat2;

  /** heating program 3, Saturday slot 3 */
  model HCProgram3Sat3 is Wolf.HCProgram3Sat3;

  /** heating program 3, Sunday slot 1 */
  model HCProgram3Sun1 is Wolf.HCProgram3Sun1;

  /** heating program 3, Sunday slot 2 */
  model HCProgram3Sun2 is Wolf.HCProgram3Sun2;

  /** heating program 3, Sunday slot 3 */
  model HCProgram3Sun3 is Wolf.HCProgram3Sun3;

  // Weekly hot-water and circulation programs as stored by the room unit, read side only.

  // Hot-water program, as stored in the room unit. Where a system manager prepares the hot
  // water, the program of the manager is the one applied (see 50.w.em1), not this one.

  /** hot-water program stored in the room unit, Monday slot 1 */
  model DHWProgramMon1 is Wolf.DHWProgramMon1;

  /** hot-water program stored in the room unit, Monday slot 2 */
  model DHWProgramMon2 is Wolf.DHWProgramMon2;

  /** hot-water program stored in the room unit, Monday slot 3 */
  model DHWProgramMon3 is Wolf.DHWProgramMon3;

  /** hot-water program stored in the room unit, Tuesday slot 1 */
  model DHWProgramTue1 is Wolf.DHWProgramTue1;

  /** hot-water program stored in the room unit, Tuesday slot 2 */
  model DHWProgramTue2 is Wolf.DHWProgramTue2;

  /** hot-water program stored in the room unit, Tuesday slot 3 */
  model DHWProgramTue3 is Wolf.DHWProgramTue3;

  /** hot-water program stored in the room unit, Wednesday slot 1 */
  model DHWProgramWed1 is Wolf.DHWProgramWed1;

  /** hot-water program stored in the room unit, Wednesday slot 2 */
  model DHWProgramWed2 is Wolf.DHWProgramWed2;

  /** hot-water program stored in the room unit, Wednesday slot 3 */
  model DHWProgramWed3 is Wolf.DHWProgramWed3;

  /** hot-water program stored in the room unit, Thursday slot 1 */
  model DHWProgramThu1 is Wolf.DHWProgramThu1;

  /** hot-water program stored in the room unit, Thursday slot 2 */
  model DHWProgramThu2 is Wolf.DHWProgramThu2;

  /** hot-water program stored in the room unit, Thursday slot 3 */
  model DHWProgramThu3 is Wolf.DHWProgramThu3;

  /** hot-water program stored in the room unit, Friday slot 1 */
  model DHWProgramFri1 is Wolf.DHWProgramFri1;

  /** hot-water program stored in the room unit, Friday slot 2 */
  model DHWProgramFri2 is Wolf.DHWProgramFri2;

  /** hot-water program stored in the room unit, Friday slot 3 */
  model DHWProgramFri3 is Wolf.DHWProgramFri3;

  /** hot-water program stored in the room unit, Saturday slot 1 */
  model DHWProgramSat1 is Wolf.DHWProgramSat1;

  /** hot-water program stored in the room unit, Saturday slot 2 */
  model DHWProgramSat2 is Wolf.DHWProgramSat2;

  /** hot-water program stored in the room unit, Saturday slot 3 */
  model DHWProgramSat3 is Wolf.DHWProgramSat3;

  /** hot-water program stored in the room unit, Sunday slot 1 */
  model DHWProgramSun1 is Wolf.DHWProgramSun1;

  /** hot-water program stored in the room unit, Sunday slot 2 */
  model DHWProgramSun2 is Wolf.DHWProgramSun2;

  /** hot-water program stored in the room unit, Sunday slot 3 */
  model DHWProgramSun3 is Wolf.DHWProgramSun3;

  // Circulation program, as stored in the room unit; see the note on the hot-water program.

  /** circulation program stored in the room unit, Monday slot 1 */
  model CircProgramMon1 is Wolf.CircProgramMon1;

  /** circulation program stored in the room unit, Monday slot 2 */
  model CircProgramMon2 is Wolf.CircProgramMon2;

  /** circulation program stored in the room unit, Monday slot 3 */
  model CircProgramMon3 is Wolf.CircProgramMon3;

  /** circulation program stored in the room unit, Tuesday slot 1 */
  model CircProgramTue1 is Wolf.CircProgramTue1;

  /** circulation program stored in the room unit, Tuesday slot 2 */
  model CircProgramTue2 is Wolf.CircProgramTue2;

  /** circulation program stored in the room unit, Tuesday slot 3 */
  model CircProgramTue3 is Wolf.CircProgramTue3;

  /** circulation program stored in the room unit, Wednesday slot 1 */
  model CircProgramWed1 is Wolf.CircProgramWed1;

  /** circulation program stored in the room unit, Wednesday slot 2 */
  model CircProgramWed2 is Wolf.CircProgramWed2;

  /** circulation program stored in the room unit, Wednesday slot 3 */
  model CircProgramWed3 is Wolf.CircProgramWed3;

  /** circulation program stored in the room unit, Thursday slot 1 */
  model CircProgramThu1 is Wolf.CircProgramThu1;

  /** circulation program stored in the room unit, Thursday slot 2 */
  model CircProgramThu2 is Wolf.CircProgramThu2;

  /** circulation program stored in the room unit, Thursday slot 3 */
  model CircProgramThu3 is Wolf.CircProgramThu3;

  /** circulation program stored in the room unit, Friday slot 1 */
  model CircProgramFri1 is Wolf.CircProgramFri1;

  /** circulation program stored in the room unit, Friday slot 2 */
  model CircProgramFri2 is Wolf.CircProgramFri2;

  /** circulation program stored in the room unit, Friday slot 3 */
  model CircProgramFri3 is Wolf.CircProgramFri3;

  /** circulation program stored in the room unit, Saturday slot 1 */
  model CircProgramSat1 is Wolf.CircProgramSat1;

  /** circulation program stored in the room unit, Saturday slot 2 */
  model CircProgramSat2 is Wolf.CircProgramSat2;

  /** circulation program stored in the room unit, Saturday slot 3 */
  model CircProgramSat3 is Wolf.CircProgramSat3;

  /** circulation program stored in the room unit, Sunday slot 1 */
  model CircProgramSun1 is Wolf.CircProgramSun1;

  /** circulation program stored in the room unit, Sunday slot 2 */
  model CircProgramSun2 is Wolf.CircProgramSun2;

  /** circulation program stored in the room unit, Sunday slot 3 */
  model CircProgramSun3 is Wolf.CircProgramSun3;
}
