import "@ebusd/ebus-typespec";
import "./_templates.tsp";
using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;
namespace Weishaupt;

namespace hcmode {
  /** default *uw */
  @write
  @passive
  model uw {}

  /** Exch values */
  @inherit(uw)
  @ext(0x50, 0x14)
  model HcMode {
    @out
    Ink1_1:BI0;
    @out
    @values(Values_onoff)
    Heating:BI1;
    @out
    Ink1_3:BI2;
    @out
    Ink1_4:BI3;
    @out
    Ink1_5:BI4;
    @out
    Ink1_6:BI5;
    @out
    Ink1_7:BI6;
    @out
    Ink1_8:BI7;
    @out
    SupplyHCSetTemp:temp2;
    @out
    RoomTemp:temp2;
    @out
    Ink2_1:BI0;
    @out
    Ink2_2:BI1;
    @out
    Ink2_3:BI2;
    @out
    @values(Values_onoff)
    DHW:BI3;
    @out
    Ink2_5:BI4;
    @out
    Ink2_6:BI5;
    @out
    Ink2_7:BI6;
    @out
    Ink2_8:BI7;

    @maxLength(1)
    @out
    ign:IGN;

    @in
    Opmode:UCH;

    /** HC Pump */
    @in
    @values(Values_onoff)
    Pump:BI0;

    /** Mixer Valve Closing */
    @in
    @values(Values_onoff)
    ValveClosing:BI1;
  
    /** Mixer Valve Closing */
    @in
    @values(Values_onoff)
    ValveOpening:BI2;

    @in
    Opmode_4:BI3;

    @in
    Opmode_5:BI4;

    @in
    Opmode_6:BI5;

    @in
    Opmode_7:BI6;

    /** Supply HC Temperature */
    @in
    SupplyHCTemp: temp2;

    /** Outside Temperature */
    @in
    OutsideTemp: temp2;

    /** Boiler Boost in K */
    @in
    BoilerMCBoostTemp: temp1k;

    /** Max Supply Temperature */
    @in
    SupplyHCMaxTemp: temp1;

    /** Min Supply Temperature */
    @in
    SupplyHCMinTemp: temp1;
  }

}