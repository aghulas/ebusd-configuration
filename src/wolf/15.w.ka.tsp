import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Wolf;

enum _DHWOperation {
  Priority: 0x00,
  Sliding: 0x01,
  Parallel: 0x02,
}

// Parameter "DHW operation" of the vendor. Only 0 (Priority) has been read on the bus: the
// values of Sliding and Parallel are not established.
/** hot water loading with priority over the heating circuit, in parallel with it, or sliding */
@values(_DHWOperation)
scalar DHWOperation extends UIN;

// The register-read template (crcr / CrcRead) and otemp10 are shared from wtc_inc.tsp.

@zz(0x15) // system manager (KA)
namespace ka {
  // Status each boiler sends to the cascade master (ZZ 0x10, the master address of this
  // device). ebusd loads a file for a scanned slave address only, hence these messages are here.

  /** passive, sent by the first boiler */
  @passive
  @qq(0x03)
  @zz(0x10)
  model up1 {}

  /** passive, sent by the second boiler */
  @passive
  @qq(0x13)
  @zz(0x10)
  model up2 {}

  /** status of the first boiler */
  @inherit(up1)
  model Boiler1Status is Status;

  /** burner load of the first boiler */
  @inherit(up1)
  model Boiler1Power is Power;

  /** status of the second boiler */
  @inherit(up2)
  model Boiler2Status is Status;

  /** burner load of the second boiler */
  @inherit(up2)
  model Boiler2Power is Power;

  /** error status, 0 when no error is pending */
  @ext(0x5c, 0x01, 0x00)
  model ErrorStatus is CrcRead<UIN>;

  /** heat demand of the heating circuit */
  @ext(0xb8, 0x02, 0x00)
  model HeatDemandTemp is CrcRead<temp10>;

  /** domestic hot water setpoint */
  @ext(0xe4, 0x03, 0x00)
  model DHWSetValue is CrcRead<otemp10>;

  /** outside sensor B1 */
  @ext(0x74, 0x0c, 0x00)
  model OutsideTemp is CrcRead<otemp10>;

  /** de-couple sensor B22 (hydraulic separator or plate exchanger, secondary side) */
  @ext(0x28, 0x0d, 0x00)
  model DeCoupleTemp is CrcRead<otemp10>;

  /** domestic hot water sensor B3 */
  @ext(0xcc, 0x0e, 0x00)
  model DHWTemp is CrcRead<otemp10>;

  /** configuration status */
  @ext(0xb0, 0x10, 0x00)
  model ConfigStatus is CrcRead<UIN>;

  /** outside temperature, weighted over time */
  @ext(0x7e, 0x0c, 0x0a)
  model OutsideWeightedTemp is CrcRead<otemp10>;

  /** firmware version, major part */
  @ext(0x45, 0x99, 0x01)
  model VersionMajor is CrcRead<UIN>;

  /** firmware version, minor part */
  @ext(0xa1, 0x9a, 0x01)
  model VersionMinor is CrcRead<UIN>;

  // Heating-circuit and hot-water settings, read side only (writes are a separate lot).

  /** normal room temperature setpoint */
  @ext(0x70, 0x05, 0x00)
  model RoomNormalTemp is CrcRead<temp10>;

  /** setback room temperature setpoint */
  @ext(0x58, 0x08, 0x00)
  model RoomSetbackTemp is CrcRead<temp10>;

  /** priority of the hot water loading over the heating circuit */
  @ext(0xd8, 0x23, 0x00)
  model DHWLoadingPriority is CrcRead<DHWOperation>;

  /** current burner modulation */
  @ext(0x48, 0x2c, 0x00)
  model ModulationStatus is CrcRead<percent>;

  /** hot water exceed temperature */
  @ext(0x14, 0x2d, 0x00)
  model DHWExceeded is CrcRead<temp10>;

  // Settings, read and written. The system manager acknowledges a write from any master but
  // takes the value only from source address 0xff (`write -s ff`).

  /** blocking time before a further boiler of the cascade is switched on */
  @wcrc(0x25, 0x00)
  @inherit(crcr, crcw)
  model BlockingTime {
    @minValue(0)
    @maxValue(30)
    value: minutes;
  }

  /** running time after which the boiler sequence of the cascade changes over */
  @wcrc(0xec, 0xfd)
  @inherit(crcr, crcw)
  model ChangeOverTime {
    @minValue(0)
    @maxValue(250)
    value: hours;
  }

  /** minimum temperature at the de-couple sensor */
  @wcrc(0xe7, 0xfd)
  @inherit(crcr, crcw)
  model DeCoupleMinTemp {
    @minValue(0)
    @maxValue(50)
    @step(0.5)
    value: temp10;
  }

  /** maximum flow temperature limit */
  @wcrc(0x28, 0x00)
  @inherit(crcr, crcw)
  model SupplyMaxTemp {
    @minValue(8)
    @maxValue(82)
    @step(0.5)
    value: temp10;
  }

  /** configured hot water setpoint */
  @wcrc(0x13, 0x00)
  @inherit(crcr, crcw)
  model DHWSetpoint {
    @minValue(40)
    @maxValue(60)
    @step(0.5)
    value: temp10;
  }

  /** day of the legionella protection */
  @wcrc(0x01, 0x01)
  @inherit(crcr, crcw)
  model DHWLegionellaDay {
    value: legionellaDay;
  }

  /** circulation pump during the legionella protection */
  @wcrc(0xf3, 0x13)
  @inherit(crcr, crcw)
  model CircWithLegionella {
    value: onoff16;
  }

  /** switching differential of the calorifier */
  @wcrc(0xe2, 0xfd)
  @inherit(crcr, crcw)
  model CalorifierSwitchDiff {
    @minValue(1)
    @maxValue(20)
    @step(0.5)
    value: diff10;
  }

  /** hot water switching differential, below the setpoint */
  @wcrc(0x40, 0x01)
  @inherit(crcr, crcw)
  model DHWSwitchDiff {
    @minValue(-10)
    @maxValue(-1)
    @step(0.5)
    value: diff10;
  }

  /** maximum hot water loading time */
  @wcrc(0x80, 0x01)
  @inherit(crcr, crcw)
  model DHWLoadTime {
    @minValue(0)
    @maxValue(180)
    @step(10)
    value: minutes;
  }

  /** hot water setpoint of the legionella protection */
  @wcrc(0x87, 0x05)
  @inherit(crcr, crcw)
  model LegionellaSetpoint {
    @minValue(40)
    @maxValue(80)
    @step(0.5)
    value: temp10;
  }

  /** running time of the circulation pump during legionella protection */
  @wcrc(0xb1, 0x09)
  @inherit(crcr, crcw)
  model LegionellaCirculationTime {
    @minValue(180)
    @maxValue(1200)
    @step(60)
    value: seconds;
  }

  /** factor 1/P of the power controller of the cascade */
  @wcrc(0x9f, 0x02)
  @inherit(crcr, crcw)
  model RegulationP {
    @minValue(10)
    @maxValue(300)
    value: UIN;
  }

  /** factor I of the power controller of the cascade */
  @wcrc(0x9e, 0x02)
  @inherit(crcr, crcw)
  model RegulationI {
    @minValue(10)
    @maxValue(200)
    value: UIN;
  }

  // Limits of the optimal operating range of the cascade (vendor parameters 535 and 536), in
  // percent of burner load: the manual gives 30 % to the maximum for the lower limit and the
  // minimum to 100 % for the upper one, so each bound depends on the other register.

  /** upper limit of the optimal operating range of the cascade */
  @wcrc(0xea, 0xfd)
  @inherit(crcr, crcw)
  model ModulationMax {
    @minValue(30)
    @maxValue(100)
    value: percent;
  }

  /** lower limit of the optimal operating range of the cascade */
  @wcrc(0xeb, 0xfd)
  @inherit(crcr, crcw)
  model ModulationMin {
    @minValue(30)
    @maxValue(100)
    value: percent;
  }

  // Read only, established by the register survey of 2026-11-19 and the vendor service tool's
  // screens (see evidence): settings of the cascade and of the hot water, and the primary
  // sensor of the plate exchanger.

  /** modulation differential added to the system setpoint for the modulation limit (parameter 538) */
  @ext(0x4d, 0xe9, 0xfd)
  model ModulationDiffTemp is CrcRead<diff10>;

  /** de-couple excess over the system setpoint (parameter 551) */
  @ext(0x11, 0xe8, 0xfd)
  model DeCoupleExcessTemp is CrcRead<diff10>;

  // Read only: a write of 78.5 was acknowledged and not taken (the vendor tool sets this parameter up to 78.0).
  /** de-couple maximum temperature (parameter 553) */
  @ext(0xdd, 0xe6, 0xfd)
  model DeCoupleMaxTemp is CrcRead<temp10>;

  // The calorifier of the cascade is the buffer storage ("stock tampon", menu "Tampon" of the
  // manual, parameter 561, 0.0 to 10.0 K), not the hot-water cylinder.
  /** calorifier (buffer storage) excess, to make up for the losses of the pipes (parameter 561) */
  @ext(0xad, 0xe3, 0xfd)
  model CalorifierExcessTemp is CrcRead<diff10>;

  /** day of the start of summer time (parameter 593) */
  @ext(0x09, 0xde, 0xfd)
  model SummerTimeStartDay is CrcRead<UIN>;

  /** month of the start of summer time (parameter 593) */
  @ext(0x55, 0xdf, 0xfd)
  model SummerTimeStartMonth is CrcRead<month>;

  /** day of the end of summer time (parameter 594) */
  @ext(0x49, 0xe0, 0xfd)
  model SummerTimeEndDay is CrcRead<UIN>;

  /** month of the end of summer time (parameter 594) */
  @ext(0x15, 0xe1, 0xfd)
  model SummerTimeEndMonth is CrcRead<month>;

  // Boiler sequences of the cascade (parameters 533, 534), read only: each position holds the
  // boiler that comes first or second in that sequence.

  /** boiler sequence 1, first position */
  @ext(0x95, 0xca, 0xfd)
  model BoilerSequence1First is CrcRead<cascadeBoiler>;

  /** boiler sequence 1, second position */
  @ext(0xc9, 0xcb, 0xfd)
  model BoilerSequence1Second is CrcRead<cascadeBoiler>;

  /** boiler sequence 2, first position */
  @ext(0xe9, 0xd4, 0xfd)
  model BoilerSequence2First is CrcRead<cascadeBoiler>;

  /** boiler sequence 2, second position */
  @ext(0xb5, 0xd5, 0xfd)
  model BoilerSequence2Second is CrcRead<cascadeBoiler>;

  /** reduced hot-water setpoint (parameter 573) */
  @ext(0x12, 0x8a, 0x02)
  model DHWSetbackTemp is CrcRead<temp10>;

  // Quarter hours since midnight in the low byte (34 is 08:30), the high byte 0: a time of day.
  /** start time of the legionella protection (parameter 581) */
  @ext(0xd5, 0xf4, 0xfd)
  @inherit(crcr)
  model LegionellaStartTime {
    value: TTQ;
    @maxLength(1) ign: IGN;
  }

  /** primary sensor B24 of the plate exchanger; -100.0 when not fitted */
  @ext(0x72, 0x40, 0x0a)
  model PlateExchangerPrimaryTemp is CrcRead<otemp10>;
}
