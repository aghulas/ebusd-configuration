import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;

namespace Wolf;

// Register and memory reads addressed to the second boiler (ZZ 0x18 from the file name).
namespace bc2 {
  // Heat demand, passive: sent by the cascade manager (QQ 0x10, the master address of the
  // system manager) to the master address of this boiler (ZZ 0x13). ebusd loads a file for a
  // scanned slave address only, hence the message is here.

  /** heat demand of the cascade manager to the second boiler */
  @passive
  @qq(0x10)
  @zz(0x13)
  model PowerDemand is Wolf.PowerDemand;

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

  // Composite read: three consecutive information temperatures read in one 50 22 telegram
  // (7-byte ID, compatible with stock ebusd); each field fills its single-register message.

  /** outside, flow and hot-water information temperatures, read in one telegram, distributed to their messages */
  @crc(0x5c, 0x0c, 0x00, 0x0d, 0x00, 0x0e, 0x00)
  @inherit(crcr)
  model InfoTemperatures {
    @fills(OutsideTemp)
    outside: otemp10;

    @fills(SupplyTemp)
    supply: otemp10;

    @fills(DHWTemp)
    dhw: otemp10;
  }

  /** WCM-CPU software version (info value i44) */
  model SoftwareVersionCPU is Wolf.SoftwareVersionCPU;

  /** WCM-CUI software version (info value i45) */
  model SoftwareVersionCUI is Wolf.SoftwareVersionCUI;

  /** operating hours, burner hours and burner starts */
  model Counters is Wolf.Counters;

  /** event counters: burner hours and ignitions of the day, switch-ons, resets, shut-offs */
  model EventCounters is Wolf.EventCounters;

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
