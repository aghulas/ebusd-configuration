import "@ebusd/ebus-typespec";
import "./_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

namespace register {

   /**Error Status */
   @crcext(0x00, 0x00)
   model BootStatus is ReadonlyRegister<UIN>;

   /**Error Status */
   @crcext(0x01, 0x00)
   model ErrorStatus is ReadonlyRegister<UIN>;

   /**Heat demand HK */
   @crcext(0x02, 0x00)
   model HeatDemandTemp is ReadonlyRegister<temp10>;
   
   /**Hot water setpoint */
   @crcext(0x03, 0x00)
   model DHWSetValue is ReadonlyRegister<temp10>;

   /**pply SetPoint (121) */
   @crcext(0x04, 0x00)
   model SupplySetPointTemp is ReadonlyRegister<temp10>;

   /**Normal Room Temperature (112) */
   @crcext(0x05, 0x00)
   model RoomNormalTemp is Register<temp10>;
  
   /**Setback Room Temperature (113) */
   @crcext(0x08, 0x00)
   model RoomSetbackTemp is Register<temp10>;

   /**Unknown Sensor 15 */
   @crcext(0x0b, 0x00)
   model UnknownSensor15 is ReadonlyRegister<UIN>;

   /**B1 Outside Sensor Temperature */
   @crcext(0x0c, 0x00)
   model OutsideTemp is ReadonlyRegister<outsidetemp10>;

   /**Flow temperature WTC */
   @crcext(0x0d, 0x00)
   model SupplyWTCTemp is ReadonlyRegister<temp10>;

   /**B3 DHW Sensor Temperature */
   @crcext(0x0e, 0x00)
   model DHWTemp is ReadonlyRegister<temp10>;

   /**B6 Supply Sensor Temperature */
   @crcext(0x0f, 0x00)
   model SupplyHCTemp is ReadonlyRegister<temp10>;

   /**Configuration Status */
   @crcext(0x10, 0x00)
   model ConfigStatus is ReadonlyRegister<UIN>;

   /**Room Sensor Temperature */
   @crcext(0x11, 0x00)
   model RoomTemp is ReadonlyRegister<temp10>;

   /**Room setpoint */
   @crcext(0x12, 0x00)
   model RoomSetPointTemp is ReadonlyRegister<temp10>;

   /**Hot water setpoint (176) */
   @crcext(0x13, 0x00)
   model DHWSetpoint is Register<temp10>;

   /**Blended Outside Temperature */
   @crcext(0x1a, 0x00)
   model OutsideBlendedTemp is ReadonlyRegister<outsidetemp10>;

   /**WW Operation (343) */
   @crcext(0x23, 0x00)
   model WWOperationMode is Register<DHWOperation>;

   /**Maximum Blocking Time (537) */
   @crcext(0x25, 0x00)
   model BlockingTime is Register<minutes>;

    /*Maximum Supply Temperature (422) */
   @crcext(0x28, 0x00)
   model SupplyMaxTemp is Register<temp10>;

   /** Mixer Parameter (425) */
   @crcext(0x2b, 0x00)
   model MixerParameterTemp is Register<temp10k>;

   /**dulation */
   @crcext(0x2c, 0x00)
   model ModulationStatus is Register<percent>;

   /**576 DHW exceeded */
   @crcext(0x2d, 0x00)
   model DHWExceeded is Register<temp10>;

   /**Mixer Pump */
   @crcext(0x52, 0x00)
   model MixerPump is ReadonlyRegister<Values_onoff>;

   /**Mixer Valve Opening */
   @crcext(0x56, 0x00)
   model ValveOpening is ReadonlyRegister<Values_onoff>;

   /**Mixer Valve Closing */
   @crcext(0x57, 0x00)
   model ValveClosing is ReadonlyRegister<Values_onoff>;

   /**Calorifier Top Temp B20 */
   @crcext(0x76, 0x00)
   model ColorifierTopTemp is ReadonlyRegister<temp10>;

   /**Calorifier Bottom Temp B21   */
   @crcext(0x78, 0x00)
   model ColorifierBottomTemp is ReadonlyRegister<temp10>;

   /**14 Target value reduction for solar yield   */
   @crcext(0x81, 0x00)
   model ReductionSolarYied is ReadonlyRegister<temp10k>;

   /**SOL/905_Durchfluss */
   @crcext(0x82, 0x00)
   model Durchfluss is ReadonlyRegister<UIN>;    

   /**SOL/906_YieldSince_Wh */
   @crcext(0x87, 0x00)
   model YieldSince_Wh is ReadonlyRegister<UIN>;   

   /**SOL/906_YieldSince_kWh */
   @crcext(0x88, 0x00)
   model YieldSince_kWh is ReadonlyRegister<UIN>;   

   /**SOL/906_YieldSince_MWh */
   @crcext(0x89, 0x00)
   model YieldSince_MWh is ReadonlyRegister<UIN>;   

   /**Legionella Protection Function (605) */
   @crcext(0x01, 0x01)
   model DHWLegionellaDay is Register<WeekDay2>;

   /**Room Sensor Correction (101) */
   @crcext(0x09, 0x01)
   model RoomSensorCorrectionTemp is Register<temp10k>;

   /**Steepness (175) */
   @crcext(0x0e, 0x01)
   model GradientCurve is Register<gradient10>;

   /**Room Factor-P (508) */
   @crcext(0x0f, 0x01)
   model RoomFactorCurve is Register<UIN>;

   /**Switch-on delay (353) */
   @crcext(0x10, 0x01)
   model SwitchOnRuntime is Register<minutes>;

   /**Boiler MC Boost(424) */
   @crcext(0x11, 0x01)
   model BoilerMCBoostTemp is Register<temp10k>;

   /**Program selector switch position*/
   @crcext(0x12, 0x01)
   model ProgramMode is Register<Program>;

   /**Adaption (507) */
   @crcext(0x15, 0x01)
   model AdaptionMode is Register<Values_onoff>;

   /**mmer/winter changeover temperature (174)   */
   @crcext(0x16, 0x01)
   model SummerWinterChangeOverTemp is Register<outsidetemp>;

   /**Screed function (381) */
   @crcext(0x1a, 0x01)
   model FloorDryingMode is Register<Floordrying>;

   /**Hollyday Start Day */
   @crcext(0x1b, 0x01)
   model HolidayRuntimeFromDay is Register<UIN>;

    /**Hollyday Start Month */
   @crcext(0x1c, 0x01)
   model HolidayRuntimeFromMonth is Register<month>;

   /**Hollyday Start Year */
   @crcext(0x1d, 0x01)
   model HolidayRuntimeFromYear is Register<UIN>;

   /**Hollyday End Day */
   @crcext(0x1e, 0x01)
   model HolidayRuntimeToDay is Register<UIN>;

   /**Hollyday End Month */
   @crcext(0x1f, 0x01)
   model HolidayRuntimeToMonth is Register<month>;

   /**Hollyday End Year */
   @crcext(0x20, 0x01)
   model HolidayRuntimeToYear is Register<UIN>;

   /**SystemDate WeekDay */
   @crcext(0x21, 0x01)
   model SystemDateWeekday is Register<WeekDay>;

   /**SystemDate Day */
   @crcext(0x22, 0x01)
   model SystemDateDay is Register<UIN>;

   /**SystemDate Month */
   @crcext(0x23, 0x01)
   model SystemDateMonth is Register<month>;

   /**SystemDate Year */
   @crcext(0x24, 0x01)
   model SystemDateYear is Register<UIN>;

   /**SystemTime Hour */
   @crcext(0x25, 0x01)
   model SystemTimeHour is Register<hours>;

   /**SystemTime Minute */
   @crcext(0x26, 0x01)
   model SystemTimeMinute is Register<minutes>;

   /**SystemTime Hour */
   @crcext(0x27, 0x01)
   model SystemTimeSecond is Register<seconds>;

   /**Construction method (371) */
   @crcext(0x28, 0x01)
   model TypeOfConstructionMode is Register<Constructiontype>;

   /**15 Normal SPL-Set */
   @crcext(0x29, 0x01)
   model NormalSplSetTemp is Register<temp10>;

   /**16 Reduced SPL-Set */
   @crcext(0x2a, 0x01)
   model ReducedSplSetTemp is Register<temp10>;

   /**Minimum Supply Temperature (421) */
   @crcext(0x2b, 0x01)
   model SupplyMinTemp is Register<temp10>;

   /**Holiday temperature (183) */
   @crcext(0x2d, 0x01)
   model HolidayTemp is Register<TempReduced>;

   /**WTC delay(430) */
   @crcext(0x2e, 0x01)
   model WtcDelayRuntime is Register<minutes>;

   /**Max Pump speed (358) */
   @crcext(0x2f, 0x01)
   model PumpMaxSpeed is Register<percent>;

   /**Min Pump speed (359) */
   @crcext(0x30, 0x01)
   model PumpMinSpeed is Register<percent>;

   /**VSD variable (429) */
   @crcext(0x31, 0x01)
   model PumpVSDvariable is Register<PumpVariationSpeed>;

   /**ReductTemp (501) */
   @crcext(0x32, 0x01)
   model ReductTemp is Register<TempReduced>;

   /**Hot water Min (177) */
   @crcext(0x33, 0x01)
   model DHWMinTemp is Register<outsidetemp>;

   /**DHW maximum Temp (601) */
   @crcext(0x34, 0x01)
   model DHWMaxTemp is Register<temp10>;

   /**WW-Mode (361) */
   @crcext(0x35, 0x01)
   model DHWMode is Register<Dhw>;

   /**WW operation (360) */
   @crcext(0x37, 0x01)
   model DHWOperationMode is Register<DHWOperation>;

   /**R3B01 */
   @crcext(0x3b, 0x01)
   model R3B01 is Register<UIN>;

   /**42 Holiday Temperature Level*/
   @crcext(0x3d, 0x01)
   model HolidayTempLevel is Register<temp10>;

   /**575 DHW Switch Diff */
   @crcext(0x40, 0x01)
   model DHWSwitchDiff is Register<temp10k>;

   /**Control Variation (318) */
   @crcext(0x41, 0x01)
   model ControlVariationMode is Register<CVariation>;

   /**OB/i31_TempAbgas */
   @crcext(0x45, 0x01)
   model TempAbgas is ReadonlyRegister<outsidetemp>;

   /**577 WW Load Time */
   @crcext(0x80, 0x01)
   model DHWLoadTime is Register<minutes>;

   /**574 DHW-Max */
   @crcext(0x81, 0x01)
   model DHWMaxTemp2 is Register<temp10>;

   /**Ka Version */
   @crcext(0x8f, 0x01)
   model KaVersion is ReadonlyRegister<SIN>;

   /**Version Major */
   @crcext(0x99, 0x01)
   model VersionMajor is ReadonlyRegister<UIN>;

   /**Version Minor */
   @crcext(0x9a, 0x01)
   model VersionMinor is ReadonlyRegister<UIN>;

   /**H1 Control Voltage */
   @crcext(0xa9, 0x01)
   model H1ControlVoltage is ReadonlyRegister<UIN>;

   /**H1 Control Current */
   @crcext(0xaA, 0x01)
   model H1ControlCurrent is ReadonlyRegister<UIN>;

   /**483 Screed Start Temperature */
   @crcext(0xbb, 0x01)
   model FHCMinTemp is Register<temp10>;

   /**484 Tag Min Temp Fhz */
   @crcext(0xbc, 0x01)
   model FHCMinTempDays is Register<UIN>;

   /**SOL/905_Leistung */
   @crcext(0xdb, 0x01)
   model Leistung is Register<UIN>;

   /**Reset Error Memory */
   @crcext(0x7a, 0x02)
   model ResetErrorMemory is Register<UIN>;

   /**FS_EM_W4_Sensor */
   @crcext(0x85, 0x02)
   model FS_EM_W4_Sensor is Register<UIN>;


   /**573 DHW Min Temp */
   @crcext(0x8a, 0x02)
   model DHWMinTemp2 is Register<temp10>;


   /**540 I Regler */
   @crcext(0x9e, 0x02)
   model RegulationI is Register<UIN>;

   /**539 1/P Regler */
   @crcext(0x9f, 0x02)
   model RegulationP is Register<UIN>;

   /**OB/i45_LetzteWartung */
   @crcext(0xbc, 0x02)
   model i45_LetzteWartung is ReadonlyRegister<UIN>;

   /**82 Frost Protection Limit */
   @crcext(0xbe, 0x02)
   model FrostProtectionLimitTemp is Register<temp10>;

   /**SOL/902_StatusDTR */
   @crcext(0xf1, 0x02)
   model StatusDTR is ReadonlyRegister<UIN>;

   /**FS_EM_R2_Sensor */
   @crcext(0x59, 0x03)
   model FS_EM_R2_Sensor is Register<UIN>;

   /**B3Sensor */
   @crcext(0xe9, 0x04)
   model B3Sensor is Register<temp10>;

   /**580 AntiLeg Setp Temperature */
   @crcext(0x87, 0x05)
   model LegionellaSetupTemp is Register<temp10>;

   /**70 Delay WTC */
   @crcext(0x14, 0x06)
   model WTCDelay is Register<minutes>;
 
   /**SOL/907_YieldSum_Wh */
   @crcext(0x7c, 0x06)
   model YieldSum_Wh_907 is ReadonlyRegister<UIN>;

   /**SOL/907_YieldSum_kWh */
   @crcext(0x7d, 0x06)
   model YieldSum_kWh_907 is ReadonlyRegister<UIN>;

   /**SOL/907_YieldSum_MWh */
   @crcext(0x7e, 0x06)
   model YieldSum_MWh    is ReadonlyRegister<UIN>;

   /**SOL/906_YieldResetDateYear */
   @crcext(0x7f, 0x06)
   model YieldResetDateYear is ReadonlyRegister<UIN>;

   /**SOL/906_YieldResetDateMonth */
   @crcext(0x80, 0x06)
   model YieldResetDateMonth is ReadonlyRegister<UIN>;

   /**SOL/906_YieldResetDateDay */
   @crcext(0x81, 0x06)
   model YieldResetDateDay is ReadonlyRegister<UIN>;

   /**SOL/908_YieldSum_Wh */
   @crcext(0x86, 0x06)
   model YieldSum_Wh_908 is ReadonlyRegister<UIN>;

   /**SOL/908_YieldSum_kWh */
   @crcext(0x87, 0x06)
   model YieldSum_kWh_908 is ReadonlyRegister<UIN>;

   /**AE06 */
   @crcext(0xaE, 0x06)
   model AE06 is Register<UIN>;

   /**AF06 */
   @crcext(0xaF, 0x06)
   model AF06 is Register<UIN>;

   /**485 Max Temperature FHC */
   @crcext(0x9c, 0x08)
   model FHCMaxTemp is Register<UIN>;


   /**486 Days Max Temperature FHC */
   @crcext(0x9d, 0x08)
   model FHCMaxTempDays is Register<UIN>;

   /**487 Days Cooling FHC */
   @crcext(0x9e, 0x08)
   model FHCCoolingDays is Register<UIN>;

   /**488 Days Heat-Up BHC */
   @crcext(0x9f, 0x08)
   model BHCHeatUpDays is Register<UIN>;

   /**489 Max Temperature BHC */
   @crcext(0xa0, 0x08)
   model BHCMaxTemp is Register<UIN>;

   /**490 Days Max Temperature BHC */
   @crcext(0xa1, 0x08)
   model BHCMaxTempDays is Register<UIN>;

   /**491 Days Cooling BHC */
   @crcext(0xa2, 0x08)
   model BHCCoolingDays is Register<UIN>;

   /**Room factor-I */
   @crcext(0x71, 0x09)
   model RoomFactorI is Register<UIN>;

   /**R7209 */
   @crcext(0x72, 0x09)
   model R7209 is Register<UIN>;

   /**16 Heating Circuit Type */
   @crcext(0x73, 0x09)
   model HCTypeMode is Register<HCType>;

   /**583 Circ time */
   @crcext(0x81, 0x09)
   model LegionellaCirculationTime is Register<UIN>;

   /**R000A */
   @crcext(0x00, 0x0a)
   model R000A is Register<UIN>;

   /**igted Outside Temperature */
   @crcext(0x0c, 0x0a)
   model OutsideWeightedTemp is ReadonlyRegister<outsidetemp>;

   /**Screed day (382) */
   @crcext(0x12, 0x0a)
   model FloorDryingDay is Register<UIN>;

   /**Screed temperature (383) */
   @crcext(0x13, 0x0a)
   model FloorDryingTemp is Register<temp1>;

   /**Room frost protection (173) */
   @crcext(0x14, 0x0a)
   model RoomFrostProtectionTemp is Register<temp10>;

   /**Mixed Outside Temperature */
   @crcext(0x1a, 0x0a)
   model OutsideMixedTemp is ReadonlyRegister<outsidetemp>;

   /**Room thermostat (344) */
   @crcext(0x1d, 0x0a)
   model RoomThermostatTemp is Register<temp1>;

   /**FS_EM_W1_Sensor */
   @crcext(0x20, 0x0a)
   model FS_EM_W1_Sensor is Register<UIN>;

   /**H1 Actual KA */
   @crcext(0x28, 0x0a)
   model H1StatusKA is ReadonlyRegister<UIN>;

   /**H1Status EM SOL/903_TempKollektor_TKO_T1 */
   @crcext(0x29, 0x0a)
   model H1Status is ReadonlyRegister<UIN>;

   /**SOL/903_TempSolU_TSU_T2 */
   @crcext(0x2a, 0x0a)
   model TempSolU_TSU_T2 is ReadonlyRegister<temp10>;

   /**SOL/904_TempSolVL_TKV_T3 */
   @crcext(0x2b, 0x0a)
   model TempSolVL_TKV_T3 is ReadonlyRegister<temp10>;

   /**SOL/904_TempSolRL_TKR_T4 */
   @crcext(0xc0, 0x0a)
   model TempSolRL_TKR_T4 is ReadonlyRegister<temp10>;

   /**PWT Primaire Exch B24 */
   @crcext(0x40, 0x0a)
   model PWTPrimTemp is ReadonlyRegister<temp10>;

   /**31 H1 Function   */
   @crcext(0x5b, 0x0a)
   model H1Function is ReadonlyRegister<UIN>;

   /**MFA2 Actual */
   @crcext(0x8e, 0x0a)
   model MFA2Status is ReadonlyRegister<UIN>;

   /**Error History Id */
   @crcext(0x9a, 0x0b)
   model ErrorId is Register<UIN>;

   /**Error Code */
   @crcext(0x9b, 0x0b)
   model ErrorCode is ReadonlyRegister<UIN>;

   /**Error Type */
   @crcext(0x9c, 0x0b)
   model ErrorType is ReadonlyRegister<UIN>;

   /**Error Device */
   @crcext(0x9d, 0x0b)
   model ErrorDevice is ReadonlyRegister<UIN>;

   /**Error Time Minute */
   @crcext(0x9f, 0x0b)
   model ErrorMinute is ReadonlyRegister<minutes>;

   /**rror Time Hour */
   @crcext(0xa0, 0x0b)
   model ErrorHour is ReadonlyRegister<hours>;

   /**Error Date Day   */
   @crcext(0xa1, 0x0b)
   model ErrorDay is ReadonlyRegister<UIN>;

   /**Error Date Month */
   @crcext(0xa2, 0x0b)
   model ErrorMonth is ReadonlyRegister<month>;

   /**Error Date Year */
   @crcext(0xa3, 0x0b)
   model ErrorYear is ReadonlyRegister<UIN>;

   /**OB/i30_TempVLKessel */
   @crcext(0x1d, 0x0c)
   model TempVLKessel is Register<outsidetemp>;

   /**R0C1F */
   @crcext(0x1f, 0x0c)
   model R0C1F is Register<UIN>;

   /**R210C */
   @crcext(0x21, 0x0c)
   model R210C is Register<UIN>;

   /**OB/i40_SchaltspielBrenner */
   @crcext(0x7d, 0x0c)
   model i40_SchaltspielBrenner is Register<UIN>;

   /**OB/i41_SchaltspielBrenner */
   @crcext(0x7c, 0x0c)
   model i41_SchaltspielBrenner is Register<UIN>;

   /**OB/i42_BetrStundenBrenner */
   @crcext(0x7f, 0x0c)
   model i42_BetrStundenBrenner is Register<UIN>;

   /**OB/i43_BetrStundenBrenner */
   @crcext(0x7e, 0x0c)
   model i43_BetrStundenBrenner is Register<UIN>;

   /**OB/i46_OelZaehler_1000 */
   @crcext(0xd0, 0x0e)
   model i46_OelZaehler_1000 is Register<UIN>;

   /**OB/i47_OelZaehler */
   @crcext(0xd1, 0x0e)
   model i47_OelZaehler is Register<UIN>;

   /**Current performance */
   @crcext(0x50, 0x10)
   model Currentperformance is Register<UIN>;

   /**Solar Recovery with Legionella */
   @crcext(0xf1, 0x13)
   model SolarRecoverWithLegionella is Register<Values_onoff>;

   /**578 Max Load DHW */
   @crcext(0xf2, 0x13)
   model DHWMaxLoad is Register<percent>;

   /**582 Circ With Legionella */
   @crcext(0xf3, 0x13)
   model CircWithLegionella is Register<Values_onoff>;

   /**UnknownSensor11 */
   @crcext(0x04, 0x76)
   model UnknownSensor11 is Register<UIN>;

   /**UnknownSensor12 */
   @crcext(0x04, 0x78)
   model UnknownSensor12 is Register<UIN>;

   /**522 Output MFA 2 */
   @crcext(0xa4, 0xfd)
   model OutputMFA2 is Register<UIN>;

   /**526 Input N1 */
   @crcext(0xc2, 0xfd)
   model InputN1 is Register<Values_onoff>;

   /**533 Boiler Sequence 1 1 */
   @crcext(0xca, 0xfd)
   model BoilerSequence1_1 is Register<boilerid>;

   /**533 Boiler Sequence 1 2 */
   @crcext(0xcb, 0xfd)
   model BoilerSequence1_2 is Register<boilerid>;

   /**533 Boiler Sequence 1 3 */
   @crcext(0xcc, 0xfd)
   model BoilerSequence1_3 is Register<boilerid>;

   /**533 Boiler Sequence 1 4 */
   @crcext(0xcd, 0xfd)
   model BoilerSequence1_4 is Register<boilerid>;

   /**533 Boiler Sequence 1 5 */
   @crcext(0xce, 0xfd)
   model BoilerSequence1_5 is Register<boilerid>;

   /**533 Boiler Sequence 2 1 */
   @crcext(0xd4, 0xfd)
   model BoilerSequence2_1 is Register<boilerid>;

   /**533 Boiler Sequence 2 2 */
   @crcext(0xd5, 0xfd)
   model BoilerSequence2_2 is Register<boilerid>;

   /**533 Boiler Sequence 2 3 */
   @crcext(0xd6, 0xfd)
   model BoilerSequence2_3 is Register<boilerid>;

   /**533 Boiler Sequence 2 4 */
   @crcext(0xd7, 0xfd)
   model BoilerSequence2_4 is Register<boilerid>;

   /**533 Boiler Sequence 2 5 */
   @crcext(0xd8, 0xfd)
   model BoilerSequence2_5 is Register<boilerid>;

   /**593 SummerTime Start Day */
   @crcext(0xde, 0xfd)
   model SummerTimeFromDay is Register<UIN>;

   /**593 SummerTime Start Month */
   @crcext(0xdf, 0xfd)
   model SummerTimeFromMonth is Register<month>;

   /**594 SummerTime End Day */
   @crcext(0xe0, 0xfd)
   model SummerTimeToDay is Register<UIN>;

   /**594 SummerTime End Month */
   @crcext(0xe1, 0xfd)
   model SummerTimeToMonth is Register<month>;

   /**562 Calorfier Switch Difference */
   @crcext(0xe2, 0xfd)
   model CalorfierSwitchDifference is Register<temp1>;

   /**561 Calorfier exceeded */
   @crcext(0xe3, 0xfd)
   model CalorfierExceeded is Register<temp1>;

   /**553 De-Couple Max */
   @crcext(0xe6, 0xfd)
   model DeCoupleMax is Register<temp1>;

   /**552 De-Couple Min */
   @crcext(0xe7, 0xfd)
   model DeCoupleMin is Register<temp1>;

   /**551 De-Couple Exceeded */
   @crcext(0xe8, 0xfd)
   model DeCoupleExceeded is Register<temp1>;

   /**538 Cont. Temp */
   @crcext(0xe9, 0xfd)
   model ContTemp is Register<temp1>;

   /**536 Modulation Max */
   @crcext(0xea, 0xfd)
   model ModulationMax is Register<percent>;

   //**535 Modulation Min */
   @crcext(0xeb, 0xfd)
   model ModulationMin is Register<percent>;

   /**532 Change Over Time */
   @crcext(0xec, 0xfd)
   model ChangeOverTime is Register<temp1>;

   /**531 Sequence Change Mode */
   @crcext(0xed, 0xfd)
   model SequenceChangeMode is Register<UIN>;

   /**525 Spectial Level */
   @crcext(0xee, 0xfd)
   model SpecialLevel is Register<UIN>;

   /**524 Input H1 */
   @crcext(0xef, 0xfd)
   model InputH1 is Register<UIN>;

   /**VA Status */
   @crcext(0xf0, 0xfd)
   model VAStatus is Register<Values_onoff>;

   /**523 Output VA */
   @crcext(0xf1, 0xfd)
   model OutputVA is Register<Values_onoff>;

   /**MFA 1 Status */
   @crcext(0xf2, 0xfd)
   model MFA1Status is Register<Values_onoff>;

   /**521 Output MFA 1 */
   @crcext(0xf3, 0xfd)
   model OutputMFA1 is Register<UIN>;

   /**581 Legionella Time */
   @crcext(0xf4, 0xfd)
   model LegionellaTime is Register<TTQ>;

   /**5UnknownSensor8 */
   @crcext(0xfb, 0xfd)
   model UnknownSensor8 is Register<UIN>;

   /**Heating Program1 Monday 1 To/From */
   @crcext(0x10, 0x14)
   model HCRuntimeProgram1Mo1 is cal;

   /**Heating Program1 Monday 2 To/From */
   @crcext(0x11, 0x14)
   model HCRuntimeProgram1Mo2 is cal;

   /**Heating Program1 Monday 3 To/From */
   @crcext(0x12, 0x14)
   model HCRuntimeProgram1Mo3 is cal;

   /**Heating Program1 Tuesday 1 To/From */
   @crcext(0x20, 0x14)
   model HCRuntimeProgram1Tu1 is cal;

   /**Heating Program1 Tuesday 2 To/From */
   @crcext(0x21, 0x14)
   model HCRuntimeProgram1Tu2 is cal;

    /**Heating Program1 Tuesday 3 To/From */
   @crcext(0x22, 0x14)
   model HCRuntimeProgram1Tu3 is cal;

   /**Heating Program1 Wednesday 1 To/From */
   @crcext(0x30, 0x14)
   model HCRuntimeProgram1We1 is cal;

   /**Heating Program1 Wednesday 2 To/From */
   @crcext(0x31, 0x14)
   model HCRuntimeProgram1We2 is cal;

   /**Heating Program1 Wednesday 3 To/From */
   @crcext(0x32, 0x14)
   model HCRuntimeProgram1We3 is cal;

   /**Heating Program1 Thursday 1 To/From */
   @crcext(0x40, 0x14)
   model HCRuntimeProgram1Th1 is cal;

   /**Heating Program1 Thursday 2 To/From */
   @crcext(0x41, 0x14)
   model HCRuntimeProgram1Th2 is cal;

   /**Heating Program1 Thursday 3 To/From */
   @crcext(0x42, 0x14)
   model HCRuntimeProgram1Th3 is cal;

   /**Heating Program1 Friday 1 To/From */
   @crcext(0x50, 0x14)
   model HCRuntimeProgram1Fr1 is cal;

   /**Heating Program1 Friday 2 To/From */
   @crcext(0x51, 0x14)
   model HCRuntimeProgram1Fr2 is cal;

   /**Heating Program1 Friday 3 To/From */
   @crcext(0x52, 0x14)
   model HCRuntimeProgram1Fr3 is cal;

   /**Heating Program1 Saturday 1 To/From */
   @crcext(0x60, 0x14)
   model HCRuntimeProgram1Sa1 is cal;

   /**Heating Program1 Saturday 2 To/From */
   @crcext(0x61, 0x14)
   model HCRuntimeProgram1Sa2 is cal;

   /**Heating Program1 Saturday 3 To/From */
   @crcext(0x62, 0x14)
   model HCRuntimeProgram1Sa3 is cal;

   /**Heating Program1 Sunday 1 To/From */
   @crcext(0x70, 0x14)
   model HCRuntimeProgram1Su1 is cal;

   /**Heating Program1 Sunday 2 To/From */
   @crcext(0x71, 0x14)
   model HCRuntimeProgram1Su2 is cal;

   /**Heating Program1 Sunday 3 To/From */
   @crcext(0x72, 0x14)
   model HCRuntimeProgram1Su3 is cal;

   /**Heating Program2 Monday 1 To/From */
   @crcext(0x10, 0x15)
   model HCRuntimeProgram2Mo1 is cal;

   /**Heating Program2 Monday 2 To/From */
   @crcext(0x11, 0x15)
   model HCRuntimeProgram2Mo2 is cal;

   /**Heating Program2 Monday 3 To/From */
   @crcext(0x12, 0x15)
   model HCRuntimeProgram2Mo3 is cal;

   /**Heating Program2 Tuesday 1 To/From */
   @crcext(0x20, 0x15)
   model HCRuntimeProgram2Tu1 is cal;

   /**Heating Program2 Tuesday 2 To/From */
   @crcext(0x21, 0x15)
   model HCRuntimeProgram2Tu2 is cal;

   /**Heating Program2 Tuesday 3 To/From */
   @crcext(0x22, 0x15)
   model HCRuntimeProgram2Tu3 is cal;

   /**Heating Program2 Wednesday 1 To/From */
   @crcext(0x30, 0x15)
   model HCRuntimeProgram2We1 is cal;

   /**Heating Program2 Wednesday 2 To/From */
   @crcext(0x31, 0x15)
   model HCRuntimeProgram2We2 is cal;

   /**Heating Program2 Wednesday 3 To/From */
   @crcext(0x32, 0x15)
   model HCRuntimeProgram2We3 is cal;

   /**Heating Program2 Thursday 1 To/From */
   @crcext(0x40, 0x15)
   model HCRuntimeProgram2Th1 is cal;

   /**Heating Program2 Thursday 2 To/From */
   @crcext(0x41, 0x15)
   model HCRuntimeProgram2Th2 is cal;

   /**Heating Program2 Thursday 3 To/From */
   @crcext(0x42, 0x15)
   model HCRuntimeProgram2Th3 is cal;

   /**Heating Program2 Friday 1 To/From */
   @crcext(0x50, 0x15)
   model HCRuntimeProgram2Fr1 is cal;

   /**Heating Program2 Friday 2 To/From */
   @crcext(0x51, 0x15)
   model HCRuntimeProgram2Fr2 is cal;

   /**Heating Program2 Friday 3 To/From */ 
   @crcext(0x52, 0x15) 
   model HCRuntimeProgram2Fr3 is cal;

   /**Heating Program2 Saturday 1 To/From */
   @crcext(0x60, 0x15)
   model HCRuntimeProgram2Sa1 is cal;

   /**Heating Program2 Saturday 2 To/From */
   @crcext(0x61, 0x15)
   model HCRuntimeProgram2Sa2 is cal;

   /**Heating Program2 Saturday 3 To/From */
   @crcext(0x62, 0x15)
   model HCRuntimeProgram2Sa3 is cal;

   /**Heating Program2 Sunday 1 To/From */
   @crcext(0x70, 0x15)
   model HCRuntimeProgram2Su1 is cal;

   /**Heating Program2 Sunday 2 To/From */
   @crcext(0x71, 0x15)
   model HCRuntimeProgram2Su2 is cal;

   /**Heating Program2 Sunday 3 To/From */
   @crcext(0x72, 0x15)
   model HCRuntimeProgram2Su3 is cal;

   /**Heating Program3 Monday 1 To/From */
   @crcext(0x10, 0x16)
   model HCRuntimeProgram3Mo1 is cal;

   /**Heating Program3 Monday 2 To/From */
   @crcext(0x11, 0x16)
   model HCRuntimeProgram3Mo2 is cal;

   /**Heating Program3 Monday 3 To/From */
   @crcext(0x12, 0x16)
   model HCRuntimeProgram3Mo3 is cal;

   /**Heating Program3 Tuesday 1 To/From */
   @crcext(0x20, 0x16)
   model HCRuntimeProgram3Tu1 is cal;

   /**Heating Program3 Tuesday 2 To/From */
   @crcext(0x21, 0x16)
   model HCRuntimeProgram3Tu2 is cal;

   /**Heating Program3 Tuesday 3 To/From */
   @crcext(0x22, 0x16)
   model HCRuntimeProgram3Tu3 is cal;

   /**Heating Program3 Wednesday 1 To/From */
   @crcext(0x30, 0x16)
   model HCRuntimeProgram3We1 is cal;

   /**Heating Program3 Wednesday 2 To/From */
   @crcext(0x31, 0x16)
   model HCRuntimeProgram3We2 is cal;

   /**Heating Program3 Wednesday 3 To/From */
   @crcext(0x32, 0x16)
   model HCRuntimeProgram3We3 is cal;

   /**Heating Program3 Thursday 1 To/From */
   @crcext(0x40, 0x16)
   model HCRuntimeProgram3Th1 is cal;

   /**Heating Program3 Thursday 2 To/From */
   @crcext(0x41, 0x16)
   model HCRuntimeProgram3Th2 is cal;

   /**Heating Program3 Thursday 3 To/From */
   @crcext(0x42, 0x16)
   model HCRuntimeProgram3Th3 is cal;

   /**Heating Program3 Friday 1 To/From */
   @crcext(0x50, 0x16)
   model HCRuntimeProgram3Fr1 is cal;

   /**Heating Program3 Friday 2 To/From */
   @crcext(0x51, 0x16)
   model HCRuntimeProgram3Fr2 is cal;

   /**Heating Program3 Friday 3 To/From */
   @crcext(0x52, 0x16) 
   model HCRuntimeProgram3Fr3 is cal;

   /**Heating Program3 Saturday 1 To/From */
   @crcext(0x60, 0x16)
   model HCRuntimeProgram3Sa1 is cal;

   /**Heating Program3 Saturday 2 To/From */
   @crcext(0x61, 0x16)
   model HCRuntimeProgram3Sa2 is cal;

   /**Heating Program3 Saturday 3 To/From */
   @crcext(0x62, 0x16)
   model HCRuntimeProgram3Sa3 is cal;

   /**Heating Program3 Sunday 1 To/From */
   @crcext(0x70, 0x16)
   model HCRuntimeProgram3Su1 is cal;

   /**Heating Program3 Sunday 2 To/From */
   @crcext(0x71, 0x16)
   model HCRuntimeProgram3Su2 is cal;

   /**Heating Program3 Sunday 3 To/From */
   @crcext(0x72, 0x16)
   model HCRuntimeProgram3Su3 is cal;

   /**Hot Water Program Monday 1 To/From */
   @crcext(0x10, 0x17)
   model DHWRuntimeProgramMo1 is cal;

   /**Hot Water Program Monday 2 To/From */
   @crcext(0x11, 0x17)
   model DHWRuntimeProgramMo2 is cal;

   /**Hot Water Program Monday 3 To/From */
   @crcext(0x12, 0x17)
   model DHWRuntimeProgramMo3 is cal;

   /**Hot Water Program Tuesday 1 To/From */
   @crcext(0x20, 0x17)
   model DHWRuntimeProgramTu1 is cal;

   /**Hot Water Program Tuesday 2 To/From */
   @crcext(0x21, 0x17)
   model DHWRuntimeProgramTu2 is cal;

   /**Hot Water Program Tuesday 3 To/From */
   @crcext(0x22, 0x17)
   model DHWRuntimeProgramTu3 is cal;

   /**Hot Water Program Wednesday 1 To/From */
   @crcext(0x30, 0x17)
   model DHWRuntimeProgramWe1 is cal;

   /**Hot Water Program Wednesday 2 To/From */
   @crcext(0x31, 0x17)
   model DHWRuntimeProgramWe2 is cal;

   /**Hot Water Program Wednesday 3 To/From */
   @crcext(0x32, 0x17)
   model DHWRuntimeProgramWe3 is cal;

   /**Hot Water Program Thursday 1 To/From */
   @crcext(0x40, 0x17)
   model DHWRuntimeProgramTh1 is cal;

   /**Hot Water Program Thursday 2 To/From */
   @crcext(0x41, 0x17)
   model DHWRuntimeProgramTh2 is cal;

   /**Hot Water Program Thursday 3 To/From */
   @crcext(0x42, 0x17)
   model DHWRuntimeProgramTh3 is cal;

   /**Hot Water Program Friday 1 To/From */
   @crcext(0x50, 0x17)
   model DHWRuntimeProgramFr1 is cal;

   /**Hot Water Program Friday 2 To/From */
   @crcext(0x51, 0x17)
   model DHWRuntimeProgramFr2 is cal;

   /**Hot Water Program Friday 3 To/From */
   @crcext(0x52, 0x17)
   model DHWRuntimeProgramFr3 is cal;

   /**Hot Water Program Saturday 1 To/From */
   @crcext(0x60, 0x17)
   model DHWRuntimeProgramSa1 is cal;

   /**Hot Water Program Saturday 2 To/From */
   @crcext(0x61, 0x17)
   model DHWRuntimeProgramSa2 is cal;

   /**Hot Water Program Saturday 3 To/From */
   @crcext(0x62, 0x17)
   model DHWRuntimeProgramSa3 is cal;

   /**Hot Water Program Sunday 1 To/From */
   @crcext(0x70, 0x17)
   model DHWRuntimeProgramSu1 is cal;

   /**Hot Water Program Sunday 2 To/From */
   @crcext(0x71, 0x17)
   model DHWRuntimeProgramSu2 is cal;

   /**Hot Water Program Sunday 3 To/From */
   @crcext(0x72, 0x17)
   model DHWRuntimeProgramSu3 is cal;

   /**Circulation Program Monday 1 To/From */
   @crcext(0x10, 0x1A)
   model CircRuntimeProgramMo1 is cal;

   /**Circulation Program Monday 2 To/From */
   @crcext(0x11, 0x1A)
   model CircRuntimeProgramMo2 is cal;

   /**Circulation Program Monday 3 To/From */
   @crcext(0x12, 0x1A)
   model CircRuntimeProgramMo3 is cal;

   /**Circulation Program Tuesday 1 To/From */
   @crcext(0x20, 0x1A)
   model CircRuntimeProgramTu1 is cal;

   /**Circulation Program Tuesday 2 To/From */
   @crcext(0x21, 0x1A)
   model CircRuntimeProgramTu2 is cal;

   /**Circulation Program Tuesday 3 To/From */
   @crcext(0x22, 0x1A)
   model CircRuntimeProgramTu3 is cal;

   /**Circulation Program Wednesday 1 To/From */
   @crcext(0x30, 0x1A)
   model CircRuntimeProgramWe1 is cal;

   /**Circulation Program Wednesday 2 To/From */
   @crcext(0x31, 0x1A)
   model CircRuntimeProgramWe2 is cal;

   /**Circulation Program Wednesday 3 To/From */
   @crcext(0x32, 0x1A) 
   model CircRuntimeProgramWe3 is cal;

   /**Circulation Program Thursday 1 To/From */
   @crcext(0x40, 0x1A)
   model CircRuntimeProgramTh1 is cal;

   /**Circulation Program Thursday 2 To/From */
   @crcext(0x41, 0x1A)
   model CircRuntimeProgramTh2 is cal;

   /**Circulation Program Thursday 3 To/From */
   @crcext(0x42, 0x1A)
   model CircRuntimeProgramTh3 is cal;

   /**Circulation Program Friday 1 To/From */
   @crcext(0x50, 0x1A)
   model CircRuntimeProgramFr1 is cal;

   /**Circulation Program Friday 2 To/From */
   @crcext(0x51, 0x1A)
   model CircRuntimeProgramFr2 is cal;

   /**Circulation Program Friday 3 To/From */
   @crcext(0x52, 0x1A)
   model CircRuntimeProgramFr3 is cal;

   /**Circulation Program Saturday 1 To/From */
   @crcext(0x60, 0x1A)
   model CircRuntimeProgramSa1 is cal;

   /**Circulation Program Saturday 2 To/From */
   @crcext(0x61, 0x1A)
   model CircRuntimeProgramSa2 is cal;

   /**Circulation Program Saturday 3 To/From */
   @crcext(0x62, 0x1A)
   model CircRuntimeProgramSa3 is cal;

   /**Circulation Program Sunday 1 To/From */
   @crcext(0x70, 0x1A)
   model CircRuntimeProgramSu1 is cal;

   /**Circulation Program Sunday 2 To/From */
   @crcext(0x71, 0x1A)
   model CircRuntimeProgramSu2 is cal;

   /**Circulation Program Sunday 3 To/From */
   @crcext(0x72, 0x1A)
   model CircRuntimeProgramSu3 is cal;

}