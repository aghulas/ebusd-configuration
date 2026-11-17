import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

@zz(0x35) // room unit of heating circuit #1 (FS)
namespace fs1 {
  // Values and settings of the heating circuit, read side only.

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

  /** normal room temperature setpoint */
  model RoomNormalTemp is Wolf.RoomNormalTemp;

  /** setback room temperature setpoint */
  model RoomSetbackTemp is Wolf.RoomSetbackTemp;

  /** room temperature setpoint of the frost protection */
  model RoomFrostProtectionTemp is Wolf.RoomFrostProtectionTemp;

  /** steepness of the heating curve */
  model GradientCurve is Wolf.GradientCurve;

  /** outside temperature of the summer / winter changeover */
  model SummerWinterChangeOverTemp is Wolf.SummerWinterChangeOverTemp;

  /** maximum flow temperature */
  model SupplyMaxTemp is Wolf.SupplyMaxTemp;

  /** minimum flow temperature */
  model SupplyMinTemp is Wolf.SupplyMinTemp;

  // Settings, read and written. The room unit acknowledges a write from any master but takes
  // the value only from source address 0xff (`write -s ff`).

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
