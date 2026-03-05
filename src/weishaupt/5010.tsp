import "@ebusd/ebus-typespec";
import "./_templates.tsp";
using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;
namespace Weishaupt;

namespace mc {
  /** default *uw */
  @write
  @passive
  model uw2 {}

  /** Actual Values  */
  @inherit(uw2)
  @ext(MF, 0x10)
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
}

