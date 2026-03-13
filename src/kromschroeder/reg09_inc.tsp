import "@ebusd/ebus-typespec";
import "./_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

namespace register {

   /**Error Status */
   @appendext(0x02, 0x00, 0x00)
   model BootStatus is ReadRegister<UIN>;

   /**Error Status */
   @appendext(0x02, 0x01, 0x00)
   model ErrorStatus is ReadRegister<UIN>;

   /**Heat demand HK */
   @appendext(0x02, 0x02, 0x00)
   model HeatDemandTemp is ReadRegister<temp10>;
   
   /**Hot water setpoint */
   @appendext(0x02, 0x03, 0x00)
   model DHWSetValue is ReadRegister<temp10>;

   /**pply SetPoint (121) */
   @appendext(0x02, 0x04, 0x00)
   model SupplySetPointTemp is ReadRegister<temp10>;

   /**Normal Room Temperature (112) */
   @appendext(0x02, 0x05, 0x00)
   model RoomNormalTemp is ReadRegister<temp10>;
  
   /**Setback Room Temperature (113) */
   @appendext(0x02, 0x08, 0x00)
   model RoomSetbackTemp is ReadRegister<temp10>;

   /**Unknown Sensor 15 */
   @appendext(0x02, 0x0b, 0x00)
   model UnknownSensor15 is ReadRegister<UIN>;

   /**B1 Outside Sensor Temperature */
   @appendext(0x02, 0x0c, 0x00)
   model OutsideTemp is ReadRegister<outsidetemp10>;

   /**Flow temperature WTC */
   @appendext(0x02, 0x0d, 0x00)
   model SupplyWTCTemp is ReadRegister<temp10>;

   /**B3 DHW Sensor Temperature */
   @appendext(0x02, 0x0e, 0x00)
   model DHWTemp is ReadRegister<temp10>;

   /**B6 Supply Sensor Temperature */
   @appendext(0x02, 0x0f, 0x00)
   model SupplyHCTemp is ReadRegister<temp10>;

   /**Configuration Status */
   @appendext(0x02, 0x10, 0x00)
   model ConfigStatus is ReadRegister<UIN>;

   /**Room Sensor Temperature */
   @appendext(0x02, 0x11, 0x00)
   model RoomTemp is ReadRegister<temp10>;

   /**Room setpoint */
   @appendext(0x02, 0x12, 0x00)
   model RoomSetPointTemp is ReadRegister<temp10>;

   /**Hot water setpoint (176) */
   @appendext(0x02, 0x13, 0x00)
   model DHWSetpoint is ReadRegister<temp10>;

   /**Blended Outside Temperature */
   @appendext(0x02, 0x1a, 0x00)
   model OutsideBlendedTemp is ReadRegister<outsidetemp10>;

   /**WW Operation (343) */
   @appendext(0x02, 0x23, 0x00)
   model WWOperationMode is ReadRegister<DHWOperation>;

   /**Maximum Blocking Time (537) */
   @appendext(0x02, 0x25, 0x00)
   model BlockingTime is ReadRegister<minutes>;

    /*Maximum Supply Temperature (422) */
   @appendext(0x02, 0x28, 0x00)
   model SupplyMaxTemp is ReadRegister<temp10>;

   /** Mixer Parameter (425) */
   @appendext(0x02, 0x2b, 0x00)
   model MixerParameterTemp is ReadRegister<temp10k>;

   /**dulation */
   @appendext(0x02, 0x2c, 0x00)
   model ModulationStatus is ReadRegister<percent>;

   /**576 DHW exceeded */
   @appendext(0x02, 0x2d, 0x00)
   model DHWExceeded is ReadRegister<temp10>;

   /**Mixer Pump */
   @appendext(0x02, 0x52, 0x00)
   model MixerPump is ReadRegister<Values_onoff>;

   /**Mixer Valve Opening */
   @appendext(0x02, 0x56, 0x00)
   model ValveOpening is ReadRegister<Values_onoff>;

   /**Mixer Valve Closing */
   @appendext(0x02, 0x57, 0x00)
   model ValveClosing is ReadRegister<Values_onoff>;

   /**Calorifier Top Temp B20 */
   @appendext(0x02, 0x76, 0x00)
   model ColorifierTopTemp is ReadRegister<temp10>;

   /**Calorifier Bottom Temp B21   */
   @appendext(0x02, 0x78, 0x00)
   model ColorifierBottomTemp is ReadRegister<temp10>;

   /**14 Target value reduction for solar yield   */
   @appendext(0x02, 0x81, 0x00)
   model ReductionSolarYied is ReadRegister<temp10k>;

   /**SOL/905_Durchfluss */
   @appendext(0x02, 0x82, 0x00)
   model Durchfluss is ReadRegister<UIN>;    

   /**SOL/906_YieldSince_Wh */
   @appendext(0x02, 0x87, 0x00)
   model YieldSince_Wh is ReadRegister<UIN>;   

   /**SOL/906_YieldSince_kWh */
   @appendext(0x02, 0x88, 0x00)
   model YieldSince_kWh is ReadRegister<UIN>;   

   /**SOL/906_YieldSince_MWh */
   @appendext(0x02, 0x89, 0x00)
   model YieldSince_MWh is ReadRegister<UIN>;   

   /**Legionella Protection Function (605) */
   @appendext(0x02, 0x01, 0x01)
   model DHWLegionellaDay is ReadRegister<WeekDay2>;

   /**Room Sensor Correction (101) */
   @appendext(0x02, 0x09, 0x01)
   model RoomSensorCorrectionTemp is ReadRegister<temp10k>;

   /**Steepness (175) */
   @appendext(0x02, 0x0e, 0x01)
   model GradientCurve is ReadRegister<gradient10>;

   /**Room Factor-P (508) */
   @appendext(0x02, 0x0f, 0x01)
   model RoomFactorCurve is ReadRegister<UIN>;

   /**Switch-on delay (353) */
   @appendext(0x02, 0x10, 0x01)
   model SwitchOnRuntime is ReadRegister<minutes>;

   /**Boiler MC Boost(424) */
   @appendext(0x02, 0x11, 0x01)
   model BoilerMCBoostTemp is ReadRegister<temp10k>;

   /**Program selector switch position*/
   @appendext(0x02, 0x12, 0x01)
   model ProgramMode is ReadRegister<Program>;

   /**Adaption (507) */
   @appendext(0x02, 0x15, 0x01)
   model AdaptionMode is ReadRegister<Values_onoff>;

   /**mmer/winter changeover temperature (174)   */
   @appendext(0x02, 0x16, 0x01)
   model SummerWinterChangeOverTemp is ReadRegister<outsidetemp>;

   /**Screed function (381) */
   @appendext(0x02, 0x1a, 0x01)
   model FloorDryingMode is ReadRegister<Floordrying>;

   /**Hollyday Start Day */
   @appendext(0x02, 0x1b, 0x01)
   model HolidayRuntimeFromDay is ReadRegister<UIN>;

    /**Hollyday Start Month */
   @appendext(0x02, 0x1c, 0x01)
   model HolidayRuntimeFromMonth is ReadRegister<month>;

   /**Hollyday Start Year */
   @appendext(0x02, 0x1d, 0x01)
   model HolidayRuntimeFromYear is ReadRegister<UIN>;

   /**Hollyday End Day */
   @appendext(0x02, 0x1e, 0x01)
   model HolidayRuntimeToDay is ReadRegister<UIN>;

   /**Hollyday End Month */
   @appendext(0x02, 0x1f, 0x01)
   model HolidayRuntimeToMonth is ReadRegister<month>;

   /**Hollyday End Year */
   @appendext(0x02, 0x20, 0x01)
   model HolidayRuntimeToYear is ReadRegister<UIN>;

   /**SystemDate WeekDay */
   @appendext(0x02, 0x21, 0x01)
   model SystemDateWeekday is ReadRegister<WeekDay>;

   /**SystemDate Day */
   @appendext(0x02, 0x22, 0x01)
   model SystemDateDay is ReadRegister<UIN>;

   /**SystemDate Month */
   @appendext(0x02, 0x23, 0x01)
   model SystemDateMonth is ReadRegister<month>;

   /**SystemDate Year */
   @appendext(0x02, 0x24, 0x01)
   model SystemDateYear is ReadRegister<UIN>;

   /**SystemTime Hour */
   @appendext(0x02, 0x25, 0x01)
   model SystemTimeHour is ReadRegister<hours>;

   /**SystemTime Minute */
   @appendext(0x02, 0x26, 0x01)
   model SystemTimeMinute is ReadRegister<minutes>;

   /**SystemTime Hour */
   @appendext(0x02, 0x27, 0x01)
   model SystemTimeSecond is ReadRegister<seconds>;

   /**Construction method (371) */
   @appendext(0x02, 0x28, 0x01)
   model TypeOfConstructionMode is ReadRegister<Constructiontype>;

   /**15 Normal SPL-Set */
   @appendext(0x02, 0x29, 0x01)
   model NormalSplSetTemp is ReadRegister<temp10>;

   /**16 Reduced SPL-Set */
   @appendext(0x02, 0x2a, 0x01)
   model ReducedSplSetTemp is ReadRegister<temp10>;

   /**Minimum Supply Temperature (421) */
   @appendext(0x02, 0x2b, 0x01)
   model SupplyMinTemp is ReadRegister<temp10>;

   /**Holiday temperature (183) */
   @appendext(0x02, 0x2d, 0x01)
   model HolidayTemp is ReadRegister<TempReduced>;

   /**WTC delay(430) */
   @appendext(0x02, 0x2e, 0x01)
   model WtcDelayRuntime is ReadRegister<minutes>;

   /**Max Pump speed (358) */
   @appendext(0x02, 0x2f, 0x01)
   model PumpMaxSpeed is ReadRegister<percent>;

   /**Min Pump speed (359) */
   @appendext(0x02, 0x30, 0x01)
   model PumpMinSpeed is ReadRegister<percent>;

   /**VSD variable (429) */
   @appendext(0x02, 0x31, 0x01)
   model PumpVSDvariable is ReadRegister<PumpVariationSpeed>;

   /**ReductTemp (501) */
   @appendext(0x02, 0x32, 0x01)
   model ReductTemp is ReadRegister<TempReduced>;

   /**Hot water Min (177) */
   @appendext(0x02, 0x33, 0x01)
   model DHWMinTemp is ReadRegister<outsidetemp>;

   /**DHW maximum Temp (601) */
   @appendext(0x02, 0x34, 0x01)
   model DHWMaxTemp is ReadRegister<temp10>;

   /**WW-Mode (361) */
   @appendext(0x02, 0x35, 0x01)
   model DHWMode is ReadRegister<Dhw>;

   /**WW operation (360) */
   @appendext(0x02, 0x37, 0x01)
   model DHWOperationMode is ReadRegister<DHWOperation>;

   /**R3B01 */
   @appendext(0x02, 0x3b, 0x01)
   model R3B01 is ReadRegister<UIN>;

   /**42 Holiday Temperature Level*/
   @appendext(0x02, 0x3d, 0x01)
   model HolidayTempLevel is ReadRegister<temp10>;

   /**575 DHW Switch Diff */
   @appendext(0x02, 0x40, 0x01)
   model DHWSwitchDiff is ReadRegister<temp10k>;

   /**Control Variation (318) */
   @appendext(0x02, 0x41, 0x01)
   model ControlVariationMode is ReadRegister<CVariation>;

   /**OB/i31_TempAbgas */
   @appendext(0x02, 0x45, 0x01)
   model TempAbgas is ReadRegister<outsidetemp>;

   /**577 WW Load Time */
   @appendext(0x02, 0x80, 0x01)
   model DHWLoadTime is ReadRegister<minutes>;

   /**574 DHW-Max */
   @appendext(0x02, 0x81, 0x01)
   model DHWMaxTemp2 is ReadRegister<temp10>;

   /**Ka Version */
   @appendext(0x02, 0x8f, 0x01)
   model KaVersion is ReadRegister<SIN>;

   /**Version Major */
   @appendext(0x02, 0x99, 0x01)
   model VersionMajor is ReadRegister<UIN>;

   /**Version Minor */
   @appendext(0x02, 0x9a, 0x01)
   model VersionMinor is ReadRegister<UIN>;

   /**H1 Control Voltage */
   @appendext(0x02, 0xa9, 0x01)
   model H1ControlVoltage is ReadRegister<UIN>;

   /**H1 Control Current */
   @appendext(0x02, 0xaA, 0x01)
   model H1ControlCurrent is ReadRegister<UIN>;

   /**483 Screed Start Temperature */
   @appendext(0x02, 0xbb, 0x01)
   model FHCMinTemp is ReadRegister<temp10>;

   /**484 Tag Min Temp Fhz */
   @appendext(0x02, 0xbc, 0x01)
   model FHCMinTempDays is ReadRegister<UIN>;

   /**SOL/905_Leistung */
   @appendext(0x02, 0xdb, 0x01)
   model Leistung is ReadRegister<UIN>;

   /**Reset Error Memory */
   @appendext(0x02, 0x7a, 0x02)
   model ResetErrorMemory is ReadRegister<UIN>;

   /**FS_EM_W4_Sensor */
   @appendext(0x02, 0x85, 0x02)
   model FS_EM_W4_Sensor is ReadRegister<UIN>;


   /**573 DHW Min Temp */
   @appendext(0x02, 0x8a, 0x02)
   model DHWMinTemp2 is ReadRegister<temp10>;


   /**540 I Regler */
   @appendext(0x02, 0x9e, 0x02)
   model RegulationI is ReadRegister<UIN>;

   /**539 1/P Regler */
   @appendext(0x02, 0x9f, 0x02)
   model RegulationP is ReadRegister<UIN>;

   /**OB/i45_LetzteWartung */
   @appendext(0x02, 0xbc, 0x02)
   model i45_LetzteWartung is ReadRegister<UIN>;

   /**82 Frost Protection Limit */
   @appendext(0x02, 0xbe, 0x02)
   model FrostProtectionLimitTemp is ReadRegister<temp10>;

   /**SOL/902_StatusDTR */
   @appendext(0x02, 0xf1, 0x02)
   model StatusDTR is ReadRegister<UIN>;

   /**FS_EM_R2_Sensor */
   @appendext(0x02, 0x59, 0x03)
   model FS_EM_R2_Sensor is ReadRegister<UIN>;

   /**B3Sensor */
   @appendext(0x02, 0xe9, 0x04)
   model B3Sensor is ReadRegister<temp10>;

   /**580 AntiLeg Setp Temperature */
   @appendext(0x02, 0x87, 0x05)
   model LegionellaSetupTemp is ReadRegister<temp10>;

   /**70 Delay WTC */
   @appendext(0x02, 0x14, 0x06)
   model WTCDelay is ReadRegister<minutes>;
 
   /**SOL/907_YieldSum_Wh */
   @appendext(0x02, 0x7c, 0x06)
   model YieldSum_Wh_907 is ReadRegister<UIN>;

   /**SOL/907_YieldSum_kWh */
   @appendext(0x02, 0x7d, 0x06)
   model YieldSum_kWh_907 is ReadRegister<UIN>;

   /**SOL/907_YieldSum_MWh */
   @appendext(0x02, 0x7e, 0x06)
   model YieldSum_MWh    is ReadRegister<UIN>;

   /**SOL/906_YieldResetDateYear */
   @appendext(0x02, 0x7f, 0x06)
   model YieldResetDateYear is ReadRegister<UIN>;

   /**SOL/906_YieldResetDateMonth */
   @appendext(0x02, 0x80, 0x06)
   model YieldResetDateMonth is ReadRegister<UIN>;

   /**SOL/906_YieldResetDateDay */
   @appendext(0x02, 0x81, 0x06)
   model YieldResetDateDay is ReadRegister<UIN>;

   /**SOL/908_YieldSum_Wh */
   @appendext(0x02, 0x86, 0x06)
   model YieldSum_Wh_908 is ReadRegister<UIN>;

   /**SOL/908_YieldSum_kWh */
   @appendext(0x02, 0x87, 0x06)
   model YieldSum_kWh_908 is ReadRegister<UIN>;

   /**AE06 */
   @appendext(0x02, 0xaE, 0x06)
   model AE06 is ReadRegister<UIN>;

   /**AF06 */
   @appendext(0x02, 0xaF, 0x06)
   model AF06 is ReadRegister<UIN>;

   /**485 Max Temperature FHC */
   @appendext(0x02, 0x9c, 0x08)
   model FHCMaxTemp is ReadRegister<UIN>;


   /**486 Days Max Temperature FHC */
   @appendext(0x02, 0x9d, 0x08)
   model FHCMaxTempDays is ReadRegister<UIN>;

   /**487 Days Cooling FHC */
   @appendext(0x02, 0x9e, 0x08)
   model FHCCoolingDays is ReadRegister<UIN>;

   /**488 Days Heat-Up BHC */
   @appendext(0x02, 0x9f, 0x08)
   model BHCHeatUpDays is ReadRegister<UIN>;

   /**489 Max Temperature BHC */
   @appendext(0x02, 0xa0, 0x08)
   model BHCMaxTemp is ReadRegister<UIN>;

   /**490 Days Max Temperature BHC */
   @appendext(0x02, 0xa1, 0x08)
   model BHCMaxTempDays is ReadRegister<UIN>;

   /**491 Days Cooling BHC */
   @appendext(0x02, 0xa2, 0x08)
   model BHCCoolingDays is ReadRegister<UIN>;

   /**Room factor-I */
   @appendext(0x02, 0x71, 0x09)
   model RoomFactorI is ReadRegister<UIN>;

   /**R7209 */
   @appendext(0x02, 0x72, 0x09)
   model R7209 is ReadRegister<UIN>;

   /**16 Heating Circuit Type */
   @appendext(0x02, 0x73, 0x09)
   model HCTypeMode is ReadRegister<HCType>;

   /**583 Circ time */
   @appendext(0x02, 0x81, 0x09)
   model LegionellaCirculationTime is ReadRegister<UIN>;

   /**R000A */
   @appendext(0x02, 0x00, 0x0a)
   model R000A is ReadRegister<UIN>;

   /**igted Outside Temperature */
   @appendext(0x02, 0x0c, 0x0a)
   model OutsideWeightedTemp is ReadRegister<outsidetemp>;

   /**Screed day (382) */
   @appendext(0x02, 0x12, 0x0a)
   model FloorDryingDay is ReadRegister<UIN>;

   /**Screed temperature (383) */
   @appendext(0x02, 0x13, 0x0a)
   model FloorDryingTemp is ReadRegister<temp1>;

   /**Room frost protection (173) */
   @appendext(0x02, 0x14, 0x0a)
   model RoomFrostProtectionTemp is ReadRegister<temp10>;

   /**Mixed Outside Temperature */
   @appendext(0x02, 0x1a, 0x0a)
   model OutsideMixedTemp is ReadRegister<outsidetemp>;

   /**Room thermostat (344) */
   @appendext(0x02, 0x1d, 0x0a)
   model RoomThermostatTemp is ReadRegister<temp1>;

   /**FS_EM_W1_Sensor */
   @appendext(0x02, 0x20, 0x0a)
   model FS_EM_W1_Sensor is ReadRegister<UIN>;

   /**H1 Actual KA */
   @appendext(0x02, 0x28, 0x0a)
   model H1StatusKA is ReadRegister<UIN>;

   /**H1Status EM SOL/903_TempKollektor_TKO_T1 */
   @appendext(0x02, 0x29, 0x0a)
   model H1Status is ReadRegister<UIN>;

   /**SOL/903_TempSolU_TSU_T2 */
   @appendext(0x02, 0x2a, 0x0a)
   model TempSolU_TSU_T2 is ReadRegister<temp10>;

   /**SOL/904_TempSolVL_TKV_T3 */
   @appendext(0x02, 0x2b, 0x0a)
   model TempSolVL_TKV_T3 is ReadRegister<temp10>;

   /**SOL/904_TempSolRL_TKR_T4 */
   @appendext(0x02, 0xc0, 0x0a)
   model TempSolRL_TKR_T4 is ReadRegister<temp10>;

   /**PWT Primaire Exch B24 */
   @appendext(0x02, 0x40, 0x0a)
   model PWTPrimTemp is ReadRegister<temp10>;

   /**31 H1 Function   */
   @appendext(0x02, 0x5b, 0x0a)
   model H1Function is ReadRegister<UIN>;

   /**MFA2 Actual */
   @appendext(0x02, 0x8e, 0x0a)
   model MFA2Status is ReadRegister<UIN>;

   /**Error History Id */
   @appendext(0x02, 0x9a, 0x0b)
   model ErrorId is ReadRegister<UIN>;

   /**Error Code */
   @appendext(0x02, 0x9b, 0x0b)
   model ErrorCode is ReadRegister<UIN>;

   /**Error Type */
   @appendext(0x02, 0x9c, 0x0b)
   model ErrorType is ReadRegister<UIN>;

   /**Error Device */
   @appendext(0x02, 0x9d, 0x0b)
   model ErrorDevice is ReadRegister<UIN>;

   /**Error Time Minute */
   @appendext(0x02, 0x9f, 0x0b)
   model ErrorMinute is ReadRegister<minutes>;

   /**rror Time Hour */
   @appendext(0x02, 0xa0, 0x0b)
   model ErrorHour is ReadRegister<hours>;

   /**Error Date Day   */
   @appendext(0x02, 0xa1, 0x0b)
   model ErrorDay is ReadRegister<UIN>;

   /**Error Date Month */
   @appendext(0x02, 0xa2, 0x0b)
   model ErrorMonth is ReadRegister<month>;

   /**Error Date Year */
   @appendext(0x02, 0xa3, 0x0b)
   model ErrorYear is ReadRegister<UIN>;

   /**OB/i30_TempVLKessel */
   @appendext(0x02, 0x1d, 0x0c)
   model TempVLKessel is ReadRegister<outsidetemp>;

   /**R0C1F */
   @appendext(0x02, 0x1f, 0x0c)
   model R0C1F is ReadRegister<UIN>;

   /**R210C */
   @appendext(0x02, 0x21, 0x0c)
   model R210C is ReadRegister<UIN>;

   /**OB/i40_SchaltspielBrenner */
   @appendext(0x02, 0x7d, 0x0c)
   model i40_SchaltspielBrenner is ReadRegister<UIN>;

   /**OB/i41_SchaltspielBrenner */
   @appendext(0x02, 0x7c, 0x0c)
   model i41_SchaltspielBrenner is ReadRegister<UIN>;

   /**OB/i42_BetrStundenBrenner */
   @appendext(0x02, 0x7f, 0x0c)
   model i42_BetrStundenBrenner is ReadRegister<UIN>;

   /**OB/i43_BetrStundenBrenner */
   @appendext(0x02, 0x7e, 0x0c)
   model i43_BetrStundenBrenner is ReadRegister<UIN>;

   /**OB/i46_OelZaehler_1000 */
   @appendext(0x02, 0xd0, 0x0e)
   model i46_OelZaehler_1000 is ReadRegister<UIN>;

   /**OB/i47_OelZaehler */
   @appendext(0x02, 0xd1, 0x0e)
   model i47_OelZaehler is ReadRegister<UIN>;

   /**Current performance */
   @appendext(0x02, 0x50, 0x10)
   model Currentperformance is ReadRegister<UIN>;

   /**Solar Recovery with Legionella */
   @appendext(0x02, 0xf1, 0x13)
   model SolarRecoverWithLegionella is ReadRegister<Values_onoff>;

   /**578 Max Load DHW */
   @appendext(0x02, 0xf2, 0x13)
   model DHWMaxLoad is ReadRegister<percent>;

   /**582 Circ With Legionella */
   @appendext(0x02, 0xf3, 0x13)
   model CircWithLegionella is ReadRegister<Values_onoff>;

   /**UnknownSensor11 */
   @appendext(0x02, 0x04, 0x76)
   model UnknownSensor11 is ReadRegister<UIN>;

   /**UnknownSensor12 */
   @appendext(0x02, 0x04, 0x78)
   model UnknownSensor12 is ReadRegister<UIN>;

   /**522 Output MFA 2 */
   @appendext(0x02, 0xa4, 0xfd)
   model OutputMFA2 is ReadRegister<UIN>;

   /**526 Input N1 */
   @appendext(0x02, 0xc2, 0xfd)
   model InputN1 is ReadRegister<Values_onoff>;

   /**533 Boiler Sequence 1 1 */
   @appendext(0x02, 0xca, 0xfd)
   model BoilerSequence1_1 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 1 2 */
   @appendext(0x02, 0xcb, 0xfd)
   model BoilerSequence1_2 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 1 3 */
   @appendext(0x02, 0xcc, 0xfd)
   model BoilerSequence1_3 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 1 4 */
   @appendext(0x02, 0xcd, 0xfd)
   model BoilerSequence1_4 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 1 5 */
   @appendext(0x02, 0xce, 0xfd)
   model BoilerSequence1_5 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 2 1 */
   @appendext(0x02, 0xd4, 0xfd)
   model BoilerSequence2_1 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 2 2 */
   @appendext(0x02, 0xd5, 0xfd)
   model BoilerSequence2_2 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 2 3 */
   @appendext(0x02, 0xd6, 0xfd)
   model BoilerSequence2_3 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 2 4 */
   @appendext(0x02, 0xd7, 0xfd)
   model BoilerSequence2_4 is ReadRegister<boilerid>;

   /**533 Boiler Sequence 2 5 */
   @appendext(0x02, 0xd8, 0xfd)
   model BoilerSequence2_5 is ReadRegister<boilerid>;

   /**593 SummerTime Start Day */
   @appendext(0x02, 0xde, 0xfd)
   model SummerTimeFromDay is ReadRegister<UIN>;

   /**593 SummerTime Start Month */
   @appendext(0x02, 0xdf, 0xfd)
   model SummerTimeFromMonth is ReadRegister<month>;

   /**594 SummerTime End Day */
   @appendext(0x02, 0xe0, 0xfd)
   model SummerTimeToDay is ReadRegister<UIN>;

   /**594 SummerTime End Month */
   @appendext(0x02, 0xe1, 0xfd)
   model SummerTimeToMonth is ReadRegister<month>;

   /**562 Calorfier Switch Difference */
   @appendext(0x02, 0xe2, 0xfd)
   model CalorfierSwitchDifference is ReadRegister<temp1>;

   /**561 Calorfier exceeded */
   @appendext(0x02, 0xe3, 0xfd)
   model CalorfierExceeded is ReadRegister<temp1>;

   /**553 De-Couple Max */
   @appendext(0x02, 0xe6, 0xfd)
   model DeCoupleMax is ReadRegister<temp1>;

   /**552 De-Couple Min */
   @appendext(0x02, 0xe7, 0xfd)
   model DeCoupleMin is ReadRegister<temp1>;

   /**551 De-Couple Exceeded */
   @appendext(0x02, 0xe8, 0xfd)
   model DeCoupleExceeded is ReadRegister<temp1>;

   /**538 Cont. Temp */
   @appendext(0x02, 0xe9, 0xfd)
   model ContTemp is ReadRegister<temp1>;

   /**536 Modulation Max */
   @appendext(0x02, 0xea, 0xfd)
   model ModulationMax is ReadRegister<percent>;

   //**535 Modulation Min */
   @appendext(0x02, 0xeb, 0xfd)
   model ModulationMin is ReadRegister<percent>;

   /**532 Change Over Time */
   @appendext(0x02, 0xec, 0xfd)
   model ChangeOverTime is ReadRegister<temp1>;

   /**531 Sequence Change Mode */
   @appendext(0x02, 0xed, 0xfd)
   model SequenceChangeMode is ReadRegister<UIN>;

   /**525 Spectial Level */
   @appendext(0x02, 0xee, 0xfd)
   model SpecialLevel is ReadRegister<UIN>;

   /**524 Input H1 */
   @appendext(0x02, 0xef, 0xfd)
   model InputH1 is ReadRegister<UIN>;

   /**VA Status */
   @appendext(0x02, 0xf0, 0xfd)
   model VAStatus is ReadRegister<Values_onoff>;

   /**523 Output VA */
   @appendext(0x02, 0xf1, 0xfd)
   model OutputVA is ReadRegister<Values_onoff>;

   /**MFA 1 Status */
   @appendext(0x02, 0xf2, 0xfd)
   model MFA1Status is ReadRegister<Values_onoff>;

   /**521 Output MFA 1 */
   @appendext(0x02, 0xf3, 0xfd)
   model OutputMFA1 is ReadRegister<UIN>;

   /**581 Legionella Time */
   @appendext(0x02, 0xf4, 0xfd)
   model LegionellaTime is ReadRegister<TTQ>;

   /**5UnknownSensor8 */
   @appendext(0x02, 0xfb, 0xfd)
   model UnknownSensor8 is ReadRegister<UIN>;

   /**Heating Program1 Monday 1 To/From */
   @appendext(0x02, 0x10, 0x14)
   model HCRuntimeProgram1Mo1 is cal;

   /**Heating Program1 Monday 2 To/From */
   @appendext(0x02, 0x11, 0x14)
   model HCRuntimeProgram1Mo2 is cal;

   /**Heating Program1 Monday 3 To/From */
   @appendext(0x02, 0x12, 0x14)
   model HCRuntimeProgram1Mo3 is cal;

   /**Heating Program1 Tuesday 1 To/From */
   @appendext(0x02, 0x20, 0x14)
   model HCRuntimeProgram1Tu1 is cal;

   /**Heating Program1 Tuesday 2 To/From */
   @appendext(0x02, 0x21, 0x14)
   model HCRuntimeProgram1Tu2 is cal;

    /**Heating Program1 Tuesday 3 To/From */
   @appendext(0x02, 0x22, 0x14)
   model HCRuntimeProgram1Tu3 is cal;

   /**Heating Program1 Wednesday 1 To/From */
   @appendext(0x02, 0x30, 0x14)
   model HCRuntimeProgram1We1 is cal;

   /**Heating Program1 Wednesday 2 To/From */
   @appendext(0x02, 0x31, 0x14)
   model HCRuntimeProgram1We2 is cal;

   /**Heating Program1 Wednesday 3 To/From */
   @appendext(0x02, 0x32, 0x14)
   model HCRuntimeProgram1We3 is cal;

   /**Heating Program1 Thursday 1 To/From */
   @appendext(0x02, 0x40, 0x14)
   model HCRuntimeProgram1Th1 is cal;

   /**Heating Program1 Thursday 2 To/From */
   @appendext(0x02, 0x41, 0x14)
   model HCRuntimeProgram1Th2 is cal;

   /**Heating Program1 Thursday 3 To/From */
   @appendext(0x02, 0x42, 0x14)
   model HCRuntimeProgram1Th3 is cal;

   /**Heating Program1 Friday 1 To/From */
   @appendext(0x02, 0x50, 0x14)
   model HCRuntimeProgram1Fr1 is cal;

   /**Heating Program1 Friday 2 To/From */
   @appendext(0x02, 0x51, 0x14)
   model HCRuntimeProgram1Fr2 is cal;

   /**Heating Program1 Friday 3 To/From */
   @appendext(0x02, 0x52, 0x14)
   model HCRuntimeProgram1Fr3 is cal;

   /**Heating Program1 Saturday 1 To/From */
   @appendext(0x02, 0x60, 0x14)
   model HCRuntimeProgram1Sa1 is cal;

   /**Heating Program1 Saturday 2 To/From */
   @appendext(0x02, 0x61, 0x14)
   model HCRuntimeProgram1Sa2 is cal;

   /**Heating Program1 Saturday 3 To/From */
   @appendext(0x02, 0x62, 0x14)
   model HCRuntimeProgram1Sa3 is cal;

   /**Heating Program1 Sunday 1 To/From */
   @appendext(0x02, 0x70, 0x14)
   model HCRuntimeProgram1Su1 is cal;

   /**Heating Program1 Sunday 2 To/From */
   @appendext(0x02, 0x71, 0x14)
   model HCRuntimeProgram1Su2 is cal;

   /**Heating Program1 Sunday 3 To/From */
   @appendext(0x02, 0x72, 0x14)
   model HCRuntimeProgram1Su3 is cal;

   /**Heating Program2 Monday 1 To/From */
   @appendext(0x02, 0x10, 0x15)
   model HCRuntimeProgram2Mo1 is cal;

   /**Heating Program2 Monday 2 To/From */
   @appendext(0x02, 0x11, 0x15)
   model HCRuntimeProgram2Mo2 is cal;

   /**Heating Program2 Monday 3 To/From */
   @appendext(0x02, 0x12, 0x15)
   model HCRuntimeProgram2Mo3 is cal;

   /**Heating Program2 Tuesday 1 To/From */
   @appendext(0x02, 0x20, 0x15)
   model HCRuntimeProgram2Tu1 is cal;

   /**Heating Program2 Tuesday 2 To/From */
   @appendext(0x02, 0x21, 0x15)
   model HCRuntimeProgram2Tu2 is cal;

   /**Heating Program2 Tuesday 3 To/From */
   @appendext(0x02, 0x22, 0x15)
   model HCRuntimeProgram2Tu3 is cal;

   /**Heating Program2 Wednesday 1 To/From */
   @appendext(0x02, 0x30, 0x15)
   model HCRuntimeProgram2We1 is cal;

   /**Heating Program2 Wednesday 2 To/From */
   @appendext(0x02, 0x31, 0x15)
   model HCRuntimeProgram2We2 is cal;

   /**Heating Program2 Wednesday 3 To/From */
   @appendext(0x02, 0x32, 0x15)
   model HCRuntimeProgram2We3 is cal;

   /**Heating Program2 Thursday 1 To/From */
   @appendext(0x02, 0x40, 0x15)
   model HCRuntimeProgram2Th1 is cal;

   /**Heating Program2 Thursday 2 To/From */
   @appendext(0x02, 0x41, 0x15)
   model HCRuntimeProgram2Th2 is cal;

   /**Heating Program2 Thursday 3 To/From */
   @appendext(0x02, 0x42, 0x15)
   model HCRuntimeProgram2Th3 is cal;

   /**Heating Program2 Friday 1 To/From */
   @appendext(0x02, 0x50, 0x15)
   model HCRuntimeProgram2Fr1 is cal;

   /**Heating Program2 Friday 2 To/From */
   @appendext(0x02, 0x51, 0x15)
   model HCRuntimeProgram2Fr2 is cal;

   /**Heating Program2 Friday 3 To/From */ 
   @appendext(0x02, 0x52, 0x15) 
   model HCRuntimeProgram2Fr3 is cal;

   /**Heating Program2 Saturday 1 To/From */
   @appendext(0x02, 0x60, 0x15)
   model HCRuntimeProgram2Sa1 is cal;

   /**Heating Program2 Saturday 2 To/From */
   @appendext(0x02, 0x61, 0x15)
   model HCRuntimeProgram2Sa2 is cal;

   /**Heating Program2 Saturday 3 To/From */
   @appendext(0x02, 0x62, 0x15)
   model HCRuntimeProgram2Sa3 is cal;

   /**Heating Program2 Sunday 1 To/From */
   @appendext(0x02, 0x70, 0x15)
   model HCRuntimeProgram2Su1 is cal;

   /**Heating Program2 Sunday 2 To/From */
   @appendext(0x02, 0x71, 0x15)
   model HCRuntimeProgram2Su2 is cal;

   /**Heating Program2 Sunday 3 To/From */
   @appendext(0x02, 0x72, 0x15)
   model HCRuntimeProgram2Su3 is cal;

   /**Heating Program3 Monday 1 To/From */
   @appendext(0x02, 0x10, 0x16)
   model HCRuntimeProgram3Mo1 is cal;

   /**Heating Program3 Monday 2 To/From */
   @appendext(0x02, 0x11, 0x16)
   model HCRuntimeProgram3Mo2 is cal;

   /**Heating Program3 Monday 3 To/From */
   @appendext(0x02, 0x12, 0x16)
   model HCRuntimeProgram3Mo3 is cal;

   /**Heating Program3 Tuesday 1 To/From */
   @appendext(0x02, 0x20, 0x16)
   model HCRuntimeProgram3Tu1 is cal;

   /**Heating Program3 Tuesday 2 To/From */
   @appendext(0x02, 0x21, 0x16)
   model HCRuntimeProgram3Tu2 is cal;

   /**Heating Program3 Tuesday 3 To/From */
   @appendext(0x02, 0x22, 0x16)
   model HCRuntimeProgram3Tu3 is cal;

   /**Heating Program3 Wednesday 1 To/From */
   @appendext(0x02, 0x30, 0x16)
   model HCRuntimeProgram3We1 is cal;

   /**Heating Program3 Wednesday 2 To/From */
   @appendext(0x02, 0x31, 0x16)
   model HCRuntimeProgram3We2 is cal;

   /**Heating Program3 Wednesday 3 To/From */
   @appendext(0x02, 0x32, 0x16)
   model HCRuntimeProgram3We3 is cal;

   /**Heating Program3 Thursday 1 To/From */
   @appendext(0x02, 0x40, 0x16)
   model HCRuntimeProgram3Th1 is cal;

   /**Heating Program3 Thursday 2 To/From */
   @appendext(0x02, 0x41, 0x16)
   model HCRuntimeProgram3Th2 is cal;

   /**Heating Program3 Thursday 3 To/From */
   @appendext(0x02, 0x42, 0x16)
   model HCRuntimeProgram3Th3 is cal;

   /**Heating Program3 Friday 1 To/From */
   @appendext(0x02, 0x50, 0x16)
   model HCRuntimeProgram3Fr1 is cal;

   /**Heating Program3 Friday 2 To/From */
   @appendext(0x02, 0x51, 0x16)
   model HCRuntimeProgram3Fr2 is cal;

   /**Heating Program3 Friday 3 To/From */
   @appendext(0x02, 0x52, 0x16) 
   model HCRuntimeProgram3Fr3 is cal;

   /**Heating Program3 Saturday 1 To/From */
   @appendext(0x02, 0x60, 0x16)
   model HCRuntimeProgram3Sa1 is cal;

   /**Heating Program3 Saturday 2 To/From */
   @appendext(0x02, 0x61, 0x16)
   model HCRuntimeProgram3Sa2 is cal;

   /**Heating Program3 Saturday 3 To/From */
   @appendext(0x02, 0x62, 0x16)
   model HCRuntimeProgram3Sa3 is cal;

   /**Heating Program3 Sunday 1 To/From */
   @appendext(0x02, 0x70, 0x16)
   model HCRuntimeProgram3Su1 is cal;

   /**Heating Program3 Sunday 2 To/From */
   @appendext(0x02, 0x71, 0x16)
   model HCRuntimeProgram3Su2 is cal;

   /**Heating Program3 Sunday 3 To/From */
   @appendext(0x02, 0x72, 0x16)
   model HCRuntimeProgram3Su3 is cal;

   /**Hot Water Program Monday 1 To/From */
   @appendext(0x02, 0x10, 0x17)
   model DHWRuntimeProgramMo1 is cal;

   /**Hot Water Program Monday 2 To/From */
   @appendext(0x02, 0x11, 0x17)
   model DHWRuntimeProgramMo2 is cal;

   /**Hot Water Program Monday 3 To/From */
   @appendext(0x02, 0x12, 0x17)
   model DHWRuntimeProgramMo3 is cal;

   /**Hot Water Program Tuesday 1 To/From */
   @appendext(0x02, 0x20, 0x17)
   model DHWRuntimeProgramTu1 is cal;

   /**Hot Water Program Tuesday 2 To/From */
   @appendext(0x02, 0x21, 0x17)
   model DHWRuntimeProgramTu2 is cal;

   /**Hot Water Program Tuesday 3 To/From */
   @appendext(0x02, 0x22, 0x17)
   model DHWRuntimeProgramTu3 is cal;

   /**Hot Water Program Wednesday 1 To/From */
   @appendext(0x02, 0x30, 0x17)
   model DHWRuntimeProgramWe1 is cal;

   /**Hot Water Program Wednesday 2 To/From */
   @appendext(0x02, 0x31, 0x17)
   model DHWRuntimeProgramWe2 is cal;

   /**Hot Water Program Wednesday 3 To/From */
   @appendext(0x02, 0x32, 0x17)
   model DHWRuntimeProgramWe3 is cal;

   /**Hot Water Program Thursday 1 To/From */
   @appendext(0x02, 0x40, 0x17)
   model DHWRuntimeProgramTh1 is cal;

   /**Hot Water Program Thursday 2 To/From */
   @appendext(0x02, 0x41, 0x17)
   model DHWRuntimeProgramTh2 is cal;

   /**Hot Water Program Thursday 3 To/From */
   @appendext(0x02, 0x42, 0x17)
   model DHWRuntimeProgramTh3 is cal;

   /**Hot Water Program Friday 1 To/From */
   @appendext(0x02, 0x50, 0x17)
   model DHWRuntimeProgramFr1 is cal;

   /**Hot Water Program Friday 2 To/From */
   @appendext(0x02, 0x51, 0x17)
   model DHWRuntimeProgramFr2 is cal;

   /**Hot Water Program Friday 3 To/From */
   @appendext(0x02, 0x52, 0x17)
   model DHWRuntimeProgramFr3 is cal;

   /**Hot Water Program Saturday 1 To/From */
   @appendext(0x02, 0x60, 0x17)
   model DHWRuntimeProgramSa1 is cal;

   /**Hot Water Program Saturday 2 To/From */
   @appendext(0x02, 0x61, 0x17)
   model DHWRuntimeProgramSa2 is cal;

   /**Hot Water Program Saturday 3 To/From */
   @appendext(0x02, 0x62, 0x17)
   model DHWRuntimeProgramSa3 is cal;

   /**Hot Water Program Sunday 1 To/From */
   @appendext(0x02, 0x70, 0x17)
   model DHWRuntimeProgramSu1 is cal;

   /**Hot Water Program Sunday 2 To/From */
   @appendext(0x02, 0x71, 0x17)
   model DHWRuntimeProgramSu2 is cal;

   /**Hot Water Program Sunday 3 To/From */
   @appendext(0x02, 0x72, 0x17)
   model DHWRuntimeProgramSu3 is cal;

   /**Circulation Program Monday 1 To/From */
   @appendext(0x02, 0x10, 0x1A)
   model CircRuntimeProgramMo1 is cal;

   /**Circulation Program Monday 2 To/From */
   @appendext(0x02, 0x11, 0x1A)
   model CircRuntimeProgramMo2 is cal;

   /**Circulation Program Monday 3 To/From */
   @appendext(0x02, 0x12, 0x1A)
   model CircRuntimeProgramMo3 is cal;

   /**Circulation Program Tuesday 1 To/From */
   @appendext(0x02, 0x20, 0x1A)
   model CircRuntimeProgramTu1 is cal;

   /**Circulation Program Tuesday 2 To/From */
   @appendext(0x02, 0x21, 0x1A)
   model CircRuntimeProgramTu2 is cal;

   /**Circulation Program Tuesday 3 To/From */
   @appendext(0x02, 0x22, 0x1A)
   model CircRuntimeProgramTu3 is cal;

   /**Circulation Program Wednesday 1 To/From */
   @appendext(0x02, 0x30, 0x1A)
   model CircRuntimeProgramWe1 is cal;

   /**Circulation Program Wednesday 2 To/From */
   @appendext(0x02, 0x31, 0x1A)
   model CircRuntimeProgramWe2 is cal;

   /**Circulation Program Wednesday 3 To/From */
   @appendext(0x02, 0x32, 0x1A) 
   model CircRuntimeProgramWe3 is cal;

   /**Circulation Program Thursday 1 To/From */
   @appendext(0x02, 0x40, 0x1A)
   model CircRuntimeProgramTh1 is cal;

   /**Circulation Program Thursday 2 To/From */
   @appendext(0x02, 0x41, 0x1A)
   model CircRuntimeProgramTh2 is cal;

   /**Circulation Program Thursday 3 To/From */
   @appendext(0x02, 0x42, 0x1A)
   model CircRuntimeProgramTh3 is cal;

   /**Circulation Program Friday 1 To/From */
   @appendext(0x02, 0x50, 0x1A)
   model CircRuntimeProgramFr1 is cal;

   /**Circulation Program Friday 2 To/From */
   @appendext(0x02, 0x51, 0x1A)
   model CircRuntimeProgramFr2 is cal;

   /**Circulation Program Friday 3 To/From */
   @appendext(0x02, 0x52, 0x1A)
   model CircRuntimeProgramFr3 is cal;

   /**Circulation Program Saturday 1 To/From */
   @appendext(0x02, 0x60, 0x1A)
   model CircRuntimeProgramSa1 is cal;

   /**Circulation Program Saturday 2 To/From */
   @appendext(0x02, 0x61, 0x1A)
   model CircRuntimeProgramSa2 is cal;

   /**Circulation Program Saturday 3 To/From */
   @appendext(0x02, 0x62, 0x1A)
   model CircRuntimeProgramSa3 is cal;

   /**Circulation Program Sunday 1 To/From */
   @appendext(0x02, 0x70, 0x1A)
   model CircRuntimeProgramSu1 is cal;

   /**Circulation Program Sunday 2 To/From */
   @appendext(0x02, 0x71, 0x1A)
   model CircRuntimeProgramSu2 is cal;

   /**Circulation Program Sunday 3 To/From */
   @appendext(0x02, 0x72, 0x1A)
   model CircRuntimeProgramSu3 is cal;

}