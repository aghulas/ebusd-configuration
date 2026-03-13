import "@ebusd/ebus-typespec";
import "@ebusd/ebus-typespec";
import "./_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

namespace register {

   /**Error Status */
   @ext(0x00, 0x00)
   model BootStatus is WriteRegister<UIN>;

   /**Error Status */
   @ext(0x01, 0x00)
   model ErrorStatus is WriteRegister<UIN>;

   /**Heat demand HK */
   @ext(0x02, 0x00)
   model HeatDemandTemp is WriteRegister<temp10>;
   
   /**Hot water setpoint */
   @ext(0x03, 0x00)
   model DHWSetValue is WriteRegister<temp10>;

   /**pply SetPoint (121) */
   @ext(0x04, 0x00)
   model SupplySetPointTemp is WriteRegister<temp10>;

   /**Normal Room Temperature (112) */
   @ext(0x05, 0x00)
   model RoomNormalTemp is WriteRegister<temp10>;
  
   /**Setback Room Temperature (113) */
   @ext(0x08, 0x00)
   model RoomSetbackTemp is WriteRegister<temp10>;

   /**Unknown Sensor 15 */
   @ext(0x0b, 0x00)
   model UnknownSensor15 is WriteRegister<UIN>;

   /**B1 Outside Sensor Temperature */
   @ext(0x0c, 0x00)
   model OutsideTemp is WriteRegister<outsidetemp10>;

   /**Flow temperature WTC */
   @ext(0x0d, 0x00)
   model SupplyWTCTemp is WriteRegister<temp10>;

   /**B3 DHW Sensor Temperature */
   @ext(0x0e, 0x00)
   model DHWTemp is WriteRegister<temp10>;

   /**B6 Supply Sensor Temperature */
   @ext(0x0f, 0x00)
   model SupplyHCTemp is WriteRegister<temp10>;

   /**Configuration Status */
   @ext(0x10, 0x00)
   model ConfigStatus is WriteRegister<UIN>;

   /**Room Sensor Temperature */
   @ext(0x11, 0x00)
   model RoomTemp is WriteRegister<temp10>;

   /**Room setpoint */
   @ext(0x12, 0x00)
   model RoomSetPointTemp is WriteRegister<temp10>;

   /**Hot water setpoint (176) */
   @ext(0x13, 0x00)
   model DHWSetpoint is WriteRegister<temp10>;

   /**Blended Outside Temperature */
   @ext(0x1a, 0x00)
   model OutsideBlendedTemp is WriteRegister<outsidetemp10>;

   /**WW Operation (343) */
   @ext(0x23, 0x00)
   model WWOperationMode is WriteRegister<DHWOperation>;

   /**Maximum Blocking Time (537) */
   @ext(0x25, 0x00)
   model BlockingTime is WriteRegister<minutes>;

    /*Maximum Supply Temperature (422) */
   @ext(0x28, 0x00)
   model SupplyMaxTemp is WriteRegister<temp10>;

   /** Mixer Parameter (425) */
   @ext(0x2b, 0x00)
   model MixerParameterTemp is WriteRegister<temp10k>;

   /**dulation */
   @ext(0x2c, 0x00)
   model ModulationStatus is WriteRegister<percent>;

   /**576 DHW exceeded */
   @ext(0x2d, 0x00)
   model DHWExceeded is WriteRegister<temp10>;

   /**Mixer Pump */
   @ext(0x52, 0x00)
   model MixerPump is WriteRegister<Values_onoff>;

   /**Mixer Valve Opening */
   @ext(0x56, 0x00)
   model ValveOpening is WriteRegister<Values_onoff>;

   /**Mixer Valve Closing */
   @ext(0x57, 0x00)
   model ValveClosing is WriteRegister<Values_onoff>;

   /**Calorifier Top Temp B20 */
   @ext(0x76, 0x00)
   model ColorifierTopTemp is WriteRegister<temp10>;

   /**Calorifier Bottom Temp B21   */
   @ext(0x78, 0x00)
   model ColorifierBottomTemp is WriteRegister<temp10>;

   /**14 Target value reduction for solar yield   */
   @ext(0x81, 0x00)
   model ReductionSolarYied is WriteRegister<temp10k>;

   /**SOL/905_Durchfluss */
   @ext(0x82, 0x00)
   model Durchfluss is WriteRegister<UIN>;    

   /**SOL/906_YieldSince_Wh */
   @ext(0x87, 0x00)
   model YieldSince_Wh is WriteRegister<UIN>;   

   /**SOL/906_YieldSince_kWh */
   @ext(0x88, 0x00)
   model YieldSince_kWh is WriteRegister<UIN>;   

   /**SOL/906_YieldSince_MWh */
   @ext(0x89, 0x00)
   model YieldSince_MWh is WriteRegister<UIN>;   

   /**Legionella Protection Function (605) */
   @ext(0x01, 0x01)
   model DHWLegionellaDay is WriteRegister<WeekDay2>;

   /**Room Sensor Correction (101) */
   @ext(0x09, 0x01)
   model RoomSensorCorrectionTemp is WriteRegister<temp10k>;

   /**Steepness (175) */
   @ext(0x0e, 0x01)
   model GradientCurve is WriteRegister<gradient10>;

   /**Room Factor-P (508) */
   @ext(0x0f, 0x01)
   model RoomFactorCurve is WriteRegister<UIN>;

   /**Switch-on delay (353) */
   @ext(0x10, 0x01)
   model SwitchOnRuntime is WriteRegister<minutes>;

   /**Boiler MC Boost(424) */
   @ext(0x11, 0x01)
   model BoilerMCBoostTemp is WriteRegister<temp10k>;

   /**Program selector switch position*/
   @ext(0x12, 0x01)
   model ProgramMode is WriteRegister<Program>;

   /**Adaption (507) */
   @ext(0x15, 0x01)
   model AdaptionMode is WriteRegister<Values_onoff>;

   /**mmer/winter changeover temperature (174)   */
   @ext(0x16, 0x01)
   model SummerWinterChangeOverTemp is WriteRegister<outsidetemp>;

   /**Screed function (381) */
   @ext(0x1a, 0x01)
   model FloorDryingMode is WriteRegister<Floordrying>;

   /**Hollyday Start Day */
   @ext(0x1b, 0x01)
   model HolidayRuntimeFromDay is WriteRegister<UIN>;

    /**Hollyday Start Month */
   @ext(0x1c, 0x01)
   model HolidayRuntimeFromMonth is WriteRegister<month>;

   /**Hollyday Start Year */
   @ext(0x1d, 0x01)
   model HolidayRuntimeFromYear is WriteRegister<UIN>;

   /**Hollyday End Day */
   @ext(0x1e, 0x01)
   model HolidayRuntimeToDay is WriteRegister<UIN>;

   /**Hollyday End Month */
   @ext(0x1f, 0x01)
   model HolidayRuntimeToMonth is WriteRegister<month>;

   /**Hollyday End Year */
   @ext(0x20, 0x01)
   model HolidayRuntimeToYear is WriteRegister<UIN>;

   /**SystemDate WeekDay */
   @ext(0x21, 0x01)
   model SystemDateWeekday is WriteRegister<WeekDay>;

   /**SystemDate Day */
   @ext(0x22, 0x01)
   model SystemDateDay is WriteRegister<UIN>;

   /**SystemDate Month */
   @ext(0x23, 0x01)
   model SystemDateMonth is WriteRegister<month>;

   /**SystemDate Year */
   @ext(0x24, 0x01)
   model SystemDateYear is WriteRegister<UIN>;

   /**SystemTime Hour */
   @ext(0x25, 0x01)
   model SystemTimeHour is WriteRegister<hours>;

   /**SystemTime Minute */
   @ext(0x26, 0x01)
   model SystemTimeMinute is WriteRegister<minutes>;

   /**SystemTime Hour */
   @ext(0x27, 0x01)
   model SystemTimeSecond is WriteRegister<seconds>;

   /**Construction method (371) */
   @ext(0x28, 0x01)
   model TypeOfConstructionMode is WriteRegister<Constructiontype>;

   /**15 Normal SPL-Set */
   @ext(0x29, 0x01)
   model NormalSplSetTemp is WriteRegister<temp10>;

   /**16 Reduced SPL-Set */
   @ext(0x2a, 0x01)
   model ReducedSplSetTemp is WriteRegister<temp10>;

   /**Minimum Supply Temperature (421) */
   @ext(0x2b, 0x01)
   model SupplyMinTemp is WriteRegister<temp10>;

   /**Holiday temperature (183) */
   @ext(0x2d, 0x01)
   model HolidayTemp is WriteRegister<TempReduced>;

   /**WTC delay(430) */
   @ext(0x2e, 0x01)
   model WtcDelayRuntime is WriteRegister<minutes>;

   /**Max Pump speed (358) */
   @ext(0x2f, 0x01)
   model PumpMaxSpeed is WriteRegister<percent>;

   /**Min Pump speed (359) */
   @ext(0x30, 0x01)
   model PumpMinSpeed is WriteRegister<percent>;

   /**VSD variable (429) */
   @ext(0x31, 0x01)
   model PumpVSDvariable is WriteRegister<PumpVariationSpeed>;

   /**ReductTemp (501) */
   @ext(0x32, 0x01)
   model ReductTemp is WriteRegister<TempReduced>;

   /**Hot water Min (177) */
   @ext(0x33, 0x01)
   model DHWMinTemp is WriteRegister<outsidetemp>;

   /**DHW maximum Temp (601) */
   @ext(0x34, 0x01)
   model DHWMaxTemp is WriteRegister<temp10>;

   /**WW-Mode (361) */
   @ext(0x35, 0x01)
   model DHWMode is WriteRegister<Dhw>;

   /**WW operation (360) */
   @ext(0x37, 0x01)
   model DHWOperationMode is WriteRegister<DHWOperation>;

   /**R3B01 */
   @ext(0x3b, 0x01)
   model R3B01 is WriteRegister<UIN>;

   /**42 Holiday Temperature Level*/
   @ext(0x3d, 0x01)
   model HolidayTempLevel is WriteRegister<temp10>;

   /**575 DHW Switch Diff */
   @ext(0x40, 0x01)
   model DHWSwitchDiff is WriteRegister<temp10k>;

   /**Control Variation (318) */
   @ext(0x41, 0x01)
   model ControlVariationMode is WriteRegister<CVariation>;

   /**OB/i31_TempAbgas */
   @ext(0x45, 0x01)
   model TempAbgas is WriteRegister<outsidetemp>;

   /**577 WW Load Time */
   @ext(0x80, 0x01)
   model DHWLoadTime is WriteRegister<minutes>;

   /**574 DHW-Max */
   @ext(0x81, 0x01)
   model DHWMaxTemp2 is WriteRegister<temp10>;

   /**Ka Version */
   @ext(0x8f, 0x01)
   model KaVersion is WriteRegister<SIN>;

   /**Version Major */
   @ext(0x99, 0x01)
   model VersionMajor is WriteRegister<UIN>;

   /**Version Minor */
   @ext(0x9a, 0x01)
   model VersionMinor is WriteRegister<UIN>;

   /**H1 Control Voltage */
   @ext(0xa9, 0x01)
   model H1ControlVoltage is WriteRegister<UIN>;

   /**H1 Control Current */
   @ext(0xaA, 0x01)
   model H1ControlCurrent is WriteRegister<UIN>;

   /**483 Screed Start Temperature */
   @ext(0xbb, 0x01)
   model FHCMinTemp is WriteRegister<temp10>;

   /**484 Tag Min Temp Fhz */
   @ext(0xbc, 0x01)
   model FHCMinTempDays is WriteRegister<UIN>;

   /**SOL/905_Leistung */
   @ext(0xdb, 0x01)
   model Leistung is WriteRegister<UIN>;

   /**Reset Error Memory */
   @ext(0x7a, 0x02)
   model ResetErrorMemory is WriteRegister<UIN>;

   /**FS_EM_W4_Sensor */
   @ext(0x85, 0x02)
   model FS_EM_W4_Sensor is WriteRegister<UIN>;


   /**573 DHW Min Temp */
   @ext(0x8a, 0x02)
   model DHWMinTemp2 is WriteRegister<temp10>;


   /**540 I Regler */
   @ext(0x9e, 0x02)
   model RegulationI is WriteRegister<UIN>;

   /**539 1/P Regler */
   @ext(0x9f, 0x02)
   model RegulationP is WriteRegister<UIN>;

   /**OB/i45_LetzteWartung */
   @ext(0xbc, 0x02)
   model i45_LetzteWartung is WriteRegister<UIN>;

   /**82 Frost Protection Limit */
   @ext(0xbe, 0x02)
   model FrostProtectionLimitTemp is WriteRegister<temp10>;

   /**SOL/902_StatusDTR */
   @ext(0xf1, 0x02)
   model StatusDTR is WriteRegister<UIN>;

   /**FS_EM_R2_Sensor */
   @ext(0x59, 0x03)
   model FS_EM_R2_Sensor is WriteRegister<UIN>;

   /**B3Sensor */
   @ext(0xe9, 0x04)
   model B3Sensor is WriteRegister<temp10>;

   /**580 AntiLeg Setp Temperature */
   @ext(0x87, 0x05)
   model LegionellaSetupTemp is WriteRegister<temp10>;

   /**70 Delay WTC */
   @ext(0x14, 0x06)
   model WTCDelay is WriteRegister<minutes>;
 
   /**SOL/907_YieldSum_Wh */
   @ext(0x7c, 0x06)
   model YieldSum_Wh_907 is WriteRegister<UIN>;

   /**SOL/907_YieldSum_kWh */
   @ext(0x7d, 0x06)
   model YieldSum_kWh_907 is WriteRegister<UIN>;

   /**SOL/907_YieldSum_MWh */
   @ext(0x7e, 0x06)
   model YieldSum_MWh    is WriteRegister<UIN>;

   /**SOL/906_YieldResetDateYear */
   @ext(0x7f, 0x06)
   model YieldResetDateYear is WriteRegister<UIN>;

   /**SOL/906_YieldResetDateMonth */
   @ext(0x80, 0x06)
   model YieldResetDateMonth is WriteRegister<UIN>;

   /**SOL/906_YieldResetDateDay */
   @ext(0x81, 0x06)
   model YieldResetDateDay is WriteRegister<UIN>;

   /**SOL/908_YieldSum_Wh */
   @ext(0x86, 0x06)
   model YieldSum_Wh_908 is WriteRegister<UIN>;

   /**SOL/908_YieldSum_kWh */
   @ext(0x87, 0x06)
   model YieldSum_kWh_908 is WriteRegister<UIN>;

   /**AE06 */
   @ext(0xaE, 0x06)
   model AE06 is WriteRegister<UIN>;

   /**AF06 */
   @ext(0xaF, 0x06)
   model AF06 is WriteRegister<UIN>;

   /**485 Max Temperature FHC */
   @ext(0x9c, 0x08)
   model FHCMaxTemp is WriteRegister<UIN>;


   /**486 Days Max Temperature FHC */
   @ext(0x9d, 0x08)
   model FHCMaxTempDays is WriteRegister<UIN>;

   /**487 Days Cooling FHC */
   @ext(0x9e, 0x08)
   model FHCCoolingDays is WriteRegister<UIN>;

   /**488 Days Heat-Up BHC */
   @ext(0x9f, 0x08)
   model BHCHeatUpDays is WriteRegister<UIN>;

   /**489 Max Temperature BHC */
   @ext(0xa0, 0x08)
   model BHCMaxTemp is WriteRegister<UIN>;

   /**490 Days Max Temperature BHC */
   @ext(0xa1, 0x08)
   model BHCMaxTempDays is WriteRegister<UIN>;

   /**491 Days Cooling BHC */
   @ext(0xa2, 0x08)
   model BHCCoolingDays is WriteRegister<UIN>;

   /**Room factor-I */
   @ext(0x71, 0x09)
   model RoomFactorI is WriteRegister<UIN>;

   /**R7209 */
   @ext(0x72, 0x09)
   model R7209 is WriteRegister<UIN>;

   /**16 Heating Circuit Type */
   @ext(0x73, 0x09)
   model HCTypeMode is WriteRegister<HCType>;

   /**583 Circ time */
   @ext(0x81, 0x09)
   model LegionellaCirculationTime is WriteRegister<UIN>;

   /**R000A */
   @ext(0x00, 0x0a)
   model R000A is WriteRegister<UIN>;

   /**igted Outside Temperature */
   @ext(0x0c, 0x0a)
   model OutsideWeightedTemp is WriteRegister<outsidetemp>;

   /**Screed day (382) */
   @ext(0x12, 0x0a)
   model FloorDryingDay is WriteRegister<UIN>;

   /**Screed temperature (383) */
   @ext(0x13, 0x0a)
   model FloorDryingTemp is WriteRegister<temp1>;

   /**Room frost protection (173) */
   @ext(0x14, 0x0a)
   model RoomFrostProtectionTemp is WriteRegister<temp10>;

   /**Mixed Outside Temperature */
   @ext(0x1a, 0x0a)
   model OutsideMixedTemp is WriteRegister<outsidetemp>;

   /**Room thermostat (344) */
   @ext(0x1d, 0x0a)
   model RoomThermostatTemp is WriteRegister<temp1>;

   /**FS_EM_W1_Sensor */
   @ext(0x20, 0x0a)
   model FS_EM_W1_Sensor is WriteRegister<UIN>;

   /**H1 Actual KA */
   @ext(0x28, 0x0a)
   model H1StatusKA is WriteRegister<UIN>;

   /**H1Status EM SOL/903_TempKollektor_TKO_T1 */
   @ext(0x29, 0x0a)
   model H1Status is WriteRegister<UIN>;

   /**SOL/903_TempSolU_TSU_T2 */
   @ext(0x2a, 0x0a)
   model TempSolU_TSU_T2 is WriteRegister<temp10>;

   /**SOL/904_TempSolVL_TKV_T3 */
   @ext(0x2b, 0x0a)
   model TempSolVL_TKV_T3 is WriteRegister<temp10>;

   /**SOL/904_TempSolRL_TKR_T4 */
   @ext(0xc0, 0x0a)
   model TempSolRL_TKR_T4 is WriteRegister<temp10>;

   /**PWT Primaire Exch B24 */
   @ext(0x40, 0x0a)
   model PWTPrimTemp is WriteRegister<temp10>;

   /**31 H1 Function   */
   @ext(0x5b, 0x0a)
   model H1Function is WriteRegister<UIN>;

   /**MFA2 Actual */
   @ext(0x8e, 0x0a)
   model MFA2Status is WriteRegister<UIN>;

   /**Error History Id */
   @ext(0x9a, 0x0b)
   model ErrorId is WriteRegister<UIN>;

   /**Error Code */
   @ext(0x9b, 0x0b)
   model ErrorCode is WriteRegister<UIN>;

   /**Error Type */
   @ext(0x9c, 0x0b)
   model ErrorType is WriteRegister<UIN>;

   /**Error Device */
   @ext(0x9d, 0x0b)
   model ErrorDevice is WriteRegister<UIN>;

   /**Error Time Minute */
   @ext(0x9f, 0x0b)
   model ErrorMinute is WriteRegister<minutes>;

   /**rror Time Hour */
   @ext(0xa0, 0x0b)
   model ErrorHour is WriteRegister<hours>;

   /**Error Date Day   */
   @ext(0xa1, 0x0b)
   model ErrorDay is WriteRegister<UIN>;

   /**Error Date Month */
   @ext(0xa2, 0x0b)
   model ErrorMonth is WriteRegister<month>;

   /**Error Date Year */
   @ext(0xa3, 0x0b)
   model ErrorYear is WriteRegister<UIN>;

   /**OB/i30_TempVLKessel */
   @ext(0x1d, 0x0c)
   model TempVLKessel is WriteRegister<outsidetemp>;

   /**R0C1F */
   @ext(0x1f, 0x0c)
   model R0C1F is WriteRegister<UIN>;

   /**R210C */
   @ext(0x21, 0x0c)
   model R210C is WriteRegister<UIN>;

   /**OB/i40_SchaltspielBrenner */
   @ext(0x7d, 0x0c)
   model i40_SchaltspielBrenner is WriteRegister<UIN>;

   /**OB/i41_SchaltspielBrenner */
   @ext(0x7c, 0x0c)
   model i41_SchaltspielBrenner is WriteRegister<UIN>;

   /**OB/i42_BetrStundenBrenner */
   @ext(0x7f, 0x0c)
   model i42_BetrStundenBrenner is WriteRegister<UIN>;

   /**OB/i43_BetrStundenBrenner */
   @ext(0x7e, 0x0c)
   model i43_BetrStundenBrenner is WriteRegister<UIN>;

   /**OB/i46_OelZaehler_1000 */
   @ext(0xd0, 0x0e)
   model i46_OelZaehler_1000 is WriteRegister<UIN>;

   /**OB/i47_OelZaehler */
   @ext(0xd1, 0x0e)
   model i47_OelZaehler is WriteRegister<UIN>;

   /**Current performance */
   @ext(0x50, 0x10)
   model Currentperformance is WriteRegister<UIN>;

   /**Solar Recovery with Legionella */
   @ext(0xf1, 0x13)
   model SolarRecoverWithLegionella is WriteRegister<Values_onoff>;

   /**578 Max Load DHW */
   @ext(0xf2, 0x13)
   model DHWMaxLoad is WriteRegister<percent>;

   /**582 Circ With Legionella */
   @ext(0xf3, 0x13)
   model CircWithLegionella is WriteRegister<Values_onoff>;

   /**UnknownSensor11 */
   @ext(0x04, 0x76)
   model UnknownSensor11 is WriteRegister<UIN>;

   /**UnknownSensor12 */
   @ext(0x04, 0x78)
   model UnknownSensor12 is WriteRegister<UIN>;

   /**522 Output MFA 2 */
   @ext(0xa4, 0xfd)
   model OutputMFA2 is WriteRegister<UIN>;

   /**526 Input N1 */
   @ext(0xc2, 0xfd)
   model InputN1 is WriteRegister<Values_onoff>;

   /**533 Boiler Sequence 1 1 */
   @ext(0xca, 0xfd)
   model BoilerSequence1_1 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 1 2 */
   @ext(0xcb, 0xfd)
   model BoilerSequence1_2 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 1 3 */
   @ext(0xcc, 0xfd)
   model BoilerSequence1_3 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 1 4 */
   @ext(0xcd, 0xfd)
   model BoilerSequence1_4 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 1 5 */
   @ext(0xce, 0xfd)
   model BoilerSequence1_5 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 2 1 */
   @ext(0xd4, 0xfd)
   model BoilerSequence2_1 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 2 2 */
   @ext(0xd5, 0xfd)
   model BoilerSequence2_2 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 2 3 */
   @ext(0xd6, 0xfd)
   model BoilerSequence2_3 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 2 4 */
   @ext(0xd7, 0xfd)
   model BoilerSequence2_4 is WriteRegister<boilerid>;

   /**533 Boiler Sequence 2 5 */
   @ext(0xd8, 0xfd)
   model BoilerSequence2_5 is WriteRegister<boilerid>;

   /**593 SummerTime Start Day */
   @ext(0xde, 0xfd)
   model SummerTimeFromDay is WriteRegister<UIN>;

   /**593 SummerTime Start Month */
   @ext(0xdf, 0xfd)
   model SummerTimeFromMonth is WriteRegister<month>;

   /**594 SummerTime End Day */
   @ext(0xe0, 0xfd)
   model SummerTimeToDay is WriteRegister<UIN>;

   /**594 SummerTime End Month */
   @ext(0xe1, 0xfd)
   model SummerTimeToMonth is WriteRegister<month>;

   /**562 Calorfier Switch Difference */
   @ext(0xe2, 0xfd)
   model CalorfierSwitchDifference is WriteRegister<temp1>;

   /**561 Calorfier exceeded */
   @ext(0xe3, 0xfd)
   model CalorfierExceeded is WriteRegister<temp1>;

   /**553 De-Couple Max */
   @ext(0xe6, 0xfd)
   model DeCoupleMax is WriteRegister<temp1>;

   /**552 De-Couple Min */
   @ext(0xe7, 0xfd)
   model DeCoupleMin is WriteRegister<temp1>;

   /**551 De-Couple Exceeded */
   @ext(0xe8, 0xfd)
   model DeCoupleExceeded is WriteRegister<temp1>;

   /**538 Cont. Temp */
   @ext(0xe9, 0xfd)
   model ContTemp is WriteRegister<temp1>;

   /**536 Modulation Max */
   @ext(0xea, 0xfd)
   model ModulationMax is WriteRegister<percent>;

   //**535 Modulation Min */
   @ext(0xeb, 0xfd)
   model ModulationMin is WriteRegister<percent>;

   /**532 Change Over Time */
   @ext(0xec, 0xfd)
   model ChangeOverTime is WriteRegister<temp1>;

   /**531 Sequence Change Mode */
   @ext(0xed, 0xfd)
   model SequenceChangeMode is WriteRegister<UIN>;

   /**525 Spectial Level */
   @ext(0xee, 0xfd)
   model SpecialLevel is WriteRegister<UIN>;

   /**524 Input H1 */
   @ext(0xef, 0xfd)
   model InputH1 is WriteRegister<UIN>;

   /**VA Status */
   @ext(0xf0, 0xfd)
   model VAStatus is WriteRegister<Values_onoff>;

   /**523 Output VA */
   @ext(0xf1, 0xfd)
   model OutputVA is WriteRegister<Values_onoff>;

   /**MFA 1 Status */
   @ext(0xf2, 0xfd)
   model MFA1Status is WriteRegister<Values_onoff>;

   /**521 Output MFA 1 */
   @ext(0xf3, 0xfd)
   model OutputMFA1 is WriteRegister<UIN>;

   /**581 Legionella Time */
   @ext(0xf4, 0xfd)
   model LegionellaTime is WriteRegister<TTQ>;

   /**5UnknownSensor8 */
   @ext(0xfb, 0xfd)
   model UnknownSensor8 is WriteRegister<UIN>;

   /**Heating Program1 Monday 1 To/From */
   @ext(0x10, 0x14)
   model HCRuntimeProgram1Mo1 is cal;

   /**Heating Program1 Monday 2 To/From */
   @ext(0x11, 0x14)
   model HCRuntimeProgram1Mo2 is cal;

   /**Heating Program1 Monday 3 To/From */
   @ext(0x12, 0x14)
   model HCRuntimeProgram1Mo3 is cal;

   /**Heating Program1 Tuesday 1 To/From */
   @ext(0x20, 0x14)
   model HCRuntimeProgram1Tu1 is cal;

   /**Heating Program1 Tuesday 2 To/From */
   @ext(0x21, 0x14)
   model HCRuntimeProgram1Tu2 is cal;

    /**Heating Program1 Tuesday 3 To/From */
   @ext(0x22, 0x14)
   model HCRuntimeProgram1Tu3 is cal;

   /**Heating Program1 Wednesday 1 To/From */
   @ext(0x30, 0x14)
   model HCRuntimeProgram1We1 is cal;

   /**Heating Program1 Wednesday 2 To/From */
   @ext(0x31, 0x14)
   model HCRuntimeProgram1We2 is cal;

   /**Heating Program1 Wednesday 3 To/From */
   @ext(0x32, 0x14)
   model HCRuntimeProgram1We3 is cal;

   /**Heating Program1 Thursday 1 To/From */
   @ext(0x40, 0x14)
   model HCRuntimeProgram1Th1 is cal;

   /**Heating Program1 Thursday 2 To/From */
   @ext(0x41, 0x14)
   model HCRuntimeProgram1Th2 is cal;

   /**Heating Program1 Thursday 3 To/From */
   @ext(0x42, 0x14)
   model HCRuntimeProgram1Th3 is cal;

   /**Heating Program1 Friday 1 To/From */
   @ext(0x50, 0x14)
   model HCRuntimeProgram1Fr1 is cal;

   /**Heating Program1 Friday 2 To/From */
   @ext(0x51, 0x14)
   model HCRuntimeProgram1Fr2 is cal;

   /**Heating Program1 Friday 3 To/From */
   @ext(0x52, 0x14)
   model HCRuntimeProgram1Fr3 is cal;

   /**Heating Program1 Saturday 1 To/From */
   @ext(0x60, 0x14)
   model HCRuntimeProgram1Sa1 is cal;

   /**Heating Program1 Saturday 2 To/From */
   @ext(0x61, 0x14)
   model HCRuntimeProgram1Sa2 is cal;

   /**Heating Program1 Saturday 3 To/From */
   @ext(0x62, 0x14)
   model HCRuntimeProgram1Sa3 is cal;

   /**Heating Program1 Sunday 1 To/From */
   @ext(0x70, 0x14)
   model HCRuntimeProgram1Su1 is cal;

   /**Heating Program1 Sunday 2 To/From */
   @ext(0x71, 0x14)
   model HCRuntimeProgram1Su2 is cal;

   /**Heating Program1 Sunday 3 To/From */
   @ext(0x72, 0x14)
   model HCRuntimeProgram1Su3 is cal;

   /**Heating Program2 Monday 1 To/From */
   @ext(0x10, 0x15)
   model HCRuntimeProgram2Mo1 is cal;

   /**Heating Program2 Monday 2 To/From */
   @ext(0x11, 0x15)
   model HCRuntimeProgram2Mo2 is cal;

   /**Heating Program2 Monday 3 To/From */
   @ext(0x12, 0x15)
   model HCRuntimeProgram2Mo3 is cal;

   /**Heating Program2 Tuesday 1 To/From */
   @ext(0x20, 0x15)
   model HCRuntimeProgram2Tu1 is cal;

   /**Heating Program2 Tuesday 2 To/From */
   @ext(0x21, 0x15)
   model HCRuntimeProgram2Tu2 is cal;

   /**Heating Program2 Tuesday 3 To/From */
   @ext(0x22, 0x15)
   model HCRuntimeProgram2Tu3 is cal;

   /**Heating Program2 Wednesday 1 To/From */
   @ext(0x30, 0x15)
   model HCRuntimeProgram2We1 is cal;

   /**Heating Program2 Wednesday 2 To/From */
   @ext(0x31, 0x15)
   model HCRuntimeProgram2We2 is cal;

   /**Heating Program2 Wednesday 3 To/From */
   @ext(0x32, 0x15)
   model HCRuntimeProgram2We3 is cal;

   /**Heating Program2 Thursday 1 To/From */
   @ext(0x40, 0x15)
   model HCRuntimeProgram2Th1 is cal;

   /**Heating Program2 Thursday 2 To/From */
   @ext(0x41, 0x15)
   model HCRuntimeProgram2Th2 is cal;

   /**Heating Program2 Thursday 3 To/From */
   @ext(0x42, 0x15)
   model HCRuntimeProgram2Th3 is cal;

   /**Heating Program2 Friday 1 To/From */
   @ext(0x50, 0x15)
   model HCRuntimeProgram2Fr1 is cal;

   /**Heating Program2 Friday 2 To/From */
   @ext(0x51, 0x15)
   model HCRuntimeProgram2Fr2 is cal;

   /**Heating Program2 Friday 3 To/From */ 
   @ext(0x52, 0x15) 
   model HCRuntimeProgram2Fr3 is cal;

   /**Heating Program2 Saturday 1 To/From */
   @ext(0x60, 0x15)
   model HCRuntimeProgram2Sa1 is cal;

   /**Heating Program2 Saturday 2 To/From */
   @ext(0x61, 0x15)
   model HCRuntimeProgram2Sa2 is cal;

   /**Heating Program2 Saturday 3 To/From */
   @ext(0x62, 0x15)
   model HCRuntimeProgram2Sa3 is cal;

   /**Heating Program2 Sunday 1 To/From */
   @ext(0x70, 0x15)
   model HCRuntimeProgram2Su1 is cal;

   /**Heating Program2 Sunday 2 To/From */
   @ext(0x71, 0x15)
   model HCRuntimeProgram2Su2 is cal;

   /**Heating Program2 Sunday 3 To/From */
   @ext(0x72, 0x15)
   model HCRuntimeProgram2Su3 is cal;

   /**Heating Program3 Monday 1 To/From */
   @ext(0x10, 0x16)
   model HCRuntimeProgram3Mo1 is cal;

   /**Heating Program3 Monday 2 To/From */
   @ext(0x11, 0x16)
   model HCRuntimeProgram3Mo2 is cal;

   /**Heating Program3 Monday 3 To/From */
   @ext(0x12, 0x16)
   model HCRuntimeProgram3Mo3 is cal;

   /**Heating Program3 Tuesday 1 To/From */
   @ext(0x20, 0x16)
   model HCRuntimeProgram3Tu1 is cal;

   /**Heating Program3 Tuesday 2 To/From */
   @ext(0x21, 0x16)
   model HCRuntimeProgram3Tu2 is cal;

   /**Heating Program3 Tuesday 3 To/From */
   @ext(0x22, 0x16)
   model HCRuntimeProgram3Tu3 is cal;

   /**Heating Program3 Wednesday 1 To/From */
   @ext(0x30, 0x16)
   model HCRuntimeProgram3We1 is cal;

   /**Heating Program3 Wednesday 2 To/From */
   @ext(0x31, 0x16)
   model HCRuntimeProgram3We2 is cal;

   /**Heating Program3 Wednesday 3 To/From */
   @ext(0x32, 0x16)
   model HCRuntimeProgram3We3 is cal;

   /**Heating Program3 Thursday 1 To/From */
   @ext(0x40, 0x16)
   model HCRuntimeProgram3Th1 is cal;

   /**Heating Program3 Thursday 2 To/From */
   @ext(0x41, 0x16)
   model HCRuntimeProgram3Th2 is cal;

   /**Heating Program3 Thursday 3 To/From */
   @ext(0x42, 0x16)
   model HCRuntimeProgram3Th3 is cal;

   /**Heating Program3 Friday 1 To/From */
   @ext(0x50, 0x16)
   model HCRuntimeProgram3Fr1 is cal;

   /**Heating Program3 Friday 2 To/From */
   @ext(0x51, 0x16)
   model HCRuntimeProgram3Fr2 is cal;

   /**Heating Program3 Friday 3 To/From */
   @ext(0x52, 0x16) 
   model HCRuntimeProgram3Fr3 is cal;

   /**Heating Program3 Saturday 1 To/From */
   @ext(0x60, 0x16)
   model HCRuntimeProgram3Sa1 is cal;

   /**Heating Program3 Saturday 2 To/From */
   @ext(0x61, 0x16)
   model HCRuntimeProgram3Sa2 is cal;

   /**Heating Program3 Saturday 3 To/From */
   @ext(0x62, 0x16)
   model HCRuntimeProgram3Sa3 is cal;

   /**Heating Program3 Sunday 1 To/From */
   @ext(0x70, 0x16)
   model HCRuntimeProgram3Su1 is cal;

   /**Heating Program3 Sunday 2 To/From */
   @ext(0x71, 0x16)
   model HCRuntimeProgram3Su2 is cal;

   /**Heating Program3 Sunday 3 To/From */
   @ext(0x72, 0x16)
   model HCRuntimeProgram3Su3 is cal;

   /**Hot Water Program Monday 1 To/From */
   @ext(0x10, 0x17)
   model DHWRuntimeProgramMo1 is cal;

   /**Hot Water Program Monday 2 To/From */
   @ext(0x11, 0x17)
   model DHWRuntimeProgramMo2 is cal;

   /**Hot Water Program Monday 3 To/From */
   @ext(0x12, 0x17)
   model DHWRuntimeProgramMo3 is cal;

   /**Hot Water Program Tuesday 1 To/From */
   @ext(0x20, 0x17)
   model DHWRuntimeProgramTu1 is cal;

   /**Hot Water Program Tuesday 2 To/From */
   @ext(0x21, 0x17)
   model DHWRuntimeProgramTu2 is cal;

   /**Hot Water Program Tuesday 3 To/From */
   @ext(0x22, 0x17)
   model DHWRuntimeProgramTu3 is cal;

   /**Hot Water Program Wednesday 1 To/From */
   @ext(0x30, 0x17)
   model DHWRuntimeProgramWe1 is cal;

   /**Hot Water Program Wednesday 2 To/From */
   @ext(0x31, 0x17)
   model DHWRuntimeProgramWe2 is cal;

   /**Hot Water Program Wednesday 3 To/From */
   @ext(0x32, 0x17)
   model DHWRuntimeProgramWe3 is cal;

   /**Hot Water Program Thursday 1 To/From */
   @ext(0x40, 0x17)
   model DHWRuntimeProgramTh1 is cal;

   /**Hot Water Program Thursday 2 To/From */
   @ext(0x41, 0x17)
   model DHWRuntimeProgramTh2 is cal;

   /**Hot Water Program Thursday 3 To/From */
   @ext(0x42, 0x17)
   model DHWRuntimeProgramTh3 is cal;

   /**Hot Water Program Friday 1 To/From */
   @ext(0x50, 0x17)
   model DHWRuntimeProgramFr1 is cal;

   /**Hot Water Program Friday 2 To/From */
   @ext(0x51, 0x17)
   model DHWRuntimeProgramFr2 is cal;

   /**Hot Water Program Friday 3 To/From */
   @ext(0x52, 0x17)
   model DHWRuntimeProgramFr3 is cal;

   /**Hot Water Program Saturday 1 To/From */
   @ext(0x60, 0x17)
   model DHWRuntimeProgramSa1 is cal;

   /**Hot Water Program Saturday 2 To/From */
   @ext(0x61, 0x17)
   model DHWRuntimeProgramSa2 is cal;

   /**Hot Water Program Saturday 3 To/From */
   @ext(0x62, 0x17)
   model DHWRuntimeProgramSa3 is cal;

   /**Hot Water Program Sunday 1 To/From */
   @ext(0x70, 0x17)
   model DHWRuntimeProgramSu1 is cal;

   /**Hot Water Program Sunday 2 To/From */
   @ext(0x71, 0x17)
   model DHWRuntimeProgramSu2 is cal;

   /**Hot Water Program Sunday 3 To/From */
   @ext(0x72, 0x17)
   model DHWRuntimeProgramSu3 is cal;

   /**Circulation Program Monday 1 To/From */
   @ext(0x10, 0x1A)
   model CircRuntimeProgramMo1 is cal;

   /**Circulation Program Monday 2 To/From */
   @ext(0x11, 0x1A)
   model CircRuntimeProgramMo2 is cal;

   /**Circulation Program Monday 3 To/From */
   @ext(0x12, 0x1A)
   model CircRuntimeProgramMo3 is cal;

   /**Circulation Program Tuesday 1 To/From */
   @ext(0x20, 0x1A)
   model CircRuntimeProgramTu1 is cal;

   /**Circulation Program Tuesday 2 To/From */
   @ext(0x21, 0x1A)
   model CircRuntimeProgramTu2 is cal;

   /**Circulation Program Tuesday 3 To/From */
   @ext(0x22, 0x1A)
   model CircRuntimeProgramTu3 is cal;

   /**Circulation Program Wednesday 1 To/From */
   @ext(0x30, 0x1A)
   model CircRuntimeProgramWe1 is cal;

   /**Circulation Program Wednesday 2 To/From */
   @ext(0x31, 0x1A)
   model CircRuntimeProgramWe2 is cal;

   /**Circulation Program Wednesday 3 To/From */
   @ext(0x32, 0x1A) 
   model CircRuntimeProgramWe3 is cal;

   /**Circulation Program Thursday 1 To/From */
   @ext(0x40, 0x1A)
   model CircRuntimeProgramTh1 is cal;

   /**Circulation Program Thursday 2 To/From */
   @ext(0x41, 0x1A)
   model CircRuntimeProgramTh2 is cal;

   /**Circulation Program Thursday 3 To/From */
   @ext(0x42, 0x1A)
   model CircRuntimeProgramTh3 is cal;

   /**Circulation Program Friday 1 To/From */
   @ext(0x50, 0x1A)
   model CircRuntimeProgramFr1 is cal;

   /**Circulation Program Friday 2 To/From */
   @ext(0x51, 0x1A)
   model CircRuntimeProgramFr2 is cal;

   /**Circulation Program Friday 3 To/From */
   @ext(0x52, 0x1A)
   model CircRuntimeProgramFr3 is cal;

   /**Circulation Program Saturday 1 To/From */
   @ext(0x60, 0x1A)
   model CircRuntimeProgramSa1 is cal;

   /**Circulation Program Saturday 2 To/From */
   @ext(0x61, 0x1A)
   model CircRuntimeProgramSa2 is cal;

   /**Circulation Program Saturday 3 To/From */
   @ext(0x62, 0x1A)
   model CircRuntimeProgramSa3 is cal;

   /**Circulation Program Sunday 1 To/From */
   @ext(0x70, 0x1A)
   model CircRuntimeProgramSu1 is cal;

   /**Circulation Program Sunday 2 To/From */
   @ext(0x71, 0x1A)
   model CircRuntimeProgramSu2 is cal;

   /**Circulation Program Sunday 3 To/From */
   @ext(0x72, 0x1A)
   model CircRuntimeProgramSu3 is cal;

}