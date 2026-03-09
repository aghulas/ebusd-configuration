import "@ebusd/ebus-typespec";
import "../_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;
alias MF = 0x50; // Ebus.Id.Values_manufacturers.Kromschröder

/** temperature */
@unit("°C")
@divisor(10)
scalar temp10 extends UIN;

/** temperature K */
@unit("K")
@divisor(10)
scalar temp10k extends UIN;

/** percent */
@unit("%")
scalar percent extends UIN;

/** seconds */
@unit("s")
scalar seconds extends UIN;

/** minutes */
@unit("min")
scalar minutes extends UIN;

/** hours */
@unit("h")
scalar hours extends UIN;

@unit("U/sec")
scalar speed extends UIN;

/** default *r for register */
@base(0x50, 0x22) // todo 0x00 should rather be crc8 of following bytes, see https://github.com/john30/ebusd/issues/167
model regr {
}

/** default *r for memory */
@base(0x50, 0x00) // todo 0x00 should rather be crc8 of following bytes, see https://github.com/john30/ebusd/issues/167
model memr {
}

/** default *w for register */
@write(true)
@base(0x50, 0x23)
model regw {}

/** default *r for memory */
@write(true)
@base(0x50, 0x01) // todo 0x00 should rather be crc8 of following bytes, see https://github.com/john30/ebusd/issues/167
model memw {
}

/** default passive *r for register */
@base(0x09, 0x02)
@passive
model sregr {}

/** default passive *w for register */
@write()
@passive
@base(0x09, 0x03)
model sregw {}

/** read/write sregister */
@inherit(regr, regw) //todo first byte of ext always 0x0 on write
model Register<T> {
  value: T;
}

@inherit(memr, memw) //todo first byte of ext always 0x0 on write
model Memory<T> {
  @maxLength(1) ign: IGN;
  value: T;
}

/** read only register */
@inherit(regr)
model ReadonlyRegister<T> {
  value: T;
}

@inherit(memr)
model ReadonlyMemory<T> {
  value: T;
}

@inherit(sregr) //todo first byte of ext always 0x0 on write
model ReadRegister<T> {
  value: T;
}

@inherit(sregw) //todo first byte of ext always 0x0 on write
model WriteRegister<T> {
  value: T;
}

@inherit(regr, regw) //todo first byte of ext always 0x0 on write
model cal {
disabled:BI7,
time:TTQ
}

/** outside temperature */
@unit("°C")
@divisor(10)
scalar outsidetemp10 extends SIN;

/** temperature */
@unit("K")
scalar temp1k extends D1C;

/** Steepness */
@divisor(10)
scalar gradient10 extends SIN;


enum Values_onoff {
    off: 0,
    on: 1,
  }

enum Opdataheat {
  HotWater:0x20,
  Heating:0x60
}

enum PState {
  Program:0x02,
  ProgramSuspended:0x0A,
  ProgramExtended:0x12
}

enum month {
January:0x01,
February:0x02,
March:0x03,
April:0x04,
May:0x05,
June:0x06,
July:0x07,
August:0x08,
September:0x09,
October:0x0A,
November:0x10,
December:0x11
}

enum boilerid {
  A:0,
  B:1,
  x:240
}

enum DHWOperation {
  Priority:0x0000,
  Sliding:0x0100,
  Parallel:0x0200
}

enum Constructiontype {
  Heavy:0x0,
  Light:0x1
}

enum Program {
  Standby:0x01,
  NormalTemperature:0x03,
  LoweringTemperature:0x04,
  Summer:0x05,
  Program1:0x0b,
  Program2:0x0c,
  Program3:0x0d,
  StandbyWTC:0x14
}

enum Dhw {
  DHWProgram:0x00,
  Day24:0x01,
  DHWBeforeHeat:0x02
}

enum WeekDay {
  Sunday:0x01,
  Monday:0x02,
  Tuesday:0x03,
  Wednesday:0x04,
  Thursday:0x05,
  Friday:0x06,
  Saturday:0x07
}

enum WeekDay2 {
  Monday:0x01,
  Tuesday:0x02,
  Wednesday:0x03,
  Thursday:0x04,
  Friday:0x05,
  Saturday:0x06,
  Sunday:0x07,
}

enum TempReduced {
  Antifreeze:0x00,
  Setback:0x01
}

enum PumpVariationSpeed {
  Operating_level:0x00,
  Characteristic_Curve:0x01
}

enum HCType {
  UnderFloorHeating:0x000,
  UndeFloorHeating2:0x100,
  Radiator60:0x200,
  Radiator75:0x300,
  onvector:0x400,
  Universal:0x500
}

enum Floordrying {
  Off:0x00,
  HeatingFunction:0x01,
  DocumentHeating:0x02,
  FunctionReceiptHeating:0x03
}

enum CVariation {
  Constant:0x000,
  WeatherCompensated:0x100,
  WeatherRoomCompensated:0x200,
  RoomCompensated:0x300
}
