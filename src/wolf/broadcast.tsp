import "@ebusd/ebus-typespec";
import "../opdata_inc.tsp";
import "../net_inc.tsp";
import "./wtc_inc.tsp";
using Ebus;

namespace Wolf;

namespace Broadcast {
  /** default *b */
  @passive
  @zz(BROADCAST)
  model b {}

  /** default *w */
  @write
  @zz(BROADCAST)
  model w {}

  /** boiler status broadcast by the WTC */
  @inherit(b)
  model KaStatus is Status;

  @inherit(b)
  model RcTarget is Opdata_inc.RcTarget;

  @inherit(b)
  model RcOperation is Opdata_inc.RcOperation;

  @inherit(b)
  model ControlCmd is Opdata_inc.ControlCmd;

  // The clock master takes the time over as sent, seconds included: send at second 00 of the
  // minute it carries, or the installation runs late until the next broadcast.

  /** date and time set for the whole installation */
  @inherit(w)
  @ext(0x7, 0)
  model Datetime {
    outsidetemp: global.temp2;
    time: global.btime;
    date: global.bdate;
  }

  union _includes {
    Net_inc,
  }
}
