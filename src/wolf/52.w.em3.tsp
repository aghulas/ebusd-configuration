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

  // Setting of the heating circuit, read and written. The module acknowledges a write from
  // any master; this one was taken from source address 0xff (`write -s ff`).

  /** steepness of the heating curve */
  @wcrc(0x0e, 0x01)
  @inherit(crcr, crcw)
  model GradientCurve {
    // 2.5 to 40.0: no range here, a bound of an integer type cannot be fractional
    @divisor(10)
    value: UIN;
  }

  // Other values and settings of the heating circuit, read side only: no write of them was
  // captured on this module.

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

  /** outside temperature of the summer / winter changeover */
  model SummerWinterChangeOverTemp is Wolf.SummerWinterChangeOverTemp;

  /** maximum flow temperature */
  model SupplyMaxTemp is Wolf.SupplyMaxTemp;

  /** minimum flow temperature */
  model SupplyMinTemp is Wolf.SupplyMinTemp;
}
