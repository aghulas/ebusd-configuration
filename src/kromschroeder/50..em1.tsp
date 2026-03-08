import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./hcmode_inc.tsp";
using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;
namespace Weishaupt;

namespace em1 {
  /** Betriebsdaten des Reglers an den Feuerungsautomaten */
  @write(true)
  model HcMode is hcmode.HcMode;

}



 