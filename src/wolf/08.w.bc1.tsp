import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Register and memory reads addressed to the first boiler (ZZ 0x08 from the file name).
namespace bc1 {
  /** burner hours since the last service (maintenance counter i46) */
  @ext(0x0a, 0xbc, 0x02)
  @inherit(crcr)
  model BurnerServiceHours {
    @factor(10)
    value: hours;
  }

  /** operating hours, burner hours and burner starts */
  model Counters is Wolf.Counters;

  /** return, flue gas, flow and outside temperature */
  model Temperatures is Wolf.Temperatures;

  /** burner load, ionisation signal and pump speed */
  model Operation is Wolf.Operation;

  // --- Fault history, EEPROM 0x0200 to 0x0231 ---

  /** fault history: address of the last byte written */
  @ext(0x1c, 0x06, 0x02, 0x12, 0x00)
  model FaultHistoryPointer is Wolf.FaultHistoryPointer;

  /** fault history slot 1 */
  @ext(0x5a, 0x06, 0x02, 0x72, 0x02)
  model FaultHistorySlot1 is FaultHistorySlot;

  /** fault history slot 2 */
  @ext(0x52, 0x06, 0x02, 0x72, 0x0a)
  model FaultHistorySlot2 is FaultHistorySlot;

  /** fault history slot 3 */
  @ext(0x4a, 0x06, 0x02, 0x72, 0x12)
  model FaultHistorySlot3 is FaultHistorySlot;

  /** fault history slot 4 */
  @ext(0x42, 0x06, 0x02, 0x72, 0x1a)
  model FaultHistorySlot4 is FaultHistorySlot;

  /** fault history slot 5 */
  @ext(0x7a, 0x06, 0x02, 0x72, 0x22)
  model FaultHistorySlot5 is FaultHistorySlot;

  /** fault history slot 6 */
  @ext(0x72, 0x06, 0x02, 0x72, 0x2a)
  model FaultHistorySlot6 is FaultHistorySlot;
}
