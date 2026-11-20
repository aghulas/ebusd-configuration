import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Exchange between the room controller (QQ 0x70) and heating module #2 (ZZ 0x51).
namespace em2 {
  /** room-controller / heating-module exchange */
  @passive
  @qq(0x70)
  model HcMode is Wolf.HcMode;

  // Values of the heating circuit, read side only.

  /** flow setpoint of the heating circuit */
  model SupplyHCSetTemp is Wolf.SupplyHCSetTemp;

  /** flow temperature of the heating circuit */
  model SupplyHCTemp is Wolf.SupplyHCTemp;

  /** boiler boost offset */
  model BoilerMCBoostTemp is Wolf.BoilerMCBoostTemp;

  /** mixer parameter */
  model MixerParameter is Wolf.MixerParameter;

  /** state of the mixer-circuit pump */
  model MixerPump is Wolf.MixerPump;

  /** circulation return temperature setpoint */
  model CirculationReturnSetTemp is Wolf.CirculationReturnSetTemp;

  /** software version, major part */
  model VersionMajor is Wolf.UnitVersionMajor;

  /** software version, minor part */
  model VersionMinor is Wolf.UnitVersionMinor;

  // Settings of the heating circuit, read and written. The module acknowledges a write from
  // any master. It takes the two flow limits from the address of ebusd as well, the others
  // only from source address 0xff (`write -s ff`).

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
}
