import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Long-ID composite-read carrier; see 08.w.bc1.ext.tsp. Extension variant only (src/main-ext.tsp);
// a stock ebusd cannot load the 9-byte ID.

namespace fs2 {
  // Not a functional block: these four registers were read together in one 50 22 during the
  // register survey (evidence/grouped-reads.md, 75 s1-4mixed), nothing more. Kept as a composite
  // read only so each value still fills its own message instead of needing four telegrams.

  /** four registers read together in one survey telegram (room temperature, heating-circuit type, weighted outside temperature, holiday level), each filling its own message */
  @wcrc(0x11, 0x00, 0x73, 0x09, 0x0c, 0x0a, 0x3d, 0x01)
  @inherit(crcr)
  model RegisterSurvey {
    @fills(RoomTemp)
    room: otemp10;

    @fills(HeatingCircuitType)
    circuitType: UIN;

    @fills(OutsideWeightedTemp)
    outsideWeighted: otemp10;

    @fills(HolidayTempLevel)
    holidayLevel: UIN;
  }
}
