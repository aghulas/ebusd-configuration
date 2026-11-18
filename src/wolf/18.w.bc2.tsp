import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Register and memory reads addressed to the second boiler (ZZ 0x18 from the file name).
namespace bc2 {
  /** burner hours since the last service (maintenance counter i46) */
  @ext(0x0a, 0xbc, 0x02)
  @inherit(crcr)
  model BurnerServiceHours {
    @factor(10)
    value: hours;
  }

  // --- Information values read with 50 22 (WTC display "i" codes) ---

  /** flow temperature (info value i35) */
  model SupplyTemp is Wolf.SupplyTemp;

  /** return temperature (info value i37) */
  model ReturnTemp is Wolf.ReturnTemp;

  /** flue gas temperature (info value i31) */
  model FlueGasTemp is Wolf.FlueGasTemp;

  /** outside temperature (info value i33) */
  model OutsideTemp is Wolf.OutsideTemp;

  /** domestic hot water temperature (info value i34) */
  model DHWTemp is Wolf.DHWTemp;

  /** hydraulic separator temperature (info value i39) */
  model HydraulicSeparatorTemp is Wolf.HydraulicSeparatorTemp;

  /** WCM-CPU software version (info value i44) */
  model SoftwareVersionCPU is Wolf.SoftwareVersionCPU;

  /** WCM-CUI software version (info value i45) */
  model SoftwareVersionCUI is Wolf.SoftwareVersionCUI;

  /** operating hours, burner hours and burner starts */
  model Counters is Wolf.Counters;

  /** return, flue gas, flow and outside temperature */
  model Temperatures is Wolf.Temperatures;

  /** burner load, ionisation signal and pump speed */
  model Operation is Wolf.Operation;

  // --- Fault counters, EEPROM 0x0196 to 0x01d7 ---

  /** fault counters, numbers 57 to 51 */
  model FaultCounters1 is Wolf.FaultCounters1;

  /** fault counters, numbers 49 to 45 */
  model FaultCounters2 is Wolf.FaultCounters2;

  /** fault counters, numbers 44 to 38 */
  model FaultCounters3 is Wolf.FaultCounters3;

  /** fault counters, numbers 37 to 33 */
  model FaultCounters4 is Wolf.FaultCounters4;

  /** fault counters, numbers 32 to 23 */
  model FaultCounters5 is Wolf.FaultCounters5;

  /** fault counters, numbers 22 to 15 */
  model FaultCounters6 is Wolf.FaultCounters6;

  /** fault counters, numbers 14 to 11 */
  model FaultCounters7 is Wolf.FaultCounters7;

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
