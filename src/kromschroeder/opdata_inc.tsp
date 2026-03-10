import "@ebusd/ebus-typespec";
import "./_templates.tsp";
using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

namespace Opdata_inc {
  @write
  @passive
  model uw {}

  /** burner operational data */
  @inherit(uw)
  @ext(0x5, 0x7)
  model HcOperation {
    /** status heat request */
    @values(Values_status)
    status: UCH;

    /** variable consumers */
    @values(Values_action)
    action: UCH;

    /** boiler target temperature */
    heatdemandtemp: temp;

    /** boiler target pressure */
    setpressure: press;

    /** setting degree, steps instead of percent when action is 0x44=hwc_stepped */
    modulation: percent1;

    /** hot water target temperature */
    dhwsettemp: temp1;

    /** fuel choice */
    @values(Values_fuel)
    fuel: UCH;
  }

  /** Exch values */
  @inherit(uw)
  @ext(0x50, 0x14)
  model HcMode {
    @out
    Ink1_1:BI0;
    @out
    @values(_Values_onoff)
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
    @values(_Values_onoff)
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
    @values(_Values_onoff)
    Pump:BI0;

    /** Mixer Valve Closing */
    @in
    @values(_Values_onoff)
    ValveClosing:BI1;
  
    /** Mixer Valve Closing */
    @in
    @values(_Values_onoff)
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

  @inherit(uw)
  @ext(0x50, 0x10)
  model FsStatus {
    /** Room Temperature */
    @out
    RoomTemp:temp2;

    /** Status Heating Program */
    @out
    @values(PState)
    ProgramState:UCH;
    
    /** */
    @out
    Byte3:UCH;
    
    /** Heat Demand HK */
    @out
    HeatDemandTemp:temp1;

    /** Target HC Temperature */
    @in
    SupplySetTemp:temp1;
    
    /**  Actual HC Temperature */
    @in
    SupplyTemp:temp1;
    
    /** Outside Temperature */
    @in
    OutsideTemp:outsidetemp;

    /** Outside Blended Temperature */
    @in
    OutsideWeightedTemp:outsidetemp;
    
    /** Status request */
    @in
    @values(Opdataheat)
    Status:UCH;
  
    /** ByteA */
    @in
    ByteA:UCH;
    
    /** ByteB */
    @in
    ByteB:UCH;
    
    /** ByteC */
    @in
    ByteC:UCH;

  }


  enum Values_status {
    off: 0x00,
    none: 0x01,
    standby: 0x55,
    heat: 0xAA,
    emissioncheck: 0xCC,
    techcheck: 0xDD,
    secondarypeat: 0xEE,
    primaryheat: 0x66,
    hwc_heat: 0xBB,
    hwc_stepped: 0x44,    
  }

  enum Values_action {
    none: 0x00,
    pumpoff: 0x01,
    pumpon: 0x02,
    win: 0x03,
    woff: 0x04,
    w2in: 0x05,
    w2off: 0x06,
  }

  enum Values_fuel {
    dontcare: 0x00,
    gas: 0x01,
    oil: 0x02,
    dontcare1: 0x03,
  }

  enum Values_emission_test {
    none: 0,
    br1: 1,
    br1stb: 2,
    br12: 3,
    br12stb: 4,
  }

  enum PState {
    Program:0x02,
    ProgramSuspended:0x0A,
    ProgramExtended:0x12
  }

  enum Opdataheat {
    HotWater:0x20,
    Heating:0x60
  }
}
