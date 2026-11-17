import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

@zz(0x75) // room unit of heating circuit #2 (FS)
namespace fs2 {
  // Values and settings of the heating circuit, read side only: no write was captured on this
  // room unit.

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

  /** lead time of the optimised switch-on */
  model SwitchOnRuntime is Wolf.SwitchOnRuntime;

  /** outside temperature below which the frost protection starts */
  model FrostProtectionLimitTemp is Wolf.FrostProtectionLimitTemp;
}
