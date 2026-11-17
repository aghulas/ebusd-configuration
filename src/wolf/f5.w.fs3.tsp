import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

@zz(0xf5) // room unit of heating circuit #3 (FS)
namespace fs3 {
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

  // Control variation: 1 is the value in service. 0 was written and read back on 2026-11-19;
  // while it was set, the heating modules of the first two circuits raised the flow setpoint
  // they broadcast, the second to its maximum flow temperature. No other value was tried and
  // no list of names is established.

  /** control variation of the heating circuit, a number */
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

  // Heating program 1

  /** heating program 1, Monday slot 1 */
  model HCProgram1Mon1 is Wolf.HCProgram1Mon1;

  /** heating program 1, Monday slot 2 */
  model HCProgram1Mon2 is Wolf.HCProgram1Mon2;

  /** heating program 1, Monday slot 3 */
  model HCProgram1Mon3 is Wolf.HCProgram1Mon3;

  /** heating program 1, Tuesday slot 1 */
  model HCProgram1Tue1 is Wolf.HCProgram1Tue1;

  /** heating program 1, Tuesday slot 2 */
  model HCProgram1Tue2 is Wolf.HCProgram1Tue2;

  /** heating program 1, Tuesday slot 3 */
  model HCProgram1Tue3 is Wolf.HCProgram1Tue3;

  /** heating program 1, Wednesday slot 1 */
  model HCProgram1Wed1 is Wolf.HCProgram1Wed1;

  /** heating program 1, Wednesday slot 2 */
  model HCProgram1Wed2 is Wolf.HCProgram1Wed2;

  /** heating program 1, Wednesday slot 3 */
  model HCProgram1Wed3 is Wolf.HCProgram1Wed3;

  /** heating program 1, Thursday slot 1 */
  model HCProgram1Thu1 is Wolf.HCProgram1Thu1;

  /** heating program 1, Thursday slot 2 */
  model HCProgram1Thu2 is Wolf.HCProgram1Thu2;

  /** heating program 1, Thursday slot 3 */
  model HCProgram1Thu3 is Wolf.HCProgram1Thu3;

  /** heating program 1, Friday slot 1 */
  model HCProgram1Fri1 is Wolf.HCProgram1Fri1;

  /** heating program 1, Friday slot 2 */
  model HCProgram1Fri2 is Wolf.HCProgram1Fri2;

  /** heating program 1, Friday slot 3 */
  model HCProgram1Fri3 is Wolf.HCProgram1Fri3;

  /** heating program 1, Saturday slot 1 */
  model HCProgram1Sat1 is Wolf.HCProgram1Sat1;

  /** heating program 1, Saturday slot 2 */
  model HCProgram1Sat2 is Wolf.HCProgram1Sat2;

  /** heating program 1, Saturday slot 3 */
  model HCProgram1Sat3 is Wolf.HCProgram1Sat3;

  /** heating program 1, Sunday slot 1 */
  model HCProgram1Sun1 is Wolf.HCProgram1Sun1;

  /** heating program 1, Sunday slot 2 */
  model HCProgram1Sun2 is Wolf.HCProgram1Sun2;

  /** heating program 1, Sunday slot 3 */
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
}
