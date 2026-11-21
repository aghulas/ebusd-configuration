import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Composite-read carriers whose message ID is longer than 7 bytes (four registers in one 50 22).
// A stock ebusd rejects these (`max message ID length exceeded`), so they are NOT part of the
// standard published set: this file is imported only by `src/main-ext.tsp`, which builds the
// extension variant for a fork ebusd that supports long IDs. Each field fills its own
// single-register message (which keeps its name and MQTT topic); the carrier is not published.

namespace bc1 {
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
