import "@ebusd/ebus-typespec";
import "./_templates.tsp";
import "./wtc_inc.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;

namespace Wolf;

// Exchange between the room controller (QQ 0x30) and heating module #1 (ZZ 0x50).
namespace em1 {
  /** room-controller / heating-module exchange */
  @passive
  @qq(0x30)
  model HcMode is Wolf.HcMode;

  // Settings of the heating circuit, read and written, taken only from source address 0xff
  // (`write -s ff`), the flow limits too: from the address of ebusd they are acknowledged and
  // not taken, unlike on the heating modules 0x51 and 0x52. Address 0x50 answers as the same
  // device as 0x15: a value written here is read back at 0x15 as well.

  /** normal room temperature setpoint */
  @wcrc(0x05, 0x00)
  @inherit(crcr, crcw)
  model RoomNormalTemp {
    @minValue(16)
    @maxValue(35)
    @step(0.5)
    value: temp10;
  }

  /** setback room temperature setpoint */
  @wcrc(0x08, 0x00)
  @inherit(crcr, crcw)
  model RoomSetbackTemp {
    // 10.0 to 21.5: no range here, a bound of an integer type cannot be fractional
    value: temp10;
  }

  /** room temperature setpoint of the frost protection */
  @wcrc(0x14, 0x0a)
  @inherit(crcr, crcw)
  model RoomFrostProtectionTemp {
    @minValue(4)
    @maxValue(16)
    @step(0.5)
    value: temp10;
  }

  /** steepness of the heating curve */
  @wcrc(0x0e, 0x01)
  @inherit(crcr, crcw)
  model GradientCurve {
    // 2.5 to 40.0: no range here, for the same reason
    @divisor(10)
    value: UIN;
  }

  /** outside temperature of the summer / winter changeover */
  @wcrc(0x16, 0x01)
  @inherit(crcr, crcw)
  model SummerWinterChangeOverTemp {
    @minValue(8)
    @maxValue(30)
    @step(0.5)
    value: temp10;
  }

  /** maximum flow temperature */
  @wcrc(0x28, 0x00)
  @inherit(crcr, crcw)
  model SupplyMaxTemp {
    @minValue(8)
    @maxValue(82)
    @step(0.5)
    value: temp10;
  }

  /** minimum flow temperature */
  @wcrc(0x2b, 0x01)
  @inherit(crcr, crcw)
  model SupplyMinTemp {
    @minValue(8)
    @maxValue(82)
    @step(0.5)
    value: temp10;
  }

  // --- Other setting of the heating circuit, read side only. Address 0x50 is the system
  // manager's own direct heating circuit, the same device as 0x15 (same software version), not
  // a WCM-EM add-on module like 0x51 and 0x52: two WCM-EM modules are installed, at 0x51 and
  // 0x52. It answers this register read with the value of 0x15, so it duplicates the
  // system manager's. ---

  /** boiler boost offset */
  model BoilerMCBoostTemp is Wolf.BoilerMCBoostTemp;

  // --- System clock, read side (writes are a separate lot) ---

  /** day of the week */
  @ext(0x61, 0x21, 0x01)
  model SystemWeekday is CrcRead<weekday>;

  /** day of the month */
  @ext(0x85, 0x22, 0x01)
  model SystemDay is CrcRead<UIN>;

  /** month */
  @ext(0xd9, 0x23, 0x01)
  model SystemMonth is CrcRead<month>;

  /** year */
  @ext(0x11, 0x24, 0x01)
  model SystemYear is CrcRead<UIN>;

  /** hour */
  @ext(0x4d, 0x25, 0x01)
  model SystemHour is CrcRead<hours>;

  /** minute */
  @ext(0xa9, 0x26, 0x01)
  model SystemMinute is CrcRead<minutes>;

  /** second */
  @ext(0xf5, 0x27, 0x01)
  model SystemSecond is CrcRead<seconds>;

  // --- Weekly circulation program, read and written (from the address of ebusd): three
  // switch-time slots per day ---

  /** Monday slot 1 */
  @wcrc(0x10, 0x1a)
  model CircProgramMon1 is SwitchTimesSetting;

  /** Monday slot 2 */
  @wcrc(0x11, 0x1a)
  model CircProgramMon2 is SwitchTimesSetting;

  /** Monday slot 3 */
  @wcrc(0x12, 0x1a)
  model CircProgramMon3 is SwitchTimesSetting;

  /** Tuesday slot 1 */
  @wcrc(0x20, 0x1a)
  model CircProgramTue1 is SwitchTimesSetting;

  /** Tuesday slot 2 */
  @wcrc(0x21, 0x1a)
  model CircProgramTue2 is SwitchTimesSetting;

  /** Tuesday slot 3 */
  @wcrc(0x22, 0x1a)
  model CircProgramTue3 is SwitchTimesSetting;

  /** Wednesday slot 1 */
  @wcrc(0x30, 0x1a)
  model CircProgramWed1 is SwitchTimesSetting;

  /** Wednesday slot 2 */
  @wcrc(0x31, 0x1a)
  model CircProgramWed2 is SwitchTimesSetting;

  /** Wednesday slot 3 */
  @wcrc(0x32, 0x1a)
  model CircProgramWed3 is SwitchTimesSetting;

  /** Thursday slot 1 */
  @wcrc(0x40, 0x1a)
  model CircProgramThu1 is SwitchTimesSetting;

  /** Thursday slot 2 */
  @wcrc(0x41, 0x1a)
  model CircProgramThu2 is SwitchTimesSetting;

  /** Thursday slot 3 */
  @wcrc(0x42, 0x1a)
  model CircProgramThu3 is SwitchTimesSetting;

  /** Friday slot 1 */
  @wcrc(0x50, 0x1a)
  model CircProgramFri1 is SwitchTimesSetting;

  /** Friday slot 2 */
  @wcrc(0x51, 0x1a)
  model CircProgramFri2 is SwitchTimesSetting;

  /** Friday slot 3 */
  @wcrc(0x52, 0x1a)
  model CircProgramFri3 is SwitchTimesSetting;

  /** Saturday slot 1 */
  @wcrc(0x60, 0x1a)
  model CircProgramSat1 is SwitchTimesSetting;

  /** Saturday slot 2 */
  @wcrc(0x61, 0x1a)
  model CircProgramSat2 is SwitchTimesSetting;

  /** Saturday slot 3 */
  @wcrc(0x62, 0x1a)
  model CircProgramSat3 is SwitchTimesSetting;

  /** Sunday slot 1 */
  @wcrc(0x70, 0x1a)
  model CircProgramSun1 is SwitchTimesSetting;

  /** Sunday slot 2 */
  @wcrc(0x71, 0x1a)
  model CircProgramSun2 is SwitchTimesSetting;

  /** Sunday slot 3 */
  @wcrc(0x72, 0x1a)
  model CircProgramSun3 is SwitchTimesSetting;

  // --- Weekly hot-water program, read and written (from the address of ebusd): three
  // switch-time slots per day. It is the program the installation applies ---

  /** Monday slot 1 */
  @wcrc(0x10, 0x17)
  model DHWProgramMon1 is SwitchTimesSetting;

  /** Monday slot 2 */
  @wcrc(0x11, 0x17)
  model DHWProgramMon2 is SwitchTimesSetting;

  /** Monday slot 3 */
  @wcrc(0x12, 0x17)
  model DHWProgramMon3 is SwitchTimesSetting;

  /** Tuesday slot 1 */
  @wcrc(0x20, 0x17)
  model DHWProgramTue1 is SwitchTimesSetting;

  /** Tuesday slot 2 */
  @wcrc(0x21, 0x17)
  model DHWProgramTue2 is SwitchTimesSetting;

  /** Tuesday slot 3 */
  @wcrc(0x22, 0x17)
  model DHWProgramTue3 is SwitchTimesSetting;

  /** Wednesday slot 1 */
  @wcrc(0x30, 0x17)
  model DHWProgramWed1 is SwitchTimesSetting;

  /** Wednesday slot 2 */
  @wcrc(0x31, 0x17)
  model DHWProgramWed2 is SwitchTimesSetting;

  /** Wednesday slot 3 */
  @wcrc(0x32, 0x17)
  model DHWProgramWed3 is SwitchTimesSetting;

  /** Thursday slot 1 */
  @wcrc(0x40, 0x17)
  model DHWProgramThu1 is SwitchTimesSetting;

  /** Thursday slot 2 */
  @wcrc(0x41, 0x17)
  model DHWProgramThu2 is SwitchTimesSetting;

  /** Thursday slot 3 */
  @wcrc(0x42, 0x17)
  model DHWProgramThu3 is SwitchTimesSetting;

  /** Friday slot 1 */
  @wcrc(0x50, 0x17)
  model DHWProgramFri1 is SwitchTimesSetting;

  /** Friday slot 2 */
  @wcrc(0x51, 0x17)
  model DHWProgramFri2 is SwitchTimesSetting;

  /** Friday slot 3 */
  @wcrc(0x52, 0x17)
  model DHWProgramFri3 is SwitchTimesSetting;

  /** Saturday slot 1 */
  @wcrc(0x60, 0x17)
  model DHWProgramSat1 is SwitchTimesSetting;

  /** Saturday slot 2 */
  @wcrc(0x61, 0x17)
  model DHWProgramSat2 is SwitchTimesSetting;

  /** Saturday slot 3 */
  @wcrc(0x62, 0x17)
  model DHWProgramSat3 is SwitchTimesSetting;

  /** Sunday slot 1 */
  @wcrc(0x70, 0x17)
  model DHWProgramSun1 is SwitchTimesSetting;

  /** Sunday slot 2 */
  @wcrc(0x71, 0x17)
  model DHWProgramSun2 is SwitchTimesSetting;

  /** Sunday slot 3 */
  @wcrc(0x72, 0x17)
  model DHWProgramSun3 is SwitchTimesSetting;

  // --- Fault log, read side. ErrorId selects the entry (0 = most recent); the other fields
  // return that entry's code, source and timestamp. Selecting an entry is a write (later lot).

  /** selected fault-log entry (0 = most recent) */
  @ext(0xab, 0x9a, 0x0b)
  model ErrorId is CrcRead<UIN>;

  /** fault code of the selected entry */
  @ext(0xf7, 0x9b, 0x0b)
  model ErrorCode is CrcRead<UIN>;

  /** fault type of the selected entry */
  @ext(0x3f, 0x9c, 0x0b)
  model ErrorType is CrcRead<UIN>;

  /** device that raised the selected entry */
  @ext(0x63, 0x9d, 0x0b)
  model ErrorDevice is CrcRead<UIN>;

  /** fault minute */
  @ext(0xdb, 0x9f, 0x0b)
  model ErrorMinute is CrcRead<minutes>;

  /** fault hour */
  @ext(0xc7, 0xa0, 0x0b)
  model ErrorHour is CrcRead<hours>;

  /** fault day of the month */
  @ext(0x9b, 0xa1, 0x0b)
  model ErrorDay is CrcRead<UIN>;

  /** fault month */
  @ext(0x7f, 0xa2, 0x0b)
  model ErrorMonth is CrcRead<month>;

  /** fault year */
  @ext(0x23, 0xa3, 0x0b)
  model ErrorYear is CrcRead<UIN>;
}
