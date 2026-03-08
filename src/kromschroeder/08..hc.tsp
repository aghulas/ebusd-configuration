import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "../opdata_inc.tsp";
import "./reg_inc.tsp";
import "./WH11928.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

/* type (r[1-9];w;u),class,name,comment,QQ,ZZ,PBSB,ID,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment,field,part (m/s),type / templates,divider / values,unit,comment
# WTC #A

*cw,,,,03,10,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
cw,,WTCPower,Power Info WTC -> KA,,,0504,,CurrentLoad,,_8_Load,,, ,MinLoad,,_8_Load,,, ,MaxLoad,,_8_Load,,, ,
cw,,WTCStatus,WTC Status -> KA,,,500A,,Status1,,_8_Status,,, ,Operatingphase,,_8_WtcOperatingPhase,,,Operating Phase ,Ukn2_1,,BI0,,, ,Ukn2_2,,BI1,,, ,Ukn2_3,,BI2,,, ,Flame,,BI3,1=On;0=Off,, ,GasValve1,,BI4,1=On;0=Off,, ,GasValve2,,BI5,1=On;0=Off,, ,Pump,,BI6,1=On;0=Off,, ,Error,,BI7,,, ,ManualStartUp,,BI0,,, ,BurnerStatus,,BI1,0=Off;1=On,, ,Ukn3_3,,BI2,,, ,Service,,BI3,,, ,Ukn3_5,,BI4,,, ,Fan,,BI5,0=Off;1=On,, ,CircPump,,BI6,0=Off;1=On,, ,DHWPump,,BI7,0=Off;1=On,, ,Load,,_8_Load,,,Load Position ,SupplyTemp,,_8_Temp2,,,SupplyTemp Temperature ,FlueGasTemp,,_8_Skip,,,Flue gas temperature ,DHWTemp,,_8_Temp2,,,Domestic Hot Water Temperature,OutsideTemp,,_16_Temp0,,,Outside Temperature ,OutsideWeightedTemp,,_16_Temp0,,,Outside Weigthed Temperature ,SupplySetTemp,,_8_Temp0,,,Boiler Set Temperature


!include,WH11928.inc,,Rom Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

#!include,wtc.rom.inc,,Rom Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
#!include,wtc.eeprom.inc,,Eeprom Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
#!include,wtc.ram.inc,,Ram Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
#!include,wtc.exram.inc,,External Ram Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
#!include,wtc.sfr.inc,,Special Function Registers,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

#!include,wtc.systemheatcontrol.inc,,System Heat Control Values,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
*/

@zz(0x08) // needed here for write to source address calculation
namespace hc {
  /** Betriebsdaten des Reglers an den Feuerungsautomaten */
  @write(true)
  model Operation is Opdata_inc.HcOperation;

  /** ErrorStatus */
  model ErrorStatus is register.ErrorStatus;

  /** Version Minor */
  model VersionMinor is register.VersionMinor;

  model Idle_r0 is memory.IDLE_R0;
}
