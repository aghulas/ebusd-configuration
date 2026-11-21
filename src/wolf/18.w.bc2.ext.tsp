import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Long-ID composite-read carrier for the second boiler; see 08.w.bc1.ext.tsp. Extension variant
// only (src/main-ext.tsp); a stock ebusd cannot load the 9-byte ID.

namespace bc2 {
  /** four boiler information values read in one telegram, distributed to their messages */
  @wcrc(0x0d, 0x00, 0x16, 0x00, 0x45, 0x01, 0xbc, 0x02)
  @inherit(crcr)
  model BoilerInfoBlock {
    @fills(SupplyTemp)
    supply: otemp10;

    @fills(ReturnTemp)
    returnTemp: otemp10;

    @fills(FlueGasTemp)
    flue: otemp10;

    @fills(BurnerServiceHours)
    serviceHours: UIN;
  }
}
