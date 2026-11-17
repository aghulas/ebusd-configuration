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
}
