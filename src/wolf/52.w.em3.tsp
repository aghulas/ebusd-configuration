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
}
