import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Exchange between the room controller (QQ 0xf0) and heating module #3 (ZZ 0x52).
namespace em3 {
  /** room-controller / heating-module exchange */
  @passive
  @qq(0xf0)
  model HcMode is Wolf.HcMode;

  // Values and settings of the heating circuit, read side only: no write was captured on
  // this module.

  /** flow setpoint of the heating circuit */
  model SupplyHCSetTemp is Wolf.SupplyHCSetTemp;

  /** flow temperature of the heating circuit */
  model SupplyHCTemp is Wolf.SupplyHCTemp;

  /** boiler boost offset */
  model BoilerMCBoostTemp is Wolf.BoilerMCBoostTemp;

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
}
