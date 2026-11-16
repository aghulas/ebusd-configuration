import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Register reads addressed to the first boiler (ZZ 0x08 from the file name).
namespace bc1 {
  /** burner hours since the last service (maintenance counter i45) */
  @ext(0x0a, 0xbc, 0x02)
  @inherit(crcr)
  model BurnerServiceHours {
    @factor(10)
    value: hours;
  }
}
