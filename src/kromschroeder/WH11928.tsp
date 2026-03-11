import "@ebusd/ebus-typespec";
import "./_templates.tsp";

using Ebus;
using Ebus.Num;
using Ebus.Dtm;
using Ebus.Str;

namespace Weishaupt;

namespace memory {

    // ====================================
    // --- RAM ---
    // ====================================

    /** RAM 0x0000 IDLE_R0 */
    @ext(0x5c, 0x01, 0x00)
    model IDLE_R0 is Memory;
    /** RAM 0x0001 IDLE_R1 */
    @ext(0x5d, 0x01, 0x01)
    model IDLE_R1 is Memory;
    /** RAM 0x0002 IDLE_R2 */
    @ext(0x5e, 0x01, 0x02)
    model IDLE_R2 is Memory;
    /** RAM 0x0003 IDLE_R3 */
    @ext(0x5f, 0x01, 0x03)
    model IDLE_R3 is Memory;
    /** RAM 0x0004 IDLE_R4 */
    @ext(0x58, 0x01, 0x04)
    model IDLE_R4 is Memory;
    /** RAM 0x0005 IDLE_R5 */
    @ext(0x59, 0x01, 0x05)
    model IDLE_R5 is Memory;
    /** RAM 0x0006 IDLE_R6 */
    @ext(0x5a, 0x01, 0x06)
    model IDLE_R6 is Memory;
    /** RAM 0x0007 IDLE_R7 */
    @ext(0x5b, 0x01, 0x07)
    model IDLE_R7 is Memory;
    /** RAM 0x000A BYTEDIAGNOSE */
    @ext(0x56, 0x01, 0x0A)
    model BYTEDIAGNOSE is Memory;
//    @ext(0xe6, 0x11, 0x0A)
//    model BYTEDIAGNOSE is Memory<UIN>;

    /** RAM 0x0017 select_FS_x */
    @ext(0x4b, 0x01, 0x17)
    model select_FS_x is Memory;

    // Alias of select_FS_x
    // /** RAM 0x0017 select_PR_x */
    // @ext(0x4b, 0x01, 0x17)
    // model select_PR_x is Memory;

    /** RAM 0x0019 TIRP_R1 */
    @ext(0x45, 0x01, 0x19)
    model TIRP_R1 is Memory;
    /** RAM 0x001A TIRP_R2 */
    @ext(0x46, 0x01, 0x1A)
    model TIRP_R2 is Memory;
    /** RAM 0x001B TIRP_R3 */
    @ext(0x47, 0x01, 0x1B)
    model TIRP_R3 is Memory;
    /** RAM 0x001C TIRP_R4 */
    @ext(0x40, 0x01, 0x1C)
    model TIRP_R4 is Memory;
    /** RAM 0x001D TIRP_R5 */
    @ext(0x41, 0x01, 0x1D)
    model TIRP_R5 is Memory;
    /** RAM 0x001E TIRP_R6 */
    @ext(0x42, 0x01, 0x1E)
    model TIRP_R6 is Memory;
    /** RAM 0x0020 BYTE_20 */
    @ext(0x7c, 0x01, 0x20)
    @inherit(memr, memw)
    model BYTE_20 {
        B_TIRP_WD: BI7,
        TST_RES_B_WD: BI6,
        TASK_1_TFLAG: BI5,
        FS_TASK_RDY: BI4,
        BXCHG: BI3,
        SYS_EVEN_TAKT: BI2,
        ESTANDBY: BI1,
        MC_B: BI0
    }
    /** RAM 0x0021 BYTE_21 */
    @ext(0x7d, 0x01, 0x21)
    @inherit(memr, memw)
    model BYTE_21 {
        WW_TH: BI7,
        RC_ON: BI6,
        NG_N_LEV: BI5,
        RTH: BI4,
        TKKB: BI3,
        WI_SO: BI2,
        WW_ANF: BI1,
        HZ_ANF: BI0
    }
    /** RAM 0x0022 BYTE_22 */
    @ext(0x7e, 0x01, 0x22)
    @inherit(memr, memw)
    model BYTE_22 {
        Abgasklappe_anf: BI7,
        EB_x: BI6,
        MGDW: BI5,
        QQ_FLAG: BI4,
        TX_RETRY_FLAG: BI3,
        STB: BI2,
        HZ_SW: BI1,
        PUWW: BI0
    }
    /** RAM 0x0023 ERR_MERK */
    @ext(0x7f, 0x01, 0x23)
    @inherit(memr, memw)
    model ERR_MERK {
        EM_RAM_ROM: BI7,
        EM_S5_DAT_CRC: BI6,
        EM_EE_RW_ERR: BI5,
        EM_ACT_OVFLOW: BI4,
        EM_SYNC_IRPT: BI3,
        EM_SYNC_RES: BI2,
        EM_DA_CROSS_TALK: BI1,
        EM_DE_OVFLOW: BI0
    }
    /** RAM 0x0024 CONSIS_MARK */
    @ext(0x78, 0x01, 0x24)
    @inherit(memr, memw)
    model CONSIS_MARK {
        CM_STAT_FLANKE: BI7,
        CM_KESS_CRC: BI6,
        CM_SOFT_WD: BI5,
        CM_OTHER_MC: BI4,
        CM_RAM_CONST_DATA: BI3,
        CM_S5_CRC: BI1,
        CM_BAD_CNT: BI0
    }
    /** RAM 0x0025 BYTE_25 */
    @ext(0x79, 0x01, 0x25)
    @inherit(memr, memw)
    model BYTE_25 {
        WW_Takten: BI6,
        DL_Zapfen: BI5,
        ThFrS_WW: BI4,
        DL_Comfort: BI3,
        ThFrS_HZ: BI2,
        HZ_frei: BI1,
        PuFrSanf: BI0
    }
    /** RAM 0x0026 EBUS_BITS */
    @ext(0x7a, 0x01, 0x26)
    @inherit(memr, memw)
    model EBUS_BITS {
        EBUS_TX_ANF: BI7,
        EBUS_MS_TR: BI6,
        EBUS_MS_RT: BI5,
        EBUS_TX1: BI4,
        EBUS_TX2: BI3,
        EBUS_TX7: BI2,
        EBUS_RX2: BI1,
        EBUS_RX: BI0
    }
    /** RAM 0x0027 EB_0000 */
    @ext(0x7b, 0x01, 0x27)
    @inherit(memr, memw)
    model EB_0000 {
        DREHZ_OK: BI7,
        FS_IN_4: BI5,
        FS_IN_3: BI4,
        FS_IN_2: BI3,
        FS_IN_1: BI2,
        LDW: BI1,
        GDW: BI0
    }

    /** RAM 0x0028 EB_0001 */
    @ext(0x74, 0x01, 0x28)
    @inherit(memr, memw)
    model EB_0001 {
        REF_OK: BI7,
        STBA: BI6,
        TFE: BI5,
        PUHZANF: BI4,
        PUWWANF: BI3,
        E_S5_RESET: BI1,
        POWERON: BI1,
        E_EPB_INCON: BI0,
        SYSFAIL: BI0
    }

    /** RAM 0x0029 T_0108 */
    @ext(0x75, 0x01, 0x29)
    @inherit(memr, memw)
    model T_0108 {
        TZUENDVOR: BI7,
        TFLVERZZ: BI6,
        TNACHFACK: BI5,
        TNBL: BI4,
        TFLASTAB: BI3,
        TSZA: BI2,
        TWARTEVSP: BI1,
        TZUENDSZA: BI1,
        TIMEOUT: BI0
    }
    /** RAM 0x002A T_CALT_0108 */
    @ext(0x76, 0x01, 0x2A)
    model T_CALT_0108 is Memory;
    /** RAM 0x002B AB_0000 */
    @ext(0x77, 0x01, 0x2B)
    @inherit(memr, memw)
    model AB_0000 {
        PROG_REL_3: BI7,
        PUHZ: BI6,
        PROG_REL_2: BI5,
        PROG_REL_1: BI4,
        ZUEND: BI1,
        COMMON: BI0
    }
    /** RAM 0x002C MB_0000 */
    @ext(0x70, 0x01, 0x2C)
    @inherit(memr, memw)
    model MB_0000 {
        SREGFREI: BI7,
        SFLASTAB: BI6,
        SSZA: BI5,
        SZUENDVOR: BI4,
        SWARTEVSP: BI3,
        SARBLDW: BI2,
        SRUHELDW: BI1,
        SSTANDBY: BI0
    }
    /** RAM 0x002D MB_0001 */
    @ext(0x71, 0x01, 0x2D)
    @inherit(memr, memw)
    model MB_0001 {
        LO_KFLB: BI7,
        FLANKE_TNACHFACK: BI6,
        MV1_LAST: BI6,
        DUMMY: BI5,
        MTHGDWSTB: BI4,
        MFE: BI3,
        SFAULT: BI2,
        SNBL: BI1,
        SNACHFACK: BI0
    }
    /** RAM 0x002E MB_0002 */
    @ext(0x72, 0x01, 0x2E)
    @inherit(memr, memw)
    model MB_0002 {
        MRESTARTED: BI7,
        LO_ION: BI6,
        LO_STBA: BI5,
        LO_STB: BI4,
        LO_VX_BAD: BI3,
        LO_KFLZ: BI1,
        LO_FRELI: BI0
    }
    /** RAM 0x002F MB_0003 */
    @ext(0x73, 0x01, 0x2F)
    @inherit(memr, memw)
    model MB_0003 {
        OPTNOEMERGENCYRESET: BI7,
        OPT_GDW: BI6,
        OPT_TC: BI5,
        OPTNOLDW: BI4,
        OPT_NGIST: BI3,
        OPTLDW_VSP: BI2,
        OPTNACHFAC: BI1,
        OPTRESTART: BI0
    }
    /** RAM 0x0030 TCVSP */
    @ext(0x6c, 0x01, 0x30)
    model TCVSP is Memory;
    /** RAM 0x0031 TCHZZ */
    @ext(0x6d, 0x01, 0x31)
    model TCHZZ is Memory;

    // Alias of TCHZZ
    // /** RAM 0x0031 TCSZA */
    // @ext(0x6d, 0x01, 0x31)
    // model TCSZA is Memory;

    /** RAM 0x0032 TCNSP */
    @ext(0x6e, 0x01, 0x32)
    model TCNSP is Memory;
    /** RAM 0x0033 TCFLASTAB */
    @ext(0x6f, 0x01, 0x33)
    model TCFLASTAB is Memory;
    /** RAM 0x0034 NG_VSP */
    @ext(0x68, 0x01, 0x34)
    model NG_VSP is Memory;
    /** RAM 0x0035 NG_NSP */
    @ext(0x69, 0x01, 0x35)
    model NG_NSP is Memory;
    /** RAM 0x0036 NG_GR_MIN */
    @ext(0x6a, 0x01, 0x36)
    model NG_GR_MIN is Memory;
    /** RAM 0x0037 NG_GR_MAX */
    @ext(0x6b, 0x01, 0x37)
    model NG_GR_MAX is Memory;
    /** RAM 0x0038 NG_MAX_LIMIT */
    @ext(0x64, 0x01, 0x38)
    model NG_MAX_LIMIT is Memory;
    /** RAM 0x0039 MXSTB_K */
    @ext(0x65, 0x01, 0x39)
    model MXSTB_K is Memory;
    /** RAM 0x003A MXSTW_K */
    @ext(0x66, 0x01, 0x3A)
    model MXSTW_K is Memory;
    /** RAM 0x003B ION_ON */
    @ext(0x67, 0x01, 0x3B)
    model ION_ON is Memory;
    /** RAM 0x003C ION_OFF */
    @ext(0x60, 0x01, 0x3C)
    model ION_OFF is Memory;
    /** RAM 0x003D LIM_ION_FLASTAB */
    @ext(0x61, 0x01, 0x3D)
    model LIM_ION_FLASTAB is Memory;
    /** RAM 0x003E TC_PRUEF_V1 */
    @ext(0x62, 0x01, 0x3E)
    model TC_PRUEF_V1 is Memory;
    /** RAM 0x003F TC_PRUEF_V2 */
    @ext(0x63, 0x01, 0x3F)
    model TC_PRUEF_V2 is Memory;
    /** RAM 0x0040 P_LPG */
    @ext(0x1c, 0x01, 0x40)
    model P_LPG is Memory;
    /** RAM 0x0041 KASK_P_ANHEB */
    @ext(0x1d, 0x01, 0x41)
    model KASK_P_ANHEB is Memory;
    /** RAM 0x0042 KLAPPE_P_ANHEB */
    @ext(0x1e, 0x01, 0x42)
    model KLAPPE_P_ANHEB is Memory;
    /** RAM 0x0043 MAXGFASTART */
    @ext(0x1f, 0x01, 0x43)
    model MAXGFASTART is Memory;
    /** RAM 0x0044 NG_BR_MIN */
    @ext(0x18, 0x01, 0x44)
    model NG_BR_MIN is Memory;
    /** RAM 0x0045 EE_CONST_CRC */
    @ext(0x19, 0x01, 0x45)
    model EE_CONST_CRC is Memory;
    /** RAM 0x0046 T_CNT_0001 */
    @ext(0x1a, 0x01, 0x46)
    model T_CNT_0001 is Memory;
    /** RAM 0x0047 T_CNT_0002 */
    @ext(0x1b, 0x01, 0x47)
    model T_CNT_0002 is Memory;
    /** RAM 0x0048 T_CNT_0003 */
    @ext(0x14, 0x01, 0x48)
    model T_CNT_0003 is Memory;
    /** RAM 0x0049 T_CNT_0004 */
    @ext(0x15, 0x01, 0x49)
    model T_CNT_0004 is Memory;
    /** RAM 0x004A T_CNT_0005 */
    @ext(0x16, 0x01, 0x4A)
    model T_CNT_0005 is Memory;
    /** RAM 0x004B T_CNT_0006 */
    @ext(0x17, 0x01, 0x4B)
    model T_CNT_0006 is Memory;
    /** RAM 0x004C T_CNT_0007 */
    @ext(0x10, 0x01, 0x4C)
    model T_CNT_0007 is Memory;
    /** RAM 0x004D T_CNT_0008 */
    @ext(0x11, 0x01, 0x4D)
    model T_CNT_0008 is Memory;
    /** RAM 0x004E T_CNT_0009 */
    @ext(0x12, 0x01, 0x4E)
    model T_CNT_0009 is Memory;
    /** RAM 0x004F EPIONNULL */
    @ext(0x13, 0x01, 0x4F)
    model EPIONNULL is Memory;
    /** RAM 0x0050 S5_DAT_CRC */
    @ext(0x0c, 0x01, 0x50)
    model S5_DAT_CRC is Memory;
    /** RAM 0x0051 MB_2_ALT */
    @ext(0x0d, 0x01, 0x51)
    model MB_2_ALT is Memory;
    /** RAM 0x0052 BE1_50HZ_CNT */
    @ext(0x0e, 0x01, 0x52)
    model BE1_50HZ_CNT is Memory;
    /** RAM 0x0053 BE2_50HZ_CNT */
    @ext(0x0f, 0x01, 0x53)
    model BE2_50HZ_CNT is Memory;
    /** RAM 0x0054 BE3_50HZ_CNT */
    @ext(0x08, 0x01, 0x54)
    model BE3_50HZ_CNT is Memory;
    /** RAM 0x0055 BE4_50HZ_CNT */
    @ext(0x09, 0x01, 0x55)
    model BE4_50HZ_CNT is Memory;
    /** RAM 0x0056 BE5_50HZ_CNT */
    @ext(0x0a, 0x01, 0x56)
    model BE5_50HZ_CNT is Memory;
    /** RAM 0x0057 BE6_50HZ_CNT */
    @ext(0x0b, 0x01, 0x57)
    model BE6_50HZ_CNT is Memory;
    /** RAM 0x0058 BE7_50HZ_CNT */
    @ext(0x04, 0x01, 0x58)
    model BE7_50HZ_CNT is Memory;
    /** RAM 0x0059 BE8_50HZ_CNT */
    @ext(0x05, 0x01, 0x59)
    model BE8_50HZ_CNT is Memory;

    // Alias of BE8_50HZ_CNT
    // /** RAM 0x0059 NGIST_CNT */
    // @ext(0x05, 0x01, 0x59)
    // model NGIST_CNT is Memory;
    /** RAM 0x005A RES_CYCL_CNT */
    @ext(0x06, 0x01, 0x5A)
    model RES_CYCL_CNT is Memory;
    /** RAM 0x005B RES_CNT */
    @ext(0x07, 0x01, 0x5B)
    model RES_CNT is Memory;
    /** RAM 0x005C RES_CNT_INV */
    @ext(0x00, 0x01, 0x5C)
    model RES_CNT_INV is Memory;
    /** RAM 0x005D TVISTAD */
    @ext(0x01, 0x01, 0x5D)
    model TVISTAD is Memory;
    /** RAM 0x005E T_ESTB2 */
    @ext(0x02, 0x01, 0x5E)
    model T_ESTB2 is Memory;
    /** RAM 0x005F Z_ION */
    @ext(0x03, 0x01, 0x5F)
    model Z_ION is Memory;
    /** RAM 0x0060 AB_0000_ALT */
    @ext(0x3c, 0x01, 0x60)
    model AB_0000_ALT is Memory;
    /** RAM 0x0061 TH1_2 */
    @ext(0x3d, 0x01, 0x61)
    model TH1_2 is Memory;
    /** RAM 0x0062 TRLIST */
    @ext(0x3e, 0x01, 0x62)
    model TRLIST is Memory;
    /** RAM 0x0063 TABGAS */
    @ext(0x3f, 0x01, 0x63)
    model TABGAS is Memory;
    /** RAM 0x0064 CNTBOOSTER */
    @ext(0x38, 0x01, 0x64)
    model CNTBOOSTER is Memory;
    /** RAM 0x0065 F_CODE */
    @ext(0x39, 0x01, 0x65)
    model F_CODE is Memory;
    /** RAM 0x0066 ANAIN4 */
    @ext(0x3a, 0x01, 0x66)
    model ANAIN4 is Memory;
    /** RAM 0x0067 SMON_TIMEOUT */
    @ext(0x3b, 0x01, 0x67)
    model SMON_TIMEOUT is Memory;
    /** RAM 0x0068 TVIST */
    @ext(0x34, 0x01, 0x68)
    model TVIST is Memory;
    /** RAM 0x0069 V24_CCMD */
    @ext(0x35, 0x01, 0x69)
    model V24_CCMD is Memory;
    /** RAM 0x006A TWWIST */
    @ext(0x36, 0x01, 0x6A)
    model TWWIST is Memory;
    /** RAM 0x006B V24_IADR */
    @ext(0x37, 0x01, 0x6B)
    model V24_IADR is Memory;
    /** RAM 0x006C TAUSSEN */
    @ext(0x30, 0x01, 0x6C)
    model TAUSSEN is Memory;
    /** RAM 0x006D V24_RXCNT1MS */
    @ext(0x31, 0x01, 0x6D)
    model V24_RXCNT1MS is Memory;
    /** RAM 0x006E TVSOLL */
    @ext(0x32, 0x01, 0x6E)
    model TVSOLL is Memory;
    /** RAM 0x006F TWWSOLL_HS */
    @ext(0x33, 0x01, 0x6F)
    model TWWSOLL_HS is Memory;
    /** RAM 0x0070 KESZUST */
    @ext(0x2c, 0x01, 0x70)
    model KESZUST is Memory;
    /** RAM 0x0071 TAUSS_HS */
    @ext(0x2d, 0x01, 0x71)
    model TAUSS_HS is Memory;
    /** RAM 0x0072 HZZUSTBM */
    @ext(0x2e, 0x01, 0x72)
    model HZZUSTBM is Memory;
    /** RAM 0x0073 V24_TXCNT */
    @ext(0x2f, 0x01, 0x73)
    model V24_TXCNT is Memory;
    /** RAM 0x0074 WWZUSTBM */
    @ext(0x28, 0x01, 0x74)
    model WWZUSTBM is Memory;
    /** RAM 0x0075 WWZUSTKM */
    @ext(0x29, 0x01, 0x75)
    model WWZUSTKM is Memory;
    /** RAM 0x0076 V24_ODAT */
    @ext(0x2a, 0x01, 0x76)
    model V24_ODAT is Memory;
    /** RAM 0x0077 NGIST */
    @ext(0x2b, 0x01, 0x77)
    model NGIST is Memory;
    /** RAM 0x0078 NGSOLL */
    @ext(0x24, 0x01, 0x78)
    model NGSOLL is Memory;
    /** RAM 0x0079 ICL100MSEC */
    @ext(0x25, 0x01, 0x79)
    model ICL100MSEC is Memory;
    /** RAM 0x007A ICL20SEC */
    @ext(0x26, 0x01, 0x7A)
    model ICL20SEC is Memory;
    /** RAM 0x007B ICL1HRS */
    @ext(0x27, 0x01, 0x7B)
    model ICL1HRS is Memory;
    /** RAM 0x007C CNTGDWOSZ */
    @ext(0x20, 0x01, 0x7C)
    model CNTGDWOSZ is Memory;
    /** RAM 0x007D S5_ERR_CODE */
    @ext(0x21, 0x01, 0x7D)
    model S5_ERR_CODE is Memory;
    /** RAM 0x007E YPWM */
    @ext(0x22, 0x01, 0x7E)
    model YPWM is Memory;
    /** RAM 0x0080 STACK */
    @ext(0xdc, 0x01, 0x80)
    model STACK is Memory;
//    @ext(0x6c, 0x11, 0x80)
//    model STACK is Memory<UIN>;

    /** RAM 0x00AB MAXTVSOLL */
     @ext(0xf7, 0x01, 0xAB)
     model MAXTVSOLL is Memory;
    /** RAM 0x00AC MINTVSOLL */
    @ext(0xf0, 0x01, 0xAC)
    model MINTVSOLL is Memory;
    /** RAM 0x00AD HZ_HYS */
    @ext(0xf1, 0x01, 0xAD)
    model HZ_HYS is Memory;
    /** RAM 0x00AE TBRMINOFF */
    @ext(0xf2, 0x01, 0xAE)
    model TBRMINOFF is Memory;
    /** RAM 0x00AF TC_SOFTSTART */
    @ext(0xf3, 0x01, 0xAF)
    model TC_SOFTSTART is Memory;
    /** RAM 0x00B0 HZ_KP */
    @ext(0xec, 0x01, 0xB0)
    model HZ_KP is Memory;
    /** RAM 0x00B1 HZ_KTND */
    @ext(0xed, 0x01, 0xB1)
    model HZ_KTND is Memory;
    /** RAM 0x00B2 SONDERNIVEAU */
    @ext(0xee, 0x01, 0xB2)
    model SONDERNIVEAU is Memory;
    /** RAM 0x00B3 TAUSS_KORREKTUR */
    @ext(0xef, 0x01, 0xB3)
    model TAUSS_KORREKTUR is Memory;
    /** RAM 0x00B4 WARTUNGSINTERVALL */
    @ext(0xe8, 0x01, 0xB4)
    model WARTUNGSINTERVALL is Memory;
    /** RAM 0x00B5 MX_DREHZ_KESSEL */
    @ext(0xe9, 0x01, 0xB5)
    model MX_DREHZ_KESSEL is Memory;
    /** RAM 0x00B6 NG_ZUEND */
    @ext(0xea, 0x01, 0xB6)
    model NG_ZUEND is Memory;
    /** RAM 0x00B7 KESSEL_VARIANTE */
    @ext(0xeb, 0x01, 0xB7)
    model KESSEL_VARIANTE is Memory;
    /** RAM 0x00B8 MXGRADTVIST */
    @ext(0xe4, 0x01, 0xB8)
    model MXGRADTVIST is Memory;
    /** RAM 0x00B9 MXTABGAS */
    @ext(0xe5, 0x01, 0xB9)
    model MXTABGAS is Memory;
    /** RAM 0x00BA TOL_TIME */
    @ext(0xe6, 0x01, 0xBA)
    model TOL_TIME is Memory;
    /** RAM 0x00BB NG_DGESCHW */
    @ext(0xe7, 0x01, 0xBB)
    model NG_DGESCHW is Memory;
    /** RAM 0x00BC NG_INCR_DECR */
    @ext(0xe0, 0x01, 0xBC)
    model NG_INCR_DECR is Memory;
    /** RAM 0x00BD NG_HZ_MIN */
    @ext(0xe1, 0x01, 0xBD)
    model NG_HZ_MIN is Memory;
    /** RAM 0x00BE NG_HZ_FREI */
    @ext(0xe2, 0x01, 0xBE)
    model NG_HZ_FREI is Memory;
    /** RAM 0x00BF NG_HZ_MAX */
    @ext(0xe3, 0x01, 0xBF)
    model NG_HZ_MAX is Memory;
    /** RAM 0x00C0 PUHZ_VSP */
    @ext(0x9c, 0x01, 0xC0)
    model PUHZ_VSP is Memory;
    /** RAM 0x00C1 PUHZ_MIN */
    @ext(0x9d, 0x01, 0xC1)
    model PUHZ_MIN is Memory;
    /** RAM 0x00C2 PUHZ_MAX */
    @ext(0x9e, 0x01, 0xC2)
    model PUHZ_MAX is Memory;
    /** RAM 0x00C3 PUHZ_DT_REG */
    @ext(0x9f, 0x01, 0xC3)
    model PUHZ_DT_REG is Memory;
    /** RAM 0x00C4 PU_TAKT */
    @ext(0x98, 0x01, 0xC4)
    model PU_TAKT is Memory;
    /** RAM 0x00C5 DT_VLRL_SOLL */
    @ext(0x99, 0x01, 0xC5)
    model DT_VLRL_SOLL is Memory;
    /** RAM 0x00C6 DT_VLRL_MAX */
    @ext(0x9a, 0x01, 0xC6)
    model DT_VLRL_MAX is Memory;
    /** RAM 0x00C7 DT_VL_ESTB2_MAX */
    @ext(0x9b, 0x01, 0xC7)
    model DT_VL_ESTB2_MAX is Memory;
    /** RAM 0x00C8 PNL_HZ */
    @ext(0x94, 0x01, 0xC8)
    model PNL_HZ is Memory;
    /** RAM 0x00C9 MAXWWSOLL */
    @ext(0x95, 0x01, 0xC9)
    model MAXWWSOLL is Memory;
    /** RAM 0x00CA MINWWSOLL */
    @ext(0x96, 0x01, 0xCA)
    model MINWWSOLL is Memory;
    /** RAM 0x00CB WW_HYS */
    @ext(0x97, 0x01, 0xCB)
    model WW_HYS is Memory;
    /** RAM 0x00CC TWWPLUS */
    @ext(0x90, 0x01, 0xCC)
    model TWWPLUS is Memory;
    /** RAM 0x00CD NG_WW_MIN */
    @ext(0x91, 0x01, 0xCD)
    model NG_WW_MIN is Memory;
    /** RAM 0x00CE NG_WW_FREI */
    @ext(0x92, 0x01, 0xCE)
    model NG_WW_FREI is Memory;
    /** RAM 0x00CF NG_WW_MAX */
    @ext(0x93, 0x01, 0xCF)
    model NG_WW_MAX is Memory;
    /** RAM 0x00D0 PUHZ_WW */
    @ext(0x8c, 0x01, 0xD0)
    model PUHZ_WW is Memory;
    /** RAM 0x00D1 PNL_WW */
    @ext(0x8d, 0x01, 0xD1)
    model PNL_WW is Memory;
    /** RAM 0x00D2 TFRS_A */
    @ext(0x8e, 0x01, 0xD2)
    model TFRS_A is Memory;
    /** RAM 0x00D3 NG_KP */
    @ext(0x8f, 0x01, 0xD3)
    model NG_KP is Memory;
    /** RAM 0x00D4 NG_KTN */
    @ext(0x88, 0x01, 0xD4)
    model NG_KTN is Memory;
    /** RAM 0x00D5 NG_REG_ANPASS */
    @ext(0x89, 0x01, 0xD5)
    model NG_REG_ANPASS is Memory;
    /** RAM 0x00D6 SEL_IN_1_2 */
    @ext(0x8a, 0x01, 0xD6)
    model SEL_IN_1_2 is Memory;
    /** RAM 0x00D7 SEL_IN_3_4 */
    @ext(0x8b, 0x01, 0xD7)
    model SEL_IN_3_4 is Memory;
    /** RAM 0x00D8 SEL_PR_1_2 */
    @ext(0x84, 0x01, 0xD8)
    model SEL_PR_1_2 is Memory;
    /** RAM 0x00D9 SEL_PR_3_4 */
    @ext(0x85, 0x01, 0xD9)
    model SEL_PR_3_4 is Memory;
    /** RAM 0x00DA KLAPPENLAUFZEIT */
    @ext(0x86, 0x01, 0xDA)
    model KLAPPENLAUFZEIT is Memory;
    /** RAM 0x00DB PARA_DT_WEICHE_VL */
    @ext(0x87, 0x01, 0xDB)
    model PARA_DT_WEICHE_VL is Memory;
    /** RAM 0x00DC V24_KM_ADR */
    @ext(0x80, 0x01, 0xDC)
    model V24_KM_ADR is Memory;
    /** RAM 0x00DD KESS_OPT */
    @ext(0x81, 0x01, 0xDD)
    model KESS_OPT is Memory;
    /** RAM 0x00DE KESS_OPT_2 */
    @ext(0x82, 0x01, 0xDE)
    model KESS_OPT_2 is Memory;
    /** RAM 0x00DF KESS_BITS */
    @ext(0x83, 0x01, 0xDF)
    model KESS_BITS is Memory;
    /** RAM 0x00E0 REF_KORR */
    @ext(0xbc, 0x01, 0xE0)
    model REF_KORR is Memory;
    /** RAM 0x00E1 KES_DAT_CRC */
    @ext(0xbd, 0x01, 0xE1)
    model KES_DAT_CRC is Memory;
    /** RAM 0x00E2 AIN_FS_ERR_MASK */
    @ext(0xbe, 0x01, 0xE2)
    model AIN_FS_ERR_MASK is Memory;
    /** RAM 0x00E3 ERR_MERK_ALT */
    @ext(0xbf, 0x01, 0xE3)
    model ERR_MERK_ALT is Memory;
    /** RAM 0x00E4 F_CODE_ALT */
    @ext(0xb8, 0x01, 0xE4)
    model F_CODE_ALT is Memory;
    /** RAM 0x00E5 ROM_DPH */
    @ext(0xb9, 0x01, 0xE5)
    model ROM_DPH is Memory;
    /** RAM 0x00E6 ROM_DPL */
    @ext(0xba, 0x01, 0xE6)
    model ROM_DPL is Memory;
    /** RAM 0x00E7 ROM_H */
    @ext(0xbb, 0x01, 0xE7)
    model ROM_H is Memory;
    /** RAM 0x00E8 ROM_L */
    @ext(0xb4, 0x01, 0xE8)
    model ROM_L is Memory;
    /** RAM 0x00E9 V24_SCOM_ADR */
    @ext(0xb5, 0x01, 0xE9)
    model V24_SCOM_ADR is Memory;
    /** RAM 0x00EA S5STEP */
    @ext(0xb6, 0x01, 0xEA)
    model S5STEP is Memory;
    /** RAM 0x00EC NGXW1 */
    @ext(0xb0, 0x01, 0xEC)
    model NGXW1 is Memory;
    /** RAM 0x00ED PUHZPWM */
    @ext(0xb1, 0x01, 0xED)
    model PUHZPWM is Memory;
    /** RAM 0x00EE K_ZUST_BITS */
    @ext(0xb2, 0x01, 0xEE)
    model K_ZUST_BITS is Memory;
    /** RAM 0x00EF K_ZUST_BITS_2 */
    @ext(0xb3, 0x01, 0xEF)
    model K_ZUST_BITS_2 is Memory;
    /** RAM 0x00F0 V24_HIADR */
    @ext(0xac, 0x01, 0xF0)
    model V24_HIADR is Memory;
    /** RAM 0x00F1 ICL20SEC_ALT */
    @ext(0xad, 0x01, 0xF1)
    model ICL20SEC_ALT is Memory;
    /** RAM 0x00F2 ICL1HRS_ALT */
    @ext(0xae, 0x01, 0xF2)
    model ICL1HRS_ALT is Memory;
    /** RAM 0x00F3 RES_CNT_ALT */
    @ext(0xaf, 0x01, 0xF3)
    model RES_CNT_ALT is Memory;
    /** RAM 0x00F4 NGIST_2 */
    @ext(0xa8, 0x01, 0xF4)
    model NGIST_2 is Memory;
    /** RAM 0x00F6 NM_EBUS_STATUS */
    @ext(0xaa, 0x01, 0xF6)
    model NM_EBUS_STATUS is Memory;
    /** RAM 0x00F7 NM_ZUSTAND */
    @ext(0xab, 0x01, 0xF7)
    model NM_ZUSTAND is Memory;
    /** RAM 0x00F8 BCC_STATUS */
    @ext(0xa4, 0x01, 0xF8)
    model BCC_STATUS is Memory;
    /** RAM 0x00F9 S7_BITS */
    @ext(0xa5, 0x01, 0xF9)
    model S7_BITS is Memory;


    // ====================================
    // --- SFR ---
    // ====================================

    /** SFR 0x0080 P0_ALTSEL0 */
    @ext(0xac, 0x04, 0x80)
    model P0_ALTSEL0 is Memory;
//    @ext(0x1c, 0x14, 0x80)
//    model P0_ALTSEL0 is Memory<UIN>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_DATA */
    // @ext(0xac, 0x04, 0x80)
    // model P0_DATA is Memory;
//    // @ext(0x1c, 0x14, 0x80)
//    // model P0_DATA is Memory<UIN>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_OD */
    // @ext(0xac, 0x04, 0x80)
    // model P0_OD is Memory;
//    // @ext(0x1c, 0x14, 0x80)
//    // model P0_OD is Memory<UIN>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_PUDSEL */
    // @ext(0xac, 0x04, 0x80)
    // model P0_PUDSEL is Memory;
//    // @ext(0x1c, 0x14, 0x80)
//    // model P0_PUDSEL is Memory<UIN>;

    /** SFR 0x0082 DPL */
    @ext(0xae, 0x04, 0x82)
    model DPL is Memory;
//    @ext(0x1e, 0x14, 0x82)
//    model DPL is Memory<UIN>;

    /** SFR 0x0083 DPH */
    @ext(0xaf, 0x04, 0x83)
    model DPH is Memory;

    /** SFR 0x0086 P0_ALTSEL1 */
    @ext(0xaa, 0x04, 0x86)
    model P0_ALTSEL1 is Memory;
//    @ext(0x1a, 0x14, 0x86)
//    model P0_ALTSEL1 is Memory<UIN>;

    // Alias of P0_ALTSEL1
    // /** SFR 0x0086 P0_DIR */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_DIR is Memory;
//    // @ext(0x1a, 0x14, 0x86)
//    // model P0_DIR is Memory<UIN>;

    // Alias of P0_ALTSEL1
    // /** SFR 0x0086 P0_PUDEN */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_PUDEN is Memory;
//    // @ext(0x1a, 0x14, 0x86)
//    // model P0_PUDEN is Memory<UIN>;

    /** SFR 0x0087 PCON */
    @ext(0xab, 0x04, 0x87)
    model PCON is Memory;

    /** SFR 0x0088 TCON */
    @ext(0xa4, 0x04, 0x88)
    model TCON is Memory;
//    @ext(0x14, 0x14, 0x88)
//    model TCON is Memory<UIN>;

    /** SFR 0x0089 TMOD */
    @ext(0xa5, 0x04, 0x89)
    model TMOD is Memory;

    /** SFR 0x008A TL0 */
    @ext(0xa6, 0x04, 0x8A)
    model TL0 is Memory;
//    @ext(0x16, 0x14, 0x8A)
//    model TL0 is Memory<UIN>;

    /** SFR 0x008B ION_TIMER_LOW */
    @ext(0xa7, 0x04, 0x8B)
    model ION_TIMER_LOW is Memory;

    // Alias of ION_TIMER_LOW
    // /** SFR 0x008B TL1 */
    // @ext(0xa7, 0x04, 0x8B)
    // model TL1 is Memory;

    /** SFR 0x008C TH0 */
    @ext(0xa0, 0x04, 0x8C)
    model TH0 is Memory;
//    @ext(0x10, 0x14, 0x8C)
//    model TH0 is Memory<UIN>;

    /** SFR 0x008D ION_TIMER_HIGH */
    @ext(0xa1, 0x04, 0x8D)
    model ION_TIMER_HIGH is Memory;

    // Alias of ION_TIMER_HIGH
    // /** SFR 0x008D TH1 */
    // @ext(0xa1, 0x04, 0x8D)
    // model TH1 is Memory;

    /** SFR 0x008F SYSCON0 */
    @ext(0xa3, 0x04, 0x8F)
    model SYSCON0 is Memory;

    /** SFR 0x0090 DO_PORT */
    @ext(0xbc, 0x04, 0x90)
    model DO_PORT is Memory;
//    @ext(0x0c, 0x14, 0x90)
//    model DO_PORT is Memory<UIN>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1ANA */
    // @ext(0xbc, 0x04, 0x90)
    // model P1ANA is Memory;
//    // @ext(0x0c, 0x14, 0x90)
//    // model P1ANA is Memory<UIN>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_ALTSEL0 */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_ALTSEL0 is Memory;
//    // @ext(0x0c, 0x14, 0x90)
//    // model P1_ALTSEL0 is Memory<UIN>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_DATA */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_DATA is Memory;
//    // @ext(0x0c, 0x14, 0x90)
//    // model P1_DATA is Memory<UIN>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_OD */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_OD is Memory;
//    // @ext(0x0c, 0x14, 0x90)
//    // model P1_OD is Memory<UIN>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_PUDSEL */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_PUDSEL is Memory;
//    // @ext(0x0c, 0x14, 0x90)
//    // model P1_PUDSEL is Memory<UIN>;

    /** SFR 0x0091 P1_ALTSEL1 */
    @ext(0xbd, 0x04, 0x91)
    model P1_ALTSEL1 is Memory;

    // Alias of P1_ALTSEL1
    // /** SFR 0x0091 P1_DIR */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_DIR is Memory;

    // Alias of P1_ALTSEL1
    // /** SFR 0x0091 P1_PUDEN */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_PUDEN is Memory;

    // Alias of P1_ALTSEL1
    // /** SFR 0x0091 XPAGE */
    // @ext(0xbd, 0x04, 0x91)
    // model XPAGE is Memory;

    /** SFR 0x0092 DPSEL */
    @ext(0xbe, 0x04, 0x92)
    model DPSEL is Memory;
//    @ext(0x0e, 0x14, 0x92)
//    model DPSEL is Memory<UIN>;

    // Alias of DPSEL
    // /** SFR 0x0092 P5_ALTSEL0 */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_ALTSEL0 is Memory;
//    // @ext(0x0e, 0x14, 0x92)
//    // model P5_ALTSEL0 is Memory<UIN>;

    // Alias of DPSEL
    // /** SFR 0x0092 P5_DATA */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_DATA is Memory;
//    // @ext(0x0e, 0x14, 0x92)
//    // model P5_DATA is Memory<UIN>;

    // Alias of DPSEL
    // /** SFR 0x0092 P5_OD */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_OD is Memory;
//    // @ext(0x0e, 0x14, 0x92)
//    // model P5_OD is Memory<UIN>;

    // Alias of DPSEL
    // /** SFR 0x0092 P5_PUDSEL */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_PUDSEL is Memory;
//    // @ext(0x0e, 0x14, 0x92)
//    // model P5_PUDSEL is Memory<UIN>;

    /** SFR 0x0093 P5_ALTSEL1 */
    @ext(0xbf, 0x04, 0x93)
    model P5_ALTSEL1 is Memory;

    // Alias of P5_ALTSEL1
    // /** SFR 0x0093 P5_DIR */
    // @ext(0xbf, 0x04, 0x93)
    // model P5_DIR is Memory;

    // Alias of P5_ALTSEL1
    // /** SFR 0x0093 P5_PUDEN */
    // @ext(0xbf, 0x04, 0x93)
    // model P5_PUDEN is Memory;

    /** SFR 0x0098 SCON */
    @ext(0xb4, 0x04, 0x98)
    model SCON is Memory;
//    @ext(0x04, 0x14, 0x98)
//    model SCON is Memory<UIN>;

    /** SFR 0x0099 SBUF */
    @ext(0xb5, 0x04, 0x99)
    model SBUF is Memory;

    /** SFR 0x009A CCL_GEBL */
    @ext(0xb6, 0x04, 0x9A)
    model CCL_GEBL is Memory;
//    @ext(0x06, 0x14, 0x9A)
//    model CCL_GEBL is Memory<UIN>;

    // Alias of CCL_GEBL
    // /** SFR 0x009A CCU6_CC63RL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_CC63RL is Memory;
//    // @ext(0x06, 0x14, 0x9A)
//    // model CCU6_CC63RL is Memory<UIN>;

    // Alias of CCL_GEBL
    // /** SFR 0x009A CCU6_CC63SRL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_CC63SRL is Memory;
//    // @ext(0x06, 0x14, 0x9A)
//    // model CCU6_CC63SRL is Memory<UIN>;

    // Alias of CCL_GEBL
    // /** SFR 0x009A CCU6_MCMOUTL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_MCMOUTL is Memory;
//    // @ext(0x06, 0x14, 0x9A)
//    // model CCU6_MCMOUTL is Memory<UIN>;

    // Alias of CCL_GEBL
    // /** SFR 0x009A CCU6_T12MSELL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_T12MSELL is Memory;
//    // @ext(0x06, 0x14, 0x9A)
//    // model CCU6_T12MSELL is Memory<UIN>;

    // Alias of CCL_GEBL
    // /** SFR 0x009A CD_CORDXL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CD_CORDXL is Memory;
//    // @ext(0x06, 0x14, 0x9A)
//    // model CD_CORDXL is Memory<UIN>;

    /** SFR 0x009B CCH_GEBL */
    @ext(0xb7, 0x04, 0x9B)
    model CCH_GEBL is Memory;

    // Alias of CCH_GEBL
    // /** SFR 0x009B CCU6_CC63RH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_CC63RH is Memory;

    // Alias of CCH_GEBL
    // /** SFR 0x009B CCU6_CC63SRH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_CC63SRH is Memory;

    // Alias of CCH_GEBL
    // /** SFR 0x009B CCU6_MCMOUTH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_MCMOUTH is Memory;

    // Alias of CCH_GEBL
    // /** SFR 0x009B CCU6_T12MSELH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_T12MSELH is Memory;

    // Alias of CCH_GEBL
    // /** SFR 0x009B CD_CORDXH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CD_CORDXH is Memory;

    /** SFR 0x009C CCU6_IENL */
    @ext(0xb0, 0x04, 0x9C)
    model CCU6_IENL is Memory;
//    @ext(0x00, 0x14, 0x9C)
//    model CCU6_IENL is Memory<UIN>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_ISL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_ISL is Memory;
//    // @ext(0x00, 0x14, 0x9C)
//    // model CCU6_ISL is Memory<UIN>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_T12PRL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_T12PRL is Memory;
//    // @ext(0x00, 0x14, 0x9C)
//    // model CCU6_T12PRL is Memory<UIN>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_TCTR4L */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_TCTR4L is Memory;
//    // @ext(0x00, 0x14, 0x9C)
//    // model CCU6_TCTR4L is Memory<UIN>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CD_CORDYL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CD_CORDYL is Memory;
//    // @ext(0x00, 0x14, 0x9C)
//    // model CD_CORDYL is Memory<UIN>;

    /** SFR 0x009D CCU6_IENH */
    @ext(0xb1, 0x04, 0x9D)
    model CCU6_IENH is Memory;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_ISH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_ISH is Memory;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_T12PRH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_T12PRH is Memory;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_TCTR4H */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_TCTR4H is Memory;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CD_CORDYH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CD_CORDYH is Memory;

    /** SFR 0x009E CCU6_INPL */
    @ext(0xb2, 0x04, 0x9E)
    model CCU6_INPL is Memory;
//    @ext(0x02, 0x14, 0x9E)
//    model CCU6_INPL is Memory<UIN>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_MCMOUTSL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_MCMOUTSL is Memory;
//    // @ext(0x02, 0x14, 0x9E)
//    // model CCU6_MCMOUTSL is Memory<UIN>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_PISEL0L */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_PISEL0L is Memory;
//    // @ext(0x02, 0x14, 0x9E)
//    // model CCU6_PISEL0L is Memory<UIN>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_T13PRL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_T13PRL is Memory;
//    // @ext(0x02, 0x14, 0x9E)
//    // model CCU6_T13PRL is Memory<UIN>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CD_CORDZL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CD_CORDZL is Memory;
//    // @ext(0x02, 0x14, 0x9E)
//    // model CD_CORDZL is Memory<UIN>;

    /** SFR 0x009F CCU6_INPH */
    @ext(0xb3, 0x04, 0x9F)
    model CCU6_INPH is Memory;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_MCMOUTSH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_MCMOUTSH is Memory;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_PISEL0H */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_PISEL0H is Memory;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_T13PRH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_T13PRH is Memory;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CD_CORDZH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CD_CORDZH is Memory;

    /** SFR 0x00A0 CD_STATC */
    @ext(0x8c, 0x04, 0xA0)
    model CD_STATC is Memory;
//    @ext(0x3c, 0x14, 0xA0)
//    model CD_STATC is Memory<UIN>;

    // Alias of CD_STATC
    // /** SFR 0x00A0 P2_DATA */
    // @ext(0x8c, 0x04, 0xA0)
    // model P2_DATA is Memory;
//    // @ext(0x3c, 0x14, 0xA0)
//    // model P2_DATA is Memory<UIN>;

    // Alias of CD_STATC
    // /** SFR 0x00A0 P2_PUDSEL */
    // @ext(0x8c, 0x04, 0xA0)
    // model P2_PUDSEL is Memory;
//    // @ext(0x3c, 0x14, 0xA0)
//    // model P2_PUDSEL is Memory<UIN>;

    /** SFR 0x00A1 CD_CON */
    @ext(0x8d, 0x04, 0xA1)
    model CD_CON is Memory;

    // Alias of CD_CON
    // /** SFR 0x00A1 P2_DIR */
    // @ext(0x8d, 0x04, 0xA1)
    // model P2_DIR is Memory;

    // Alias of CD_CON
    // /** SFR 0x00A1 P2_PUDEN */
    // @ext(0x8d, 0x04, 0xA1)
    // model P2_PUDEN is Memory;

    /** SFR 0x00A3 CCU6_PAGE */
    @ext(0x8f, 0x04, 0xA3)
    model CCU6_PAGE is Memory;

    /** SFR 0x00A4 CCU6_ISRL */
    @ext(0x88, 0x04, 0xA4)
    model CCU6_ISRL is Memory;
//    @ext(0x38, 0x14, 0xA4)
//    model CCU6_ISRL is Memory<UIN>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_ISSL */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_ISSL is Memory;
//    // @ext(0x38, 0x14, 0xA4)
//    // model CCU6_ISSL is Memory<UIN>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_PISEL2 */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_PISEL2 is Memory;
//    // @ext(0x38, 0x14, 0xA4)
//    // model CCU6_PISEL2 is Memory<UIN>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_T12DTCL */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_T12DTCL is Memory;
//    // @ext(0x38, 0x14, 0xA4)
//    // model CCU6_T12DTCL is Memory<UIN>;

    /** SFR 0x00A5 CCU6_ISRH */
    @ext(0x89, 0x04, 0xA5)
    model CCU6_ISRH is Memory;

    // Alias of CCU6_ISRH
    // /** SFR 0x00A5 CCU6_ISSH */
    // @ext(0x89, 0x04, 0xA5)
    // model CCU6_ISSH is Memory;

    // Alias of CCU6_ISRH
    // /** SFR 0x00A5 CCU6_T12DTCH */
    // @ext(0x89, 0x04, 0xA5)
    // model CCU6_T12DTCH is Memory;

    /** SFR 0x00A6 CCU6_CMPMODIFL */
    @ext(0x8a, 0x04, 0xA6)
    model CCU6_CMPMODIFL is Memory;
//    @ext(0x3a, 0x14, 0xA6)
//    model CCU6_CMPMODIFL is Memory<UIN>;

    // Alias of CCU6_CMPMODIFL
    // /** SFR 0x00A6 CCU6_PSLR */
    // @ext(0x8a, 0x04, 0xA6)
    // model CCU6_PSLR is Memory;
//    // @ext(0x3a, 0x14, 0xA6)
//    // model CCU6_PSLR is Memory<UIN>;

    // Alias of CCU6_CMPMODIFL
    // /** SFR 0x00A6 CCU6_TCTR0L */
    // @ext(0x8a, 0x04, 0xA6)
    // model CCU6_TCTR0L is Memory;
//    // @ext(0x3a, 0x14, 0xA6)
//    // model CCU6_TCTR0L is Memory<UIN>;

    /** SFR 0x00A7 CCU6_CMPMODIFH */
    @ext(0x8b, 0x04, 0xA7)
    model CCU6_CMPMODIFH is Memory;

    // Alias of CCU6_CMPMODIFH
    // /** SFR 0x00A7 CCU6_MCMCTR */
    // @ext(0x8b, 0x04, 0xA7)
    // model CCU6_MCMCTR is Memory;

    // Alias of CCU6_CMPMODIFH
    // /** SFR 0x00A7 CCU6_TCTR0H */
    // @ext(0x8b, 0x04, 0xA7)
    // model CCU6_TCTR0H is Memory;

    /** SFR 0x00A8 IEN0 */
    @ext(0x84, 0x04, 0xA8)
    model IEN0 is Memory;
//    @ext(0x34, 0x14, 0xA8)
//    model IEN0 is Memory<UIN>;

    /** SFR 0x00A9 IP0 */
    @ext(0x85, 0x04, 0xA9)
    model IP0 is Memory;

    // Alias of IP0
    // /** SFR 0x00A9 SSC_PISEL */
    // @ext(0x85, 0x04, 0xA9)
    // model SSC_PISEL is Memory;

    /** SFR 0x00AA SRELL */
    @ext(0x86, 0x04, 0xAA)
    model SRELL is Memory;
//    @ext(0x36, 0x14, 0xAA)
//    model SRELL is Memory<UIN>;

    // Alias of SRELL
    // /** SFR 0x00AA SSC_CONL_O */
    // @ext(0x86, 0x04, 0xAA)
    // model SSC_CONL_O is Memory;
//    // @ext(0x36, 0x14, 0xAA)
//    // model SSC_CONL_O is Memory<UIN>;

    // Alias of SRELL
    // /** SFR 0x00AA SSC_CONL_P */
    // @ext(0x86, 0x04, 0xAA)
    // model SSC_CONL_P is Memory;
//    // @ext(0x36, 0x14, 0xAA)
//    // model SSC_CONL_P is Memory<UIN>;

    /** SFR 0x00AB SSC_CONH_O */
    @ext(0x87, 0x04, 0xAB)
    model SSC_CONH_O is Memory;

    // Alias of SSC_CONH_O
    // /** SFR 0x00AB SSC_CONH_P */
    // @ext(0x87, 0x04, 0xAB)
    // model SSC_CONH_P is Memory;

    /** SFR 0x00AC SSC_TBL */
    @ext(0x80, 0x04, 0xAC)
    model SSC_TBL is Memory;
//    @ext(0x30, 0x14, 0xAC)
//    model SSC_TBL is Memory<UIN>;

    /** SFR 0x00AD SSC_RBL */
    @ext(0x81, 0x04, 0xAD)
    model SSC_RBL is Memory;

    /** SFR 0x00AE SSC_BRL */
    @ext(0x82, 0x04, 0xAE)
    model SSC_BRL is Memory;
//    @ext(0x32, 0x14, 0xAE)
//    model SSC_BRL is Memory<UIN>;

    /** SFR 0x00AF SSC_BRH */
    @ext(0x83, 0x04, 0xAF)
    model SSC_BRH is Memory;

    /** SFR 0x00B0 DE_F_PORT */
    @ext(0x9c, 0x04, 0xB0)
    model DE_F_PORT is Memory;
//    @ext(0x2c, 0x14, 0xB0)
//    model DE_F_PORT is Memory<UIN>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_ALTSEL0 */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_ALTSEL0 is Memory;
//    // @ext(0x2c, 0x14, 0xB0)
//    // model P3_ALTSEL0 is Memory<UIN>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_DATA */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_DATA is Memory;
//    // @ext(0x2c, 0x14, 0xB0)
//    // model P3_DATA is Memory<UIN>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_OD */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_OD is Memory;
//    // @ext(0x2c, 0x14, 0xB0)
//    // model P3_OD is Memory<UIN>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_PUDSEL */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_PUDSEL is Memory;
//    // @ext(0x2c, 0x14, 0xB0)
//    // model P3_PUDSEL is Memory<UIN>;

    /** SFR 0x00B1 P3_ALTSEL1 */
    @ext(0x9d, 0x04, 0xB1)
    model P3_ALTSEL1 is Memory;

    // Alias of P3_ALTSEL1
    // /** SFR 0x00B1 P3_DIR */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_DIR is Memory;

    // Alias of P3_ALTSEL1
    // /** SFR 0x00B1 P3_PUDEN */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_PUDEN is Memory;

    // Alias of P3_ALTSEL1
    // /** SFR 0x00B1 SYSCON */
    // @ext(0x9d, 0x04, 0xB1)
    // model SYSCON is Memory;

    /** SFR 0x00B2 PORT_PAGE */
    @ext(0x9e, 0x04, 0xB2)
    model PORT_PAGE is Memory;
//    @ext(0x2e, 0x14, 0xB2)
//    model PORT_PAGE is Memory<UIN>;

    /** SFR 0x00B3 MODPISEL */
    @ext(0x9f, 0x04, 0xB3)
    model MODPISEL is Memory;

    // Alias of MODPISEL
    // /** SFR 0x00B3 XADDRH */
    // @ext(0x9f, 0x04, 0xB3)
    // model XADDRH is Memory;

    /** SFR 0x00B4 IRCON0 */
    @ext(0x98, 0x04, 0xB4)
    model IRCON0 is Memory;
//    @ext(0x28, 0x14, 0xB4)
//    model IRCON0 is Memory<UIN>;

    // Alias of IRCON0
    // /** SFR 0x00B4 IRCON3 */
    // @ext(0x98, 0x04, 0xB4)
    // model IRCON3 is Memory;
//    // @ext(0x28, 0x14, 0xB4)
//    // model IRCON3 is Memory<UIN>;

    // Alias of IRCON0
    // /** SFR 0x00B4 PMCON0 */
    // @ext(0x98, 0x04, 0xB4)
    // model PMCON0 is Memory;
//    // @ext(0x28, 0x14, 0xB4)
//    // model PMCON0 is Memory<UIN>;

    /** SFR 0x00B5 IRCON1 */
    @ext(0x99, 0x04, 0xB5)
    model IRCON1 is Memory;

    // Alias of IRCON1
    // /** SFR 0x00B5 IRCON4 */
    // @ext(0x99, 0x04, 0xB5)
    // model IRCON4 is Memory;

    // Alias of IRCON1
    // /** SFR 0x00B5 PMCON1 */
    // @ext(0x99, 0x04, 0xB5)
    // model PMCON1 is Memory;

    /** SFR 0x00B6 IRCON2 */
    @ext(0x9a, 0x04, 0xB6)
    model IRCON2 is Memory;
//    @ext(0x2a, 0x14, 0xB6)
//    model IRCON2 is Memory<UIN>;

    // Alias of IRCON2
    // /** SFR 0x00B6 OSC_CON */
    // @ext(0x9a, 0x04, 0xB6)
    // model OSC_CON is Memory;
//    // @ext(0x2a, 0x14, 0xB6)
//    // model OSC_CON is Memory<UIN>;

    /** SFR 0x00B7 EXICON0 */
    @ext(0x9b, 0x04, 0xB7)
    model EXICON0 is Memory;

    // Alias of EXICON0
    // /** SFR 0x00B7 MODPISEL1 */
    // @ext(0x9b, 0x04, 0xB7)
    // model MODPISEL1 is Memory;

    // Alias of EXICON0
    // /** SFR 0x00B7 PLL_CON */
    // @ext(0x9b, 0x04, 0xB7)
    // model PLL_CON is Memory;

    /** SFR 0x00B9 IPH */
    @ext(0x95, 0x04, 0xB9)
    model IPH is Memory;

    /** SFR 0x00BA CMCON */
    @ext(0x96, 0x04, 0xBA)
    model CMCON is Memory;
//    @ext(0x26, 0x14, 0xBA)
//    model CMCON is Memory<UIN>;

    // Alias of CMCON
    // /** SFR 0x00BA EXICON1 */
    // @ext(0x96, 0x04, 0xBA)
    // model EXICON1 is Memory;
//    // @ext(0x26, 0x14, 0xBA)
//    // model EXICON1 is Memory<UIN>;

    // Alias of CMCON
    // /** SFR 0x00BA MODPISEL2 */
    // @ext(0x96, 0x04, 0xBA)
    // model MODPISEL2 is Memory;
//    // @ext(0x26, 0x14, 0xBA)
//    // model MODPISEL2 is Memory<UIN>;

    // Alias of CMCON
    // /** SFR 0x00BA SRELH */
    // @ext(0x96, 0x04, 0xBA)
    // model SRELH is Memory;
//    // @ext(0x26, 0x14, 0xBA)
//    // model SRELH is Memory<UIN>;

    /** SFR 0x00BB NMICON */
    @ext(0x97, 0x04, 0xBB)
    model NMICON is Memory;

    // Alias of NMICON
    // /** SFR 0x00BB PASSWD */
    // @ext(0x97, 0x04, 0xBB)
    // model PASSWD is Memory;

    // Alias of NMICON
    // /** SFR 0x00BB PMCON2 */
    // @ext(0x97, 0x04, 0xBB)
    // model PMCON2 is Memory;

    // Alias of NMICON
    // /** SFR 0x00BB WDTCON */
    // @ext(0x97, 0x04, 0xBB)
    // model WDTCON is Memory;

    /** SFR 0x00BC FEAL */
    @ext(0x90, 0x04, 0xBC)
    model FEAL is Memory;
//    @ext(0x20, 0x14, 0xBC)
//    model FEAL is Memory<UIN>;

    // Alias of FEAL
    // /** SFR 0x00BC NMISR */
    // @ext(0x90, 0x04, 0xBC)
    // model NMISR is Memory;
//    // @ext(0x20, 0x14, 0xBC)
//    // model NMISR is Memory<UIN>;

    // Alias of FEAL
    // /** SFR 0x00BC WDTREL */
    // @ext(0x90, 0x04, 0xBC)
    // model WDTREL is Memory;
//    // @ext(0x20, 0x14, 0xBC)
//    // model WDTREL is Memory<UIN>;

    /** SFR 0x00BD BCON */
    @ext(0x91, 0x04, 0xBD)
    model BCON is Memory;

    // Alias of BCON
    // /** SFR 0x00BD FEAH */
    // @ext(0x91, 0x04, 0xBD)
    // model FEAH is Memory;

    // Alias of BCON
    // /** SFR 0x00BD MODSUSP */
    // @ext(0x91, 0x04, 0xBD)
    // model MODSUSP is Memory;

    // Alias of BCON
    // /** SFR 0x00BD WDTWINB */
    // @ext(0x91, 0x04, 0xBD)
    // model WDTWINB is Memory;

    /** SFR 0x00BE COCON */
    @ext(0x92, 0x04, 0xBE)
    model COCON is Memory;
//    @ext(0x22, 0x14, 0xBE)
//    model COCON is Memory<UIN>;

    // Alias of COCON
    // /** SFR 0x00BE WDTL */
    // @ext(0x92, 0x04, 0xBE)
    // model WDTL is Memory;
//    // @ext(0x22, 0x14, 0xBE)
//    // model WDTL is Memory<UIN>;

    /** SFR 0x00BF SCU_PAGE */
    @ext(0x93, 0x04, 0xBF)
    model SCU_PAGE is Memory;

    // Alias of SCU_PAGE
    // /** SFR 0x00BF WDTH */
    // @ext(0x93, 0x04, 0xBF)
    // model WDTH is Memory;

    /** SFR 0x00C0 IRCON */
    @ext(0xec, 0x04, 0xC0)
    model IRCON is Memory;
//    @ext(0x5c, 0x14, 0xC0)
//    model IRCON is Memory<UIN>;

    // Alias of IRCON
    // /** SFR 0x00C0 T21_T2CON */
    // @ext(0xec, 0x04, 0xC0)
    // model T21_T2CON is Memory;
//    // @ext(0x5c, 0x14, 0xC0)
//    // model T21_T2CON is Memory<UIN>;

    // Alias of IRCON
    // /** SFR 0x00C0 T2_T2CON */
    // @ext(0xec, 0x04, 0xC0)
    // model T2_T2CON is Memory;
//    // @ext(0x5c, 0x14, 0xC0)
//    // model T2_T2CON is Memory<UIN>;

    /** SFR 0x00C1 CCEN */
    @ext(0xed, 0x04, 0xC1)
    model CCEN is Memory;

    // Alias of CCEN
    // /** SFR 0x00C1 T21_T2MOD */
    // @ext(0xed, 0x04, 0xC1)
    // model T21_T2MOD is Memory;

    // Alias of CCEN
    // /** SFR 0x00C1 T2_T2MOD */
    // @ext(0xed, 0x04, 0xC1)
    // model T2_T2MOD is Memory;

    /** SFR 0x00C2 CCL1 */
    @ext(0xee, 0x04, 0xC2)
    model CCL1 is Memory;
//    @ext(0x5e, 0x14, 0xC2)
//    model CCL1 is Memory<UIN>;

    // Alias of CCL1
    // /** SFR 0x00C2 SYS_TIMER_RELOAD_LOW */
    // @ext(0xee, 0x04, 0xC2)
    // model SYS_TIMER_RELOAD_LOW is Memory;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model SYS_TIMER_RELOAD_LOW is Memory<UIN>;

    // Alias of CCL1
    // /** SFR 0x00C2 T21_RC2L */
    // @ext(0xee, 0x04, 0xC2)
    // model T21_RC2L is Memory;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model T21_RC2L is Memory<UIN>;

    // Alias of CCL1
    // /** SFR 0x00C2 T2_RC2L */
    // @ext(0xee, 0x04, 0xC2)
    // model T2_RC2L is Memory;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model T2_RC2L is Memory<UIN>;

    /** SFR 0x00C3 CCH1 */
    @ext(0xef, 0x04, 0xC3)
    model CCH1 is Memory;

    // Alias of CCH1
    // /** SFR 0x00C3 SYS_TIMER_RELOAD_HIGH */
    // @ext(0xef, 0x04, 0xC3)
    // model SYS_TIMER_RELOAD_HIGH is Memory;

    // Alias of CCH1
    // /** SFR 0x00C3 T21_RC2H */
    // @ext(0xef, 0x04, 0xC3)
    // model T21_RC2H is Memory;

    // Alias of CCH1
    // /** SFR 0x00C3 T2_RC2H */
    // @ext(0xef, 0x04, 0xC3)
    // model T2_RC2H is Memory;

    /** SFR 0x00C4 CCL2 */
    @ext(0xe8, 0x04, 0xC4)
    model CCL2 is Memory;
//    @ext(0x58, 0x14, 0xC4)
//    model CCL2 is Memory<UIN>;

    // Alias of CCL2
    // /** SFR 0x00C4 T21_T2L */
    // @ext(0xe8, 0x04, 0xC4)
    // model T21_T2L is Memory;
//    // @ext(0x58, 0x14, 0xC4)
//    // model T21_T2L is Memory<UIN>;

    // Alias of CCL2
    // /** SFR 0x00C4 T2_T2L */
    // @ext(0xe8, 0x04, 0xC4)
    // model T2_T2L is Memory;
//    // @ext(0x58, 0x14, 0xC4)
//    // model T2_T2L is Memory<UIN>;

    // Alias of CCL2
    // /** SFR 0x00C4 TL2 */
    // @ext(0xe8, 0x04, 0xC4)
    // model TL2 is Memory;
//    // @ext(0x58, 0x14, 0xC4)
//    // model TL2 is Memory<UIN>;

    /** SFR 0x00C5 CCH2 */
    @ext(0xe9, 0x04, 0xC5)
    model CCH2 is Memory;

    // Alias of CCH2
    // /** SFR 0x00C5 T21_T2H */
    // @ext(0xe9, 0x04, 0xC5)
    // model T21_T2H is Memory;

    // Alias of CCH2
    // /** SFR 0x00C5 T2_T2H */
    // @ext(0xe9, 0x04, 0xC5)
    // model T2_T2H is Memory;

    // Alias of CCH2
    // /** SFR 0x00C5 TH2 */
    // @ext(0xe9, 0x04, 0xC5)
    // model TH2 is Memory;

    /** SFR 0x00C6 CCL3 */
    @ext(0xea, 0x04, 0xC6)
    model CCL3 is Memory;
//    @ext(0x5a, 0x14, 0xC6)
//    model CCL3 is Memory<UIN>;

    /** SFR 0x00C7 CCH3 */
    @ext(0xeb, 0x04, 0xC7)
    model CCH3 is Memory;

    /** SFR 0x00C8 P4_ALTSEL0 */
    @ext(0xe4, 0x04, 0xC8)
    model P4_ALTSEL0 is Memory;
//    @ext(0x54, 0x14, 0xC8)
//    model P4_ALTSEL0 is Memory<UIN>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_DATA */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_DATA is Memory;
//    // @ext(0x54, 0x14, 0xC8)
//    // model P4_DATA is Memory<UIN>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_OD */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_OD is Memory;
//    // @ext(0x54, 0x14, 0xC8)
//    // model P4_OD is Memory<UIN>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_PUDSEL */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_PUDSEL is Memory;
//    // @ext(0x54, 0x14, 0xC8)
//    // model P4_PUDSEL is Memory<UIN>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 T2CON */
    // @ext(0xe4, 0x04, 0xC8)
    // model T2CON is Memory;
//    // @ext(0x54, 0x14, 0xC8)
//    // model T2CON is Memory<UIN>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 UART1_SCON */
    // @ext(0xe4, 0x04, 0xC8)
    // model UART1_SCON is Memory;
//    // @ext(0x54, 0x14, 0xC8)
//    // model UART1_SCON is Memory<UIN>;

    /** SFR 0x00C9 P4_ALTSEL1 */
    @ext(0xe5, 0x04, 0xC9)
    model P4_ALTSEL1 is Memory;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 P4_DIR */
    // @ext(0xe5, 0x04, 0xC9)
    // model P4_DIR is Memory;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 P4_PUDEN */
    // @ext(0xe5, 0x04, 0xC9)
    // model P4_PUDEN is Memory;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 UART1_SBUF */
    // @ext(0xe5, 0x04, 0xC9)
    // model UART1_SBUF is Memory;

    /** SFR 0x00CA ADC_CHCTR0 */
    @ext(0xe6, 0x04, 0xCA)
    model ADC_CHCTR0 is Memory;
//    @ext(0x56, 0x14, 0xCA)
//    model ADC_CHCTR0 is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_CHINFR */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_CHINFR is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_CHINFR is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_CRCR1 */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_CRCR1 is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_CRCR1 is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_GLOBCTR */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_GLOBCTR is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_GLOBCTR is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RCR0 */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RCR0 is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_RCR0 is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RESR0L */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RESR0L is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_RESR0L is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RESRA0L */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RESRA0L is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model ADC_RESRA0L is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA CRCL */
    // @ext(0xe6, 0x04, 0xCA)
    // model CRCL is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model CRCL is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA RCAP2L */
    // @ext(0xe6, 0x04, 0xCA)
    // model RCAP2L is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model RCAP2L is Memory<UIN>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA UART1_BCON */
    // @ext(0xe6, 0x04, 0xCA)
    // model UART1_BCON is Memory;
//    // @ext(0x56, 0x14, 0xCA)
//    // model UART1_BCON is Memory<UIN>;

    /** SFR 0x00CB ADC_CHCTR1 */
    @ext(0xe7, 0x04, 0xCB)
    model ADC_CHCTR1 is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_CHINCR */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_CHINCR is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_CRPR1 */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_CRPR1 is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_GLOBSTR */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_GLOBSTR is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RCR1 */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RCR1 is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RESR0H */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RESR0H is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RESRA0H */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RESRA0H is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB CRCH */
    // @ext(0xe7, 0x04, 0xCB)
    // model CRCH is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB RCAP2H */
    // @ext(0xe7, 0x04, 0xCB)
    // model RCAP2H is Memory;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB UART1_BG */
    // @ext(0xe7, 0x04, 0xCB)
    // model UART1_BG is Memory;

    /** SFR 0x00CC ADC_CHCTR2 */
    @ext(0xe0, 0x04, 0xCC)
    model ADC_CHCTR2 is Memory;
//    @ext(0x50, 0x14, 0xCC)
//    model ADC_CHCTR2 is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_CHINSR */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_CHINSR is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_CHINSR is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_CRMR1 */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_CRMR1 is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_CRMR1 is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_PRAR */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_PRAR is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_PRAR is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RCR2 */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RCR2 is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_RCR2 is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RESR1L */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RESR1L is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_RESR1L is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RESRA1L */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RESRA1L is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model ADC_RESRA1L is Memory<UIN>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC UART1_FDCON */
    // @ext(0xe0, 0x04, 0xCC)
    // model UART1_FDCON is Memory;
//    // @ext(0x50, 0x14, 0xCC)
//    // model UART1_FDCON is Memory<UIN>;

    /** SFR 0x00CD ADC_CHCTR3 */
    @ext(0xe1, 0x04, 0xCD)
    model ADC_CHCTR3 is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_CHINPR */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_CHINPR is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_LCBR */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_LCBR is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_QMR0 */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_QMR0 is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RCR3 */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RCR3 is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RESR1H */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RESR1H is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RESRA1H */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RESRA1H is Memory;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD UART1_FDSTEP */
    // @ext(0xe1, 0x04, 0xCD)
    // model UART1_FDSTEP is Memory;

    /** SFR 0x00CE ADC_CHCTR4 */
    @ext(0xe2, 0x04, 0xCE)
    model ADC_CHCTR4 is Memory;
//    @ext(0x52, 0x14, 0xCE)
//    model ADC_CHCTR4 is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_EVINFR */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_EVINFR is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_EVINFR is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_INPCR0 */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_INPCR0 is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_INPCR0 is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_QSR0 */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_QSR0 is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_QSR0 is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_RESR2L */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_RESR2L is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_RESR2L is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_RESRA2L */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_RESRA2L is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_RESRA2L is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_VFCR */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_VFCR is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model ADC_VFCR is Memory<UIN>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE UART1_FDRES */
    // @ext(0xe2, 0x04, 0xCE)
    // model UART1_FDRES is Memory;
//    // @ext(0x52, 0x14, 0xCE)
//    // model UART1_FDRES is Memory<UIN>;

    /** SFR 0x00CF ADC_CHCTR5 */
    @ext(0xe3, 0x04, 0xCF)
    model ADC_CHCTR5 is Memory;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_ETRCR */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_ETRCR is Memory;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_EVINCR */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_EVINCR is Memory;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_Q0R0 */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_Q0R0 is Memory;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_RESR2H */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_RESR2H is Memory;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_RESRA2H */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_RESRA2H is Memory;

    /** SFR 0x00D0 PSW */
    @ext(0xfc, 0x04, 0xD0)
    model PSW is Memory;
//    @ext(0x4c, 0x14, 0xD0)
//    model PSW is Memory<UIN>;

    /** SFR 0x00D1 ADC_PAGE */
    @ext(0xfd, 0x04, 0xD1)
    model ADC_PAGE is Memory;

    /** SFR 0x00D2 ADC_CHCTR6 */
    @ext(0xfe, 0x04, 0xD2)
    model ADC_CHCTR6 is Memory;
//    @ext(0x4e, 0x14, 0xD2)
//    model ADC_CHCTR6 is Memory<UIN>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_EVINSR */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_EVINSR is Memory;
//    // @ext(0x4e, 0x14, 0xD2)
//    // model ADC_EVINSR is Memory<UIN>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_QBUR0 */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_QBUR0 is Memory;
//    // @ext(0x4e, 0x14, 0xD2)
//    // model ADC_QBUR0 is Memory<UIN>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_QINR0 */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_QINR0 is Memory;
//    // @ext(0x4e, 0x14, 0xD2)
//    // model ADC_QINR0 is Memory<UIN>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_RESR3L */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_RESR3L is Memory;
//    // @ext(0x4e, 0x14, 0xD2)
//    // model ADC_RESR3L is Memory<UIN>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_RESRA3L */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_RESRA3L is Memory;
//    // @ext(0x4e, 0x14, 0xD2)
//    // model ADC_RESRA3L is Memory<UIN>;

    /** SFR 0x00D3 ADC_CHCTR7 */
    @ext(0xff, 0x04, 0xD3)
    model ADC_CHCTR7 is Memory;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_EVINPR */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_EVINPR is Memory;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_RESR3H */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_RESR3H is Memory;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_RESRA3H */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_RESRA3H is Memory;

    /** SFR 0x00D8 ADCON0 */
    @ext(0xf4, 0x04, 0xD8)
    model ADCON0 is Memory;
//    @ext(0x44, 0x14, 0xD8)
//    model ADCON0 is Memory<UIN>;

    /** SFR 0x00D9 ADDATH */
    @ext(0xf5, 0x04, 0xD9)
    model ADDATH is Memory;

    /** SFR 0x00DA ADDATL */
    @ext(0xf6, 0x04, 0xDA)
    model ADDATL is Memory;
//    @ext(0x46, 0x14, 0xDA)
//    model ADDATL is Memory<UIN>;

    /** SFR 0x00DC ADCON1 */
    @ext(0xf0, 0x04, 0xDC)
    model ADCON1 is Memory;
//    @ext(0x40, 0x14, 0xDC)
//    model ADCON1 is Memory<UIN>;

    /** SFR 0x00E0 ACC */
    @ext(0xcc, 0x04, 0xE0)
    model ACC is Memory;
//    @ext(0x7c, 0x14, 0xE0)
//    model ACC is Memory<UIN>;

    /** SFR 0x00E8 IEN1 */
    @ext(0xc4, 0x04, 0xE8)
    model IEN1 is Memory;
//    @ext(0x74, 0x14, 0xE8)
//    model IEN1 is Memory<UIN>;

    /** SFR 0x00E9 FDCON */
    @ext(0xc5, 0x04, 0xE9)
    model FDCON is Memory;

    // Alias of FDCON
    // /** SFR 0x00E9 MISC_CON */
    // @ext(0xc5, 0x04, 0xE9)
    // model MISC_CON is Memory;

    // Alias of FDCON
    // /** SFR 0x00E9 MMCR2 */
    // @ext(0xc5, 0x04, 0xE9)
    // model MMCR2 is Memory;

    /** SFR 0x00EA FDSTEP */
    @ext(0xc6, 0x04, 0xEA)
    model FDSTEP is Memory;
//    @ext(0x76, 0x14, 0xEA)
//    model FDSTEP is Memory<UIN>;

    /** SFR 0x00EB FDRES */
    @ext(0xc7, 0x04, 0xEB)
    model FDRES is Memory;

    // Alias of FDRES
    // /** SFR 0x00EB MMWR1 */
    // @ext(0xc7, 0x04, 0xEB)
    // model MMWR1 is Memory;

    /** SFR 0x00EC MMWR2 */
    @ext(0xc0, 0x04, 0xEC)
    model MMWR2 is Memory;
//    @ext(0x70, 0x14, 0xEC)
//    model MMWR2 is Memory<UIN>;

    /** SFR 0x00F1 MMCR */
    @ext(0xdd, 0x04, 0xF1)
    model MMCR is Memory;

    /** SFR 0x00F2 MMSR */
    @ext(0xde, 0x04, 0xF2)
    model MMSR is Memory;
//    @ext(0x6e, 0x14, 0xF2)
//    model MMSR is Memory<UIN>;

    /** SFR 0x00F3 MMBPCR */
    @ext(0xdf, 0x04, 0xF3)
    model MMBPCR is Memory;

    /** SFR 0x00F4 MMICR */
    @ext(0xd8, 0x04, 0xF4)
    model MMICR is Memory;
//    @ext(0x68, 0x14, 0xF4)
//    model MMICR is Memory<UIN>;

    /** SFR 0x00F5 MMDR */
    @ext(0xd9, 0x04, 0xF5)
    model MMDR is Memory;

    /** SFR 0x00F6 HWBPSR */
    @ext(0xda, 0x04, 0xF6)
    model HWBPSR is Memory;
//    @ext(0x6a, 0x14, 0xF6)
//    model HWBPSR is Memory<UIN>;

    /** SFR 0x00F7 HWBPDR */
    @ext(0xdb, 0x04, 0xF7)
    model HWBPDR is Memory;

    /** SFR 0x00F8 IP1 */
    @ext(0xd4, 0x04, 0xF8)
    model IP1 is Memory;
//    @ext(0x64, 0x14, 0xF8)
//    model IP1 is Memory<UIN>;

    /** SFR 0x00F9 IPH1 */
    @ext(0xd5, 0x04, 0xF9)
    model IPH1 is Memory;

    /** SFR 0x00FA CCU6_CC60RL */
    @ext(0xd6, 0x04, 0xFA)
    model CCU6_CC60RL is Memory;
//    @ext(0x66, 0x14, 0xFA)
//    model CCU6_CC60RL is Memory<UIN>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_CC60SRL */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_CC60SRL is Memory;
//    // @ext(0x66, 0x14, 0xFA)
//    // model CCU6_CC60SRL is Memory<UIN>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_T12L */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_T12L is Memory;
//    // @ext(0x66, 0x14, 0xFA)
//    // model CCU6_T12L is Memory<UIN>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_TCTR2L */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_TCTR2L is Memory;
//    // @ext(0x66, 0x14, 0xFA)
//    // model CCU6_TCTR2L is Memory<UIN>;

    /** SFR 0x00FB CCU6_CC60RH */
    @ext(0xd7, 0x04, 0xFB)
    model CCU6_CC60RH is Memory;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_CC60SRH */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_CC60SRH is Memory;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_T12H */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_T12H is Memory;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_TCTR2H */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_TCTR2H is Memory;

    /** SFR 0x00FC CCL_PUHZ */
    @ext(0xd0, 0x04, 0xFC)
    model CCL_PUHZ is Memory;
//    @ext(0x60, 0x14, 0xFC)
//    model CCL_PUHZ is Memory<UIN>;

    // Alias of CCL_PUHZ
    // /** SFR 0x00FC CCU6_CC61RL */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_CC61RL is Memory;
//    // @ext(0x60, 0x14, 0xFC)
//    // model CCU6_CC61RL is Memory<UIN>;

    // Alias of CCL_PUHZ
    // /** SFR 0x00FC CCU6_CC61SRL */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_CC61SRL is Memory;
//    // @ext(0x60, 0x14, 0xFC)
//    // model CCU6_CC61SRL is Memory<UIN>;

    // Alias of CCL_PUHZ
    // /** SFR 0x00FC CCU6_MODCTRL */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_MODCTRL is Memory;
//    // @ext(0x60, 0x14, 0xFC)
//    // model CCU6_MODCTRL is Memory<UIN>;

    // Alias of CCL_PUHZ
    // /** SFR 0x00FC CCU6_T13L */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_T13L is Memory;
//    // @ext(0x60, 0x14, 0xFC)
//    // model CCU6_T13L is Memory<UIN>;

    // Alias of CCL_PUHZ
    // /** SFR 0x00FC VR0 */
    // @ext(0xd0, 0x04, 0xFC)
    // model VR0 is Memory;
//    // @ext(0x60, 0x14, 0xFC)
//    // model VR0 is Memory<UIN>;

    /** SFR 0x00FD CCH_PUHZ */
    @ext(0xd1, 0x04, 0xFD)
    model CCH_PUHZ is Memory;

    // Alias of CCH_PUHZ
    // /** SFR 0x00FD CCU6_CC61RH */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_CC61RH is Memory;

    // Alias of CCH_PUHZ
    // /** SFR 0x00FD CCU6_CC61SRH */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_CC61SRH is Memory;

    // Alias of CCH_PUHZ
    // /** SFR 0x00FD CCU6_MODCTRH */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_MODCTRH is Memory;

    // Alias of CCH_PUHZ
    // /** SFR 0x00FD CCU6_T13H */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_T13H is Memory;

    // Alias of CCH_PUHZ
    // /** SFR 0x00FD VR1 */
    // @ext(0xd1, 0x04, 0xFD)
    // model VR1 is Memory;

    /** SFR 0x00FE CCL_GPV */
    @ext(0xd2, 0x04, 0xFE)
    model CCL_GPV is Memory;
//    @ext(0x62, 0x14, 0xFE)
//    model CCL_GPV is Memory<UIN>;

    // Alias of CCL_GPV
    // /** SFR 0x00FE CCU6_CC62RL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_CC62RL is Memory;
//    // @ext(0x62, 0x14, 0xFE)
//    // model CCU6_CC62RL is Memory<UIN>;

    // Alias of CCL_GPV
    // /** SFR 0x00FE CCU6_CC62SRL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_CC62SRL is Memory;
//    // @ext(0x62, 0x14, 0xFE)
//    // model CCU6_CC62SRL is Memory<UIN>;

    // Alias of CCL_GPV
    // /** SFR 0x00FE CCU6_CMPSTATL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_CMPSTATL is Memory;
//    // @ext(0x62, 0x14, 0xFE)
//    // model CCU6_CMPSTATL is Memory<UIN>;

    // Alias of CCL_GPV
    // /** SFR 0x00FE CCU6_TRPCTRL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_TRPCTRL is Memory;
//    // @ext(0x62, 0x14, 0xFE)
//    // model CCU6_TRPCTRL is Memory<UIN>;

    // Alias of CCL_GPV
    // /** SFR 0x00FE VR2 */
    // @ext(0xd2, 0x04, 0xFE)
    // model VR2 is Memory;
//    // @ext(0x62, 0x14, 0xFE)
//    // model VR2 is Memory<UIN>;

    /** SFR 0x00FF CCH_GPV */
    @ext(0xd3, 0x04, 0xFF)
    model CCH_GPV is Memory;

    // Alias of CCH_GPV
    // /** SFR 0x00FF CCU6_CC62RH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_CC62RH is Memory;

    // Alias of CCH_GPV
    // /** SFR 0x00FF CCU6_CC62SRH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_CC62SRH is Memory;

    // Alias of CCH_GPV
    // /** SFR 0x00FF CCU6_CMPSTATH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_CMPSTATH is Memory;

    // Alias of CCH_GPV
    // /** SFR 0x00FF CCU6_TRPCTRH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_TRPCTRH is Memory;


    // ====================================
    // --- Konstanten ---
    // ====================================

    /** Konstanten 0x0000 ACK_07FF_BIT */
    @ext(0xb8, 0x02, 0x00)
    model ACK_07FF_BIT is Memory;
//    @ext(0x08, 0x12, 0x00)
//    model ACK_07FF_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_0800_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_0800_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_0800_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_5002_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_5002_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_5002_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_FF00_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_FF00_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_FF00_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_REG_STOP_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_REG_STOP_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_REG_STOP_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ADC_SHORT */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_SHORT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ADC_SHORT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 AIO_900 */
    // @ext(0xb8, 0x02, 0x00)
    // model AIO_900 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model AIO_900 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 BCCARD */
    // @ext(0xb8, 0x02, 0x00)
    // model BCCARD is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model BCCARD is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EBUS_S7 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_S7 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_S7 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EBUS_SCHICHT_2 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_SCHICHT_2 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_SCHICHT_2 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EEA_ANF */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_ANF is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEA_ANF is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EEP_FAST_INIT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEP_FAST_INIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEP_FAST_INIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EE_I2C */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_I2C is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EE_I2C is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EE_PARAS */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_PARAS is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model EE_PARAS is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 FEHLER_DETAIL_EBENE */
    // @ext(0xb8, 0x02, 0x00)
    // model FEHLER_DETAIL_EBENE is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model FEHLER_DETAIL_EBENE is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 HARD_52 */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD_52 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model HARD_52 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 INFONR */
    // @ext(0xb8, 0x02, 0x00)
    // model INFONR is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model INFONR is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ION */
    // @ext(0xb8, 0x02, 0x00)
    // model ION is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ION is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 MXSTB_A */
    // @ext(0xb8, 0x02, 0x00)
    // model MXSTB_A is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model MXSTB_A is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 NM_KALTSTART_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model NM_KALTSTART_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model NM_KALTSTART_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 OS_XC886 */
    // @ext(0xb8, 0x02, 0x00)
    // model OS_XC886 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model OS_XC886 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model QQ_M1 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 RAMROM */
    // @ext(0xb8, 0x02, 0x00)
    // model RAMROM is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model RAMROM is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 RX_XRAM_BUSY_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model RX_XRAM_BUSY_BIT is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model RX_XRAM_BUSY_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 SFR_IO */
    // @ext(0xb8, 0x02, 0x00)
    // model SFR_IO is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model SFR_IO is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 STOEREC */
    // @ext(0xb8, 0x02, 0x00)
    // model STOEREC is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model STOEREC is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 TX_EIG_QQ */
    // @ext(0xb8, 0x02, 0x00)
    // model TX_EIG_QQ is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model TX_EIG_QQ is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 TX_QQ_M11 */
    // @ext(0xb8, 0x02, 0x00)
    // model TX_QQ_M11 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model TX_QQ_M11 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 USER */
    // @ext(0xb8, 0x02, 0x00)
    // model USER is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model USER is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 VAR_900 */
    // @ext(0xb8, 0x02, 0x00)
    // model VAR_900 is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model VAR_900 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ZST_QQ_EIG */
    // @ext(0xb8, 0x02, 0x00)
    // model ZST_QQ_EIG is Memory;
//    // @ext(0x08, 0x12, 0x00)
//    // model ZST_QQ_EIG is Memory<UIN>;

    /** Konstanten 0x0001 ACK_0503_BIT */
    @ext(0xb9, 0x02, 0x01)
    model ACK_0503_BIT is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_0704_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_0704_BIT is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_07FF */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_07FF is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_0800 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_0800 is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_5002 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_5002 is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_FF00 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_FF00 is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_FF02_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_FF02_BIT is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_REG_STOP */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_REG_STOP is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ADC_NONE */
    // @ext(0xb9, 0x02, 0x01)
    // model ADC_NONE is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 AIN_ERR_NI1000 */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_ERR_NI1000 is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 EE_RANGE_FAIL__DEF */
    // @ext(0xb9, 0x02, 0x01)
    // model EE_RANGE_FAIL__DEF is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 MAX_OK */
    // @ext(0xb9, 0x02, 0x01)
    // model MAX_OK is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NGPBS_AFAKT */
    // @ext(0xb9, 0x02, 0x01)
    // model NGPBS_AFAKT is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NM_INIT_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model NM_INIT_BIT is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NTC1_TR_TST */
    // @ext(0xb9, 0x02, 0x01)
    // model NTC1_TR_TST is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 RX_QQ_M2 */
    // @ext(0xb9, 0x02, 0x01)
    // model RX_QQ_M2 is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 TCVZZ */
    // @ext(0xb9, 0x02, 0x01)
    // model TCVZZ is Memory;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ZST_QQ_M2 */
    // @ext(0xb9, 0x02, 0x01)
    // model ZST_QQ_M2 is Memory;

    /** Konstanten 0x0002 ACK_0503 */
    @ext(0xba, 0x02, 0x02)
    model ACK_0503 is Memory;
//    @ext(0x0a, 0x12, 0x02)
//    model ACK_0503 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_0704 */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_0704 is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_0704 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_FE01_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_FE01_BIT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_FE01_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_FF02 */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_FF02 is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_FF02 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 EEA_CONST_ANF */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_CONST_ANF is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model EEA_CONST_ANF is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 EE_RANGE_FAIL__INTBCC */
    // @ext(0xba, 0x02, 0x02)
    // model EE_RANGE_FAIL__INTBCC is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model EE_RANGE_FAIL__INTBCC is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ION_TEILER */
    // @ext(0xba, 0x02, 0x02)
    // model ION_TEILER is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ION_TEILER is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 L_EEA_CRC_BCC_INT */
    // @ext(0xba, 0x02, 0x02)
    // model L_EEA_CRC_BCC_INT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model L_EEA_CRC_BCC_INT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 MB_2_INIT */
    // @ext(0xba, 0x02, 0x02)
    // model MB_2_INIT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MB_2_INIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NGPBS_XWATOM */
    // @ext(0xba, 0x02, 0x02)
    // model NGPBS_XWATOM is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NGPBS_XWATOM is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NM_RESET_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model NM_RESET_BIT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NM_RESET_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NM_S7_RESET_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model NM_S7_RESET_BIT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NM_S7_RESET_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NTC2_TR_TST */
    // @ext(0xba, 0x02, 0x02)
    // model NTC2_TR_TST is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NTC2_TR_TST is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 TIDLE_R2 */
    // @ext(0xba, 0x02, 0x02)
    // model TIDLE_R2 is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TIDLE_R2 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ZST_QQ_M10 */
    // @ext(0xba, 0x02, 0x02)
    // model ZST_QQ_M10 is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ZST_QQ_M10 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ZST_QQ_M10_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ZST_QQ_M10_BIT is Memory;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ZST_QQ_M10_BIT is Memory<UIN>;

    /** Konstanten 0x0003 ADC_MXCODE */
    @ext(0xbb, 0x02, 0x03)
    model ADC_MXCODE is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 AI_MUXER */
    // @ext(0xbb, 0x02, 0x03)
    // model AI_MUXER is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 AI_REF */
    // @ext(0xbb, 0x02, 0x03)
    // model AI_REF is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EM_EE_REDUND__SELF */
    // @ext(0xbb, 0x02, 0x03)
    // model EM_EE_REDUND__SELF is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 HZ_KTND__I */
    // @ext(0xbb, 0x02, 0x03)
    // model HZ_KTND__I is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NG_DW_TOL */
    // @ext(0xbb, 0x02, 0x03)
    // model NG_DW_TOL is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NG_GR_MIN__FILT */
    // @ext(0xbb, 0x02, 0x03)
    // model NG_GR_MIN__FILT is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NM_NORMAL_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model NM_NORMAL_BIT is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY11 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY11 is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY12 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY12 is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 QQ_M11 */
    // @ext(0xbb, 0x02, 0x03)
    // model QQ_M11 is Memory;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 TBOOSTRES */
    // @ext(0xbb, 0x02, 0x03)
    // model TBOOSTRES is Memory;

    /** Konstanten 0x0004 ACK_FE01 */
    @ext(0xbc, 0x02, 0x04)
    model ACK_FE01 is Memory;
//    @ext(0x0c, 0x12, 0x04)
//    model ACK_FE01 is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 AIN_ERR_TAUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model AIN_ERR_TAUSS is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AIN_ERR_TAUSS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 AI_TRL */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TRL is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TRL is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 BOOSTER_ORL_MASK */
    // @ext(0xbc, 0x02, 0x04)
    // model BOOSTER_ORL_MASK is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model BOOSTER_ORL_MASK is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 EE_RANGE_FAIL__BCC_STAT */
    // @ext(0xbc, 0x02, 0x04)
    // model EE_RANGE_FAIL__BCC_STAT is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model EE_RANGE_FAIL__BCC_STAT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 EM_EE_REDUND__RED_FS */
    // @ext(0xbc, 0x02, 0x04)
    // model EM_EE_REDUND__RED_FS is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model EM_EE_REDUND__RED_FS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 L_EEA_MAIN_CRC */
    // @ext(0xbc, 0x02, 0x04)
    // model L_EEA_MAIN_CRC is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model L_EEA_MAIN_CRC is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NFSOUT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NM_NETZSTATUS_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model NM_NETZSTATUS_BIT is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NM_NETZSTATUS_BIT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NTC1_SCHLUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model NTC1_SCHLUSS is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NTC1_SCHLUSS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NTC_TEMP_TOL */
    // @ext(0xbc, 0x02, 0x04)
    // model NTC_TEMP_TOL is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NTC_TEMP_TOL is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model RES_CNT_OFF is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 TBOOST */
    // @ext(0xbc, 0x02, 0x04)
    // model TBOOST is Memory;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TBOOST is Memory<UIN>;

    /** Konstanten 0x0005 AI_ANAIN5 */
    @ext(0xbd, 0x02, 0x05)
    model AI_ANAIN5 is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 AI_ESTB1 */
    // @ext(0xbd, 0x02, 0x05)
    // model AI_ESTB1 is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 C_MX_RES_CNT */
    // @ext(0xbd, 0x02, 0x05)
    // model C_MX_RES_CNT is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 K_NTC1 */
    // @ext(0xbd, 0x02, 0x05)
    // model K_NTC1 is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 MAXIONTST0 */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXIONTST0 is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 NGPBS_IMPS */
    // @ext(0xbd, 0x02, 0x05)
    // model NGPBS_IMPS is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 NM_STARTFLAG_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model NM_STARTFLAG_BIT is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 REF_FUSE */
    // @ext(0xbd, 0x02, 0x05)
    // model REF_FUSE is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 V24_KM_ADR_MAX */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX is Memory;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 V24_KM_ADR_MAX_SCOM */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX_SCOM is Memory;

    /** Konstanten 0x0006 AI_ANAIN6 */
    @ext(0xbe, 0x02, 0x06)
    model AI_ANAIN6 is Memory;
//    @ext(0x0e, 0x12, 0x06)
//    model AI_ANAIN6 is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 AI_THZ */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_THZ is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_THZ is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 AI_TVL */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TVL is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TVL is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 EPIONTSTDUR */
    // @ext(0xbe, 0x02, 0x06)
    // model EPIONTSTDUR is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model EPIONTSTDUR is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 NM_NO_AUTOSYN */
    // @ext(0xbe, 0x02, 0x06)
    // model NM_NO_AUTOSYN is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model NM_NO_AUTOSYN is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 N_50HZ_IN */
    // @ext(0xbe, 0x02, 0x06)
    // model N_50HZ_IN is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model N_50HZ_IN is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 SPEICHER_TIEFE */
    // @ext(0xbe, 0x02, 0x06)
    // model SPEICHER_TIEFE is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model SPEICHER_TIEFE is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 V24_TECHOHW */
    // @ext(0xbe, 0x02, 0x06)
    // model V24_TECHOHW is Memory;
//    // @ext(0x0e, 0x12, 0x06)
//    // model V24_TECHOHW is Memory<UIN>;

    /** Konstanten 0x0007 AI_ANAIN7 */
    @ext(0xbf, 0x02, 0x07)
    model AI_ANAIN7 is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 AI_ESTB2 */
    // @ext(0xbf, 0x02, 0x07)
    // model AI_ESTB2 is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 K_NTC2 */
    // @ext(0xbf, 0x02, 0x07)
    // model K_NTC2 is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 NGPBS_FABTAST */
    // @ext(0xbf, 0x02, 0x07)
    // model NGPBS_FABTAST is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 NM_TALK_EBUS_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model NM_TALK_EBUS_BIT is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 TTOL__SW_CONTR */
    // @ext(0xbf, 0x02, 0x07)
    // model TTOL__SW_CONTR is Memory;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 ZST_ENABLE */
    // @ext(0xbf, 0x02, 0x07)
    // model ZST_ENABLE is Memory;

    /** Konstanten 0x0008 EM_EE_REDUND__RED_NFS */
    @ext(0xb0, 0x02, 0x08)
    model EM_EE_REDUND__RED_NFS is Memory;
//    @ext(0x00, 0x12, 0x08)
//    model EM_EE_REDUND__RED_NFS is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 L_PRUEF_DAT_CRC */
    // @ext(0xb0, 0x02, 0x08)
    // model L_PRUEF_DAT_CRC is Memory;
//    // @ext(0x00, 0x12, 0x08)
//    // model L_PRUEF_DAT_CRC is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 NTC1_BRUCH */
    // @ext(0xb0, 0x02, 0x08)
    // model NTC1_BRUCH is Memory;
//    // @ext(0x00, 0x12, 0x08)
//    // model NTC1_BRUCH is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 RECORD */
    // @ext(0xb0, 0x02, 0x08)
    // model RECORD is Memory;
//    // @ext(0x00, 0x12, 0x08)
//    // model RECORD is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory;
//    // @ext(0x00, 0x12, 0x08)
//    // model REGBNK_TASK_1 is Memory<UIN>;

    /** Konstanten 0x000A INIT_TCYCL_0503 */
    @ext(0xb2, 0x02, 0x0A)
    model INIT_TCYCL_0503 is Memory;
//    @ext(0x02, 0x12, 0x0A)
//    model INIT_TCYCL_0503 is Memory<UIN>;

    // Alias of INIT_TCYCL_0503
    // /** Konstanten 0x000A L_ID_PARA_BCC */
    // @ext(0xb2, 0x02, 0x0A)
    // model L_ID_PARA_BCC is Memory;
//    // @ext(0x02, 0x12, 0x0A)
//    // model L_ID_PARA_BCC is Memory<UIN>;

    /** Konstanten 0x000B INIT_TCYCL_0800 */
    @ext(0xb3, 0x02, 0x0B)
    model INIT_TCYCL_0800 is Memory;

    /** Konstanten 0x000F HZ_HYS__POS */
    @ext(0xb7, 0x02, 0x0F)
    model HZ_HYS__POS is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F IPC_IO_MASK */
    // @ext(0xb7, 0x02, 0x0F)
    // model IPC_IO_MASK is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F KTNMULFACT */
    // @ext(0xb7, 0x02, 0x0F)
    // model KTNMULFACT is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F NG_INCR_DECR__INCR */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_INCR_DECR__INCR is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F NG_REG_ANPASS__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_REG_ANPASS__SELF is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F PU_TAKT__PAUSE */
    // @ext(0xb7, 0x02, 0x0F)
    // model PU_TAKT__PAUSE is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F P_HZTHTWWSOLL_MIN */
    // @ext(0xb7, 0x02, 0x0F)
    // model P_HZTHTWWSOLL_MIN is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F P_LPG__START */
    // @ext(0xb7, 0x02, 0x0F)
    // model P_LPG__START is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_IN_1_2__1 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_IN_1_2__1 is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_IN_3_4__3 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_IN_3_4__3 is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_PR_1_2__1 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_PR_1_2__1 is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_PR_3_4__3 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_PR_3_4__3 is Memory;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F WW_HYS__POS */
    // @ext(0xb7, 0x02, 0x0F)
    // model WW_HYS__POS is Memory;

    /** Konstanten 0x0010 AIN_ERR_BW1 */
    @ext(0xa8, 0x02, 0x10)
    model AIN_ERR_BW1 is Memory;
//    @ext(0x18, 0x12, 0x10)
//    model AIN_ERR_BW1 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 EM_EE_REDUND__RED_DEF */
    // @ext(0xa8, 0x02, 0x10)
    // model EM_EE_REDUND__RED_DEF is Memory;
//    // @ext(0x18, 0x12, 0x10)
//    // model EM_EE_REDUND__RED_DEF is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 NTC2_SCHLUSS */
    // @ext(0xa8, 0x02, 0x10)
    // model NTC2_SCHLUSS is Memory;
//    // @ext(0x18, 0x12, 0x10)
//    // model NTC2_SCHLUSS is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 QQ_M2 */
    // @ext(0xa8, 0x02, 0x10)
    // model QQ_M2 is Memory;
//    // @ext(0x18, 0x12, 0x10)
//    // model QQ_M2 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBANK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBANK_TASK_2 is Memory;
//    // @ext(0x18, 0x12, 0x10)
//    // model REGBANK_TASK_2 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBNK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBNK_TASK_2 is Memory;
//    // @ext(0x18, 0x12, 0x10)
//    // model REGBNK_TASK_2 is Memory<UIN>;

    /** Konstanten 0x0011 DE_MIN_CNT */
    @ext(0xa9, 0x02, 0x11)
    model DE_MIN_CNT is Memory;

    /** Konstanten 0x0012 DDSPERRZAEHLER */
    @ext(0xaa, 0x02, 0x12)
    model DDSPERRZAEHLER is Memory;
//    @ext(0x1a, 0x12, 0x12)
//    model DDSPERRZAEHLER is Memory<UIN>;

    /** Konstanten 0x0013 DDRX_OFFSET_S1 */
    @ext(0xab, 0x02, 0x13)
    model DDRX_OFFSET_S1 is Memory;

    /** Konstanten 0x0014 AD_SCALE_2 */
    @ext(0xac, 0x02, 0x14)
    model AD_SCALE_2 is Memory;
//    @ext(0x1c, 0x12, 0x14)
//    model AD_SCALE_2 is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 DDTX_OFFSET_CNT */
    // @ext(0xac, 0x02, 0x14)
    // model DDTX_OFFSET_CNT is Memory;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DDTX_OFFSET_CNT is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 DIG_TST */
    // @ext(0xac, 0x02, 0x14)
    // model DIG_TST is Memory;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DIG_TST is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 L_EWIGEN_ZAEHLER */
    // @ext(0xac, 0x02, 0x14)
    // model L_EWIGEN_ZAEHLER is Memory;
//    // @ext(0x1c, 0x12, 0x14)
//    // model L_EWIGEN_ZAEHLER is Memory<UIN>;

    /** Konstanten 0x0016 L_FS_PARA */
    @ext(0xae, 0x02, 0x16)
    model L_FS_PARA is Memory;
//    @ext(0x1e, 0x12, 0x16)
//    model L_FS_PARA is Memory<UIN>;

    /** Konstanten 0x0018 EEA_CONST_CRC */
    @ext(0xa0, 0x02, 0x18)
    model EEA_CONST_CRC is Memory;
//    @ext(0x10, 0x12, 0x18)
//    model EEA_CONST_CRC is Memory<UIN>;

    // Alias of EEA_CONST_CRC
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory;
//    // @ext(0x10, 0x12, 0x18)
//    // model REGB_TIRP is Memory<UIN>;

    /** Konstanten 0x0019 EEA_RAM_ANF */
    @ext(0xa1, 0x02, 0x19)
    model EEA_RAM_ANF is Memory;

    // Alias of EEA_RAM_ANF
    // /** Konstanten 0x0019 ROM_END_L */
    // @ext(0xa1, 0x02, 0x19)
    // model ROM_END_L is Memory;

    // Alias of EEA_RAM_ANF
    // /** Konstanten 0x0019 RX_BUF_LEN */
    // @ext(0xa1, 0x02, 0x19)
    // model RX_BUF_LEN is Memory;

    /** Konstanten 0x001B EEAEPKANF */
    @ext(0xa3, 0x02, 0x1B)
    model EEAEPKANF is Memory;

    /** Konstanten 0x001E NTCYCL_0503 */
    @ext(0xa6, 0x02, 0x1E)
    model NTCYCL_0503 is Memory;
//    @ext(0x16, 0x12, 0x1E)
//    model NTCYCL_0503 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_0800 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_0800 is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_0800 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_EIG_QQ */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_EIG_QQ is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_EIG_QQ is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_MAX */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_MAX is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_MAX is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_QQ_M10 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_QQ_M10 is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_QQ_M10 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_QQ_M2 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_QQ_M2 is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_QQ_M2 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTC_MIN */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTC_MIN is Memory;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTC_MIN is Memory<UIN>;

    /** Konstanten 0x001F TFRS_A__SELF */
    @ext(0xa7, 0x02, 0x1F)
    model TFRS_A__SELF is Memory;

    /** Konstanten 0x0020 EM_EE_REDUND__RED_INTBCC */
    @ext(0x98, 0x02, 0x20)
    model EM_EE_REDUND__RED_INTBCC is Memory;
//    @ext(0x28, 0x12, 0x20)
//    model EM_EE_REDUND__RED_INTBCC is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_INTBCC
    // /** Konstanten 0x0020 GEC_LDW_RUHE */
    // @ext(0x98, 0x02, 0x20)
    // model GEC_LDW_RUHE is Memory;
//    // @ext(0x28, 0x12, 0x20)
//    // model GEC_LDW_RUHE is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_INTBCC
    // /** Konstanten 0x0020 NTC2_BRUCH */
    // @ext(0x98, 0x02, 0x20)
    // model NTC2_BRUCH is Memory;
//    // @ext(0x28, 0x12, 0x20)
//    // model NTC2_BRUCH is Memory<UIN>;

    /** Konstanten 0x0021 GENPOLY8SIG */
    @ext(0x99, 0x02, 0x21)
    model GENPOLY8SIG is Memory;

    /** Konstanten 0x0024 GEC_PUHZ_SW */
    @ext(0x9c, 0x02, 0x24)
    model GEC_PUHZ_SW is Memory;
//    @ext(0x2c, 0x12, 0x24)
//    model GEC_PUHZ_SW is Memory<UIN>;

    /** Konstanten 0x0027 L_S5_DAT_CRC */
    @ext(0x9f, 0x02, 0x27)
    model L_S5_DAT_CRC is Memory;

    /** Konstanten 0x0028 DL_BOOSTERPLUS */
    @ext(0x90, 0x02, 0x28)
    model DL_BOOSTERPLUS is Memory;
//    @ext(0x20, 0x12, 0x28)
//    model DL_BOOSTERPLUS is Memory<UIN>;

    // Alias of DL_BOOSTERPLUS
    // /** Konstanten 0x0028 P_KOTHTWWSOLL_MIN */
    // @ext(0x90, 0x02, 0x28)
    // model P_KOTHTWWSOLL_MIN is Memory;
//    // @ext(0x20, 0x12, 0x28)
//    // model P_KOTHTWWSOLL_MIN is Memory<UIN>;

    /** Konstanten 0x0029 MIN_TAUTOSYN */
    @ext(0x91, 0x02, 0x29)
    model MIN_TAUTOSYN is Memory;

    /** Konstanten 0x002B GEC_N_NOK_LIMIT */
    @ext(0x93, 0x02, 0x2B)
    model GEC_N_NOK_LIMIT is Memory;

    // Alias of GEC_N_NOK_LIMIT
    // /** Konstanten 0x002B GEC_N_NOK_VSP */
    // @ext(0x93, 0x02, 0x2B)
    // model GEC_N_NOK_VSP is Memory;

    // Alias of GEC_N_NOK_LIMIT
    // /** Konstanten 0x002B GEC_N_NOK_ZUE_N */
    // @ext(0x93, 0x02, 0x2B)
    // model GEC_N_NOK_ZUE_N is Memory;

    /** Konstanten 0x002C GEC_N_NOK_RUHE */
    @ext(0x94, 0x02, 0x2C)
    model GEC_N_NOK_RUHE is Memory;
//    @ext(0x24, 0x12, 0x2C)
//    model GEC_N_NOK_RUHE is Memory<UIN>;

    /** Konstanten 0x002D GEC_LDW_ARB */
    @ext(0x95, 0x02, 0x2D)
    model GEC_LDW_ARB is Memory;

    /** Konstanten 0x002E QAC_MIN */
    @ext(0x96, 0x02, 0x2E)
    model QAC_MIN is Memory;
//    @ext(0x26, 0x12, 0x2E)
//    model QAC_MIN is Memory<UIN>;

    /** Konstanten 0x002F QAC_SHORT */
    @ext(0x97, 0x02, 0x2F)
    model QAC_SHORT is Memory;

    /** Konstanten 0x0030 AD_SCALE_3 */
    @ext(0x88, 0x02, 0x30)
    model AD_SCALE_3 is Memory;
//    @ext(0x38, 0x12, 0x30)
//    model AD_SCALE_3 is Memory<UIN>;

    // Alias of AD_SCALE_3
    // /** Konstanten 0x0030 L_FHIST */
    // @ext(0x88, 0x02, 0x30)
    // model L_FHIST is Memory;
//    // @ext(0x38, 0x12, 0x30)
//    // model L_FHIST is Memory<UIN>;

    /** Konstanten 0x0032 KPMULFACT */
    @ext(0x8a, 0x02, 0x32)
    model KPMULFACT is Memory;
//    @ext(0x3a, 0x12, 0x32)
//    model KPMULFACT is Memory<UIN>;

    // Alias of KPMULFACT
    // /** Konstanten 0x0032 RES_MAX_TIME */
    // @ext(0x8a, 0x02, 0x32)
    // model RES_MAX_TIME is Memory;
//    // @ext(0x3a, 0x12, 0x32)
//    // model RES_MAX_TIME is Memory<UIN>;

    /** Konstanten 0x0035 GEC_AIN_REF */
    @ext(0x8d, 0x02, 0x35)
    model GEC_AIN_REF is Memory;

    /** Konstanten 0x0036 L_EEAEPKDAT */
    @ext(0x8e, 0x02, 0x36)
    model L_EEAEPKDAT is Memory;
//    @ext(0x3e, 0x12, 0x36)
//    model L_EEAEPKDAT is Memory<UIN>;

    // Alias of L_EEAEPKDAT
    // /** Konstanten 0x0036 L_KES_DAT_CRC */
    // @ext(0x8e, 0x02, 0x36)
    // model L_KES_DAT_CRC is Memory;
//    // @ext(0x3e, 0x12, 0x36)
//    // model L_KES_DAT_CRC is Memory<UIN>;

    /** Konstanten 0x0038 FCODE_NOT */
    @ext(0x80, 0x02, 0x38)
    model FCODE_NOT is Memory;
//    @ext(0x30, 0x12, 0x38)
//    model FCODE_NOT is Memory<UIN>;

    /** Konstanten 0x0039 FCODE_MAX */
    @ext(0x81, 0x02, 0x39)
    model FCODE_MAX is Memory;

    /** Konstanten 0x003C NTCYCL_EBUS_SCOM */
    @ext(0x84, 0x02, 0x3C)
    model NTCYCL_EBUS_SCOM is Memory;
//    @ext(0x34, 0x12, 0x3C)
//    model NTCYCL_EBUS_SCOM is Memory<UIN>;

    /** Konstanten 0x003D MAX_TAUTOSYN */
    @ext(0x85, 0x02, 0x3D)
    model MAX_TAUTOSYN is Memory;

    /** Konstanten 0x003F P_KOTHTWWSOLL_MAX */
    @ext(0x87, 0x02, 0x3F)
    model P_KOTHTWWSOLL_MAX is Memory;

    /** Konstanten 0x0040 AIN_ERR_BW2 */
    @ext(0xf8, 0x02, 0x40)
    model AIN_ERR_BW2 is Memory;
//    @ext(0x48, 0x12, 0x40)
//    model AIN_ERR_BW2 is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 NTC1_NTC2 */
    // @ext(0xf8, 0x02, 0x40)
    // model NTC1_NTC2 is Memory;
//    // @ext(0x48, 0x12, 0x40)
//    // model NTC1_NTC2 is Memory<UIN>;

    /** Konstanten 0x0041 P_HZTHTWWSOLL_MAX */
    @ext(0xf9, 0x02, 0x41)
    model P_HZTHTWWSOLL_MAX is Memory;

    /** Konstanten 0x0044 NIT_SHORT */
    @ext(0xfc, 0x02, 0x44)
    model NIT_SHORT is Memory;
//    @ext(0x4c, 0x12, 0x44)
//    model NIT_SHORT is Memory<UIN>;

    /** Konstanten 0x0045 NIT_MIN */
    @ext(0xfd, 0x02, 0x45)
    model NIT_MIN is Memory;

    // Alias of NIT_MIN
    // /** Konstanten 0x0045 WAIT_A_2 */
    // @ext(0xfd, 0x02, 0x45)
    // model WAIT_A_2 is Memory;

    /** Konstanten 0x0048 L_FCODE_ZAEHLER */
    @ext(0xf0, 0x02, 0x48)
    model L_FCODE_ZAEHLER is Memory;
//    @ext(0x40, 0x12, 0x48)
//    model L_FCODE_ZAEHLER is Memory<UIN>;

    /** Konstanten 0x004F NR_ACTIVATE_STATI */
    @ext(0xf7, 0x02, 0x4F)
    model NR_ACTIVATE_STATI is Memory;

    /** Konstanten 0x0050 AD_SCALE_4 */
    @ext(0xe8, 0x02, 0x50)
    model AD_SCALE_4 is Memory;
//    @ext(0x58, 0x12, 0x50)
//    model AD_SCALE_4 is Memory<UIN>;

    // Alias of AD_SCALE_4
    // /** Konstanten 0x0050 DE_MAX_CNT */
    // @ext(0xe8, 0x02, 0x50)
    // model DE_MAX_CNT is Memory;
//    // @ext(0x58, 0x12, 0x50)
//    // model DE_MAX_CNT is Memory<UIN>;

    // Alias of AD_SCALE_4
    // /** Konstanten 0x0050 K_ID */
    // @ext(0xe8, 0x02, 0x50)
    // model K_ID is Memory;
//    // @ext(0x58, 0x12, 0x50)
//    // model K_ID is Memory<UIN>;

    /** Konstanten 0x0051 EEAEPKCRC */
    @ext(0xe9, 0x02, 0x51)
    model EEAEPKCRC is Memory;

    /** Konstanten 0x0053 EEAEPKANF2 */
    @ext(0xeb, 0x02, 0x53)
    model EEAEPKANF2 is Memory;

    /** Konstanten 0x0059 PH_TST_T1 */
    @ext(0xe1, 0x02, 0x59)
    model PH_TST_T1 is Memory;

    /** Konstanten 0x0060 NG_GR_MIN__IMPS */
    @ext(0xd8, 0x02, 0x60)
    model NG_GR_MIN__IMPS is Memory;
//    @ext(0x68, 0x12, 0x60)
//    model NG_GR_MIN__IMPS is Memory<UIN>;

    /** Konstanten 0x0064 SCHEDULE_TAKT */
    @ext(0xdc, 0x02, 0x64)
    model SCHEDULE_TAKT is Memory;
//    @ext(0x6c, 0x12, 0x64)
//    model SCHEDULE_TAKT is Memory<UIN>;

    /** Konstanten 0x0065 NR_NG_BR_MIN */
    @ext(0xdd, 0x02, 0x65)
    model NR_NG_BR_MIN is Memory;

    /** Konstanten 0x0070 AD_SCALE_5 */
    @ext(0xc8, 0x02, 0x70)
    model AD_SCALE_5 is Memory;
//    @ext(0x78, 0x12, 0x70)
//    model AD_SCALE_5 is Memory<UIN>;

    // Alias of AD_SCALE_5
    // /** Konstanten 0x0070 KESS_BIT_MASK */
    // @ext(0xc8, 0x02, 0x70)
    // model KESS_BIT_MASK is Memory;
//    // @ext(0x78, 0x12, 0x70)
//    // model KESS_BIT_MASK is Memory<UIN>;

    // Alias of AD_SCALE_5
    // /** Konstanten 0x0070 OFFSET_NR_CCINFO_NR */
    // @ext(0xc8, 0x02, 0x70)
    // model OFFSET_NR_CCINFO_NR is Memory;
//    // @ext(0x78, 0x12, 0x70)
//    // model OFFSET_NR_CCINFO_NR is Memory<UIN>;

    /** Konstanten 0x0071 OFFSET_NR_CC_RELAESE */
    @ext(0xc9, 0x02, 0x71)
    model OFFSET_NR_CC_RELAESE is Memory;

    /** Konstanten 0x0072 OFFSET_NR_FW1 */
    @ext(0xca, 0x02, 0x72)
    model OFFSET_NR_FW1 is Memory;
//    @ext(0x7a, 0x12, 0x72)
//    model OFFSET_NR_FW1 is Memory<UIN>;

    /** Konstanten 0x0073 OFFSET_NR_FW2 */
    @ext(0xcb, 0x02, 0x73)
    model OFFSET_NR_FW2 is Memory;

    /** Konstanten 0x0074 OFFSET_NR_FW3 */
    @ext(0xcc, 0x02, 0x74)
    model OFFSET_NR_FW3 is Memory;
//    @ext(0x7c, 0x12, 0x74)
//    model OFFSET_NR_FW3 is Memory<UIN>;

    /** Konstanten 0x0075 OFFSET_NR_FW4 */
    @ext(0xcd, 0x02, 0x75)
    model OFFSET_NR_FW4 is Memory;

    /** Konstanten 0x0076 OFFSET_NR_FW5 */
    @ext(0xce, 0x02, 0x76)
    model OFFSET_NR_FW5 is Memory;
//    @ext(0x7e, 0x12, 0x76)
//    model OFFSET_NR_FW5 is Memory<UIN>;

    /** Konstanten 0x0077 OFFSET_NR_CRC */
    @ext(0xcf, 0x02, 0x77)
    model OFFSET_NR_CRC is Memory;

    /** Konstanten 0x0078 ANZ_INFONR */
    @ext(0xc0, 0x02, 0x78)
    model ANZ_INFONR is Memory;
//    @ext(0x70, 0x12, 0x78)
//    model ANZ_INFONR is Memory<UIN>;

    // Alias of ANZ_INFONR
    // /** Konstanten 0x0078 REF_MIN_OFF */
    // @ext(0xc0, 0x02, 0x78)
    // model REF_MIN_OFF is Memory;
//    // @ext(0x70, 0x12, 0x78)
//    // model REF_MIN_OFF is Memory<UIN>;

    /** Konstanten 0x007A ION_GRENZ */
    @ext(0xc2, 0x02, 0x7A)
    model ION_GRENZ is Memory;
//    @ext(0x72, 0x12, 0x7A)
//    model ION_GRENZ is Memory<UIN>;

    /** Konstanten 0x007C ADX_TEST */
    @ext(0xc4, 0x02, 0x7C)
    model ADX_TEST is Memory;
//    @ext(0x74, 0x12, 0x7C)
//    model ADX_TEST is Memory<UIN>;

    /** Konstanten 0x007D V24_KM_ADR_DEFAULT */
    @ext(0xc5, 0x02, 0x7D)
    model V24_KM_ADR_DEFAULT is Memory;

    // Alias of V24_KM_ADR_DEFAULT
    // /** Konstanten 0x007D V24_KM_ADR_SCOM_DEFAULT */
    // @ext(0xc5, 0x02, 0x7D)
    // model V24_KM_ADR_SCOM_DEFAULT is Memory;

    /** Konstanten 0x007F MINTVSOLL__SELF */
    @ext(0xc7, 0x02, 0x7F)
    model MINTVSOLL__SELF is Memory;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F PNL_HZ__SELF */
    // @ext(0xc7, 0x02, 0x7F)
    // model PNL_HZ__SELF is Memory;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F REF_MIN_ON */
    // @ext(0xc7, 0x02, 0x7F)
    // model REF_MIN_ON is Memory;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F TBRMINOFF__SELF */
    // @ext(0xc7, 0x02, 0x7F)
    // model TBRMINOFF__SELF is Memory;

    /** Konstanten 0x0080 MINTVSOLL__TRLAUF */
    @ext(0x38, 0x02, 0x80)
    model MINTVSOLL__TRLAUF is Memory;
//    @ext(0x88, 0x12, 0x80)
//    model MINTVSOLL__TRLAUF is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 NG_GR_MIN__FABTAST */
    // @ext(0x38, 0x02, 0x80)
    // model NG_GR_MIN__FABTAST is Memory;
//    // @ext(0x88, 0x12, 0x80)
//    // model NG_GR_MIN__FABTAST is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 PNL_HZ__BETRART */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__BETRART is Memory;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__BETRART is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 PNL_HZ__PDL */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL is Memory;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__PDL is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 TBRMINOFF__ERDGAS */
    // @ext(0x38, 0x02, 0x80)
    // model TBRMINOFF__ERDGAS is Memory;
//    // @ext(0x88, 0x12, 0x80)
//    // model TBRMINOFF__ERDGAS is Memory<UIN>;

    /** Konstanten 0x0089 EEAEPKCRC2 */
    @ext(0x31, 0x02, 0x89)
    model EEAEPKCRC2 is Memory;

    /** Konstanten 0x008A EEA_RAM_ANF2 */
    @ext(0x32, 0x02, 0x8A)
    model EEA_RAM_ANF2 is Memory;
//    @ext(0x82, 0x12, 0x8A)
//    model EEA_RAM_ANF2 is Memory<UIN>;

    // Alias of EEA_RAM_ANF2
    // /** Konstanten 0x008A WAIT_A_1 */
    // @ext(0x32, 0x02, 0x8A)
    // model WAIT_A_1 is Memory;
//    // @ext(0x82, 0x12, 0x8A)
//    // model WAIT_A_1 is Memory<UIN>;

    /** Konstanten 0x008C EEA_CONST_ANF2 */
    @ext(0x34, 0x02, 0x8C)
    model EEA_CONST_ANF2 is Memory;
//    @ext(0x84, 0x12, 0x8C)
//    model EEA_CONST_ANF2 is Memory<UIN>;

    /** Konstanten 0x0090 AD_SCALE_6 */
    @ext(0x28, 0x02, 0x90)
    model AD_SCALE_6 is Memory;
//    @ext(0x98, 0x12, 0x90)
//    model AD_SCALE_6 is Memory<UIN>;

    // Alias of AD_SCALE_6
    // /** Konstanten 0x0090 NTC_ERR_ZEIT */
    // @ext(0x28, 0x02, 0x90)
    // model NTC_ERR_ZEIT is Memory;
//    // @ext(0x98, 0x12, 0x90)
//    // model NTC_ERR_ZEIT is Memory<UIN>;

    // Alias of AD_SCALE_6
    // /** Konstanten 0x0090 SST1 */
    // @ext(0x28, 0x02, 0x90)
    // model SST1 is Memory;
//    // @ext(0x98, 0x12, 0x90)
//    // model SST1 is Memory<UIN>;

    /** Konstanten 0x00A0 CS_BYTE_WR */
    @ext(0x18, 0x02, 0xA0)
    model CS_BYTE_WR is Memory;
//    @ext(0xa8, 0x12, 0xA0)
//    model CS_BYTE_WR is Memory<UIN>;

    // Alias of CS_BYTE_WR
    // /** Konstanten 0x00A0 ENAB_MASK */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK is Memory;
//    // @ext(0xa8, 0x12, 0xA0)
//    // model ENAB_MASK is Memory<UIN>;

    // Alias of CS_BYTE_WR
    // /** Konstanten 0x00A0 ENAB_MASK_WD */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK_WD is Memory;
//    // @ext(0xa8, 0x12, 0xA0)
//    // model ENAB_MASK_WD is Memory<UIN>;

    /** Konstanten 0x00A1 CS_BYTE_RD */
    @ext(0x19, 0x02, 0xA1)
    model CS_BYTE_RD is Memory;

    /** Konstanten 0x00A2 EEA_CONST_CRC2 */
    @ext(0x1a, 0x02, 0xA2)
    model EEA_CONST_CRC2 is Memory;
//    @ext(0xaa, 0x12, 0xA2)
//    model EEA_CONST_CRC2 is Memory<UIN>;

    /** Konstanten 0x00A3 INT_EEA_ID_NR_BCC */
    @ext(0x1b, 0x02, 0xA3)
    model INT_EEA_ID_NR_BCC is Memory;

    /** Konstanten 0x00A4 INT_EEA_ID_NR_BCC_1 */
    @ext(0x1c, 0x02, 0xA4)
    model INT_EEA_ID_NR_BCC_1 is Memory;
//    @ext(0xac, 0x12, 0xA4)
//    model INT_EEA_ID_NR_BCC_1 is Memory<UIN>;

    /** Konstanten 0x00A5 INT_EEA_ID_CRC_BCC */
    @ext(0x1d, 0x02, 0xA5)
    model INT_EEA_ID_CRC_BCC is Memory;

    /** Konstanten 0x00A6 INT_EEA_ID_NR_BCC_2 */
    @ext(0x1e, 0x02, 0xA6)
    model INT_EEA_ID_NR_BCC_2 is Memory;
//    @ext(0xae, 0x12, 0xA6)
//    model INT_EEA_ID_NR_BCC_2 is Memory<UIN>;

    /** Konstanten 0x00A8 INT_EEA_ID_CRC_BCC_2 */
    @ext(0x10, 0x02, 0xA8)
    model INT_EEA_ID_CRC_BCC_2 is Memory;
//    @ext(0xa0, 0x12, 0xA8)
//    model INT_EEA_ID_CRC_BCC_2 is Memory<UIN>;

    // Alias of INT_EEA_ID_CRC_BCC_2
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory;
//    // @ext(0xa0, 0x12, 0xA8)
//    // model NCL1HRS is Memory<UIN>;

    /** Konstanten 0x00A9 EEA_ION_KALIB */
    @ext(0x11, 0x02, 0xA9)
    model EEA_ION_KALIB is Memory;

    /** Konstanten 0x00AA EEA_ION_KALIB_INV */
    @ext(0x12, 0x02, 0xAA)
    model EEA_ION_KALIB_INV is Memory;
//    @ext(0xa2, 0x12, 0xAA)
//    model EEA_ION_KALIB_INV is Memory<UIN>;

    /** Konstanten 0x00AB EEA_ION_KALIB_2 */
    @ext(0x13, 0x02, 0xAB)
    model EEA_ION_KALIB_2 is Memory;

    /** Konstanten 0x00AB EEA_ION_KALIB_2_INV */
    @ext(0x14, 0x02, 0xAC)
    model EEA_ION_KALIB_2_INV is Memory;

    /** Konstanten 0x00B0 SST3 */
    @ext(0x08, 0x02, 0xB0)
    model SST3 is Memory;
//    @ext(0xb8, 0x12, 0xB0)
//    model SST3 is Memory<UIN>;

    /** Konstanten 0x00B4 C_DECGAP */
    @ext(0x0c, 0x02, 0xB4)
    model C_DECGAP is Memory;
//    @ext(0xbc, 0x12, 0xB4)
//    model C_DECGAP is Memory<UIN>;

    // Alias of C_DECGAP
    // /** Konstanten 0x00B4 NCL20SEC */
    // @ext(0x0c, 0x02, 0xB4)
    // model NCL20SEC is Memory;
//    // @ext(0xbc, 0x12, 0xB4)
//    // model NCL20SEC is Memory<UIN>;

    /** Konstanten 0x00B7 REF_MAX_ON */
    @ext(0x0f, 0x02, 0xB7)
    model REF_MAX_ON is Memory;

    /** Konstanten 0x00BF ROM_PAGES */
    @ext(0x07, 0x02, 0xBF)
    model ROM_PAGES is Memory;

    /** Konstanten 0x00C1 REF_MAX_OFF */
    @ext(0x79, 0x02, 0xC1)
    model REF_MAX_OFF is Memory;

    /** Konstanten 0x00C8 NCL100MSEC */
    @ext(0x70, 0x02, 0xC8)
    model NCL100MSEC is Memory;
//    @ext(0xc0, 0x12, 0xC8)
//    model NCL100MSEC is Memory<UIN>;

    /** Konstanten 0x00D0 RST1 */
    @ext(0x68, 0x02, 0xD0)
    model RST1 is Memory;
//    @ext(0xd8, 0x12, 0xD0)
//    model RST1 is Memory<UIN>;

    /** Konstanten 0x00D5 AD8_OF_25GRDC */
    @ext(0x6d, 0x02, 0xD5)
    model AD8_OF_25GRDC is Memory;

    /** Konstanten 0x00E0 TFRS_A__REST */
    @ext(0x58, 0x02, 0xE0)
    model TFRS_A__REST is Memory;
//    @ext(0xe8, 0x12, 0xE0)
//    model TFRS_A__REST is Memory<UIN>;

    /** Konstanten 0x00E1 NTC_TOL_ZEIT */
    @ext(0x59, 0x02, 0xE1)
    model NTC_TOL_ZEIT is Memory;

    /** Konstanten 0x00E9 AD_TWWSOLL_MAX */
    @ext(0x51, 0x02, 0xE9)
    model AD_TWWSOLL_MAX is Memory;

    /** Konstanten 0x00EB QAC_MAX */
    @ext(0x53, 0x02, 0xEB)
    model QAC_MAX is Memory;

    /** Konstanten 0x00F0 HZ_HYS__NEG */
    @ext(0x48, 0x02, 0xF0)
    model HZ_HYS__NEG is Memory;
//    @ext(0xf8, 0x12, 0xF0)
//    model HZ_HYS__NEG is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 NG_INCR_DECR__DECR */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_INCR_DECR__DECR is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NG_INCR_DECR__DECR is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 NG_REG_ANPASS__START */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_REG_ANPASS__START is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NG_REG_ANPASS__START is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 PU_TAKT__PULS */
    // @ext(0x48, 0x02, 0xF0)
    // model PU_TAKT__PULS is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model PU_TAKT__PULS is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 P_LPG__BETRIEB */
    // @ext(0x48, 0x02, 0xF0)
    // model P_LPG__BETRIEB is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model P_LPG__BETRIEB is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 RST3 */
    // @ext(0x48, 0x02, 0xF0)
    // model RST3 is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model RST3 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_IN_1_2__2 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_IN_1_2__2 is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_IN_1_2__2 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_IN_3_4__4 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_IN_3_4__4 is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_IN_3_4__4 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_PR_1_2__2 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_PR_1_2__2 is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_PR_1_2__2 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_PR_3_4__4 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_PR_3_4__4 is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_PR_3_4__4 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 WW_HYS__NEG */
    // @ext(0x48, 0x02, 0xF0)
    // model WW_HYS__NEG is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model WW_HYS__NEG is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 XRAM_PAGE_DEFAULT */
    // @ext(0x48, 0x02, 0xF0)
    // model XRAM_PAGE_DEFAULT is Memory;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model XRAM_PAGE_DEFAULT is Memory<UIN>;

    /** Konstanten 0x00F1 NTC_TA_MAX */
    @ext(0x49, 0x02, 0xF1)
    model NTC_TA_MAX is Memory;

    // Alias of NTC_TA_MAX
    // /** Konstanten 0x00F1 QQ_M10 */
    // @ext(0x49, 0x02, 0xF1)
    // model QQ_M10 is Memory;

    /** Konstanten 0x00F3 NIT_MAX */
    @ext(0x4b, 0x02, 0xF3)
    model NIT_MAX is Memory;

    /** Konstanten 0x00F5 DIG_TST_2 */
    @ext(0x4d, 0x02, 0xF5)
    model DIG_TST_2 is Memory;

    /** Konstanten 0x00F8 NTC_MAX */
    @ext(0x40, 0x02, 0xF8)
    model NTC_MAX is Memory;
//    @ext(0xf0, 0x12, 0xF8)
//    model NTC_MAX is Memory<UIN>;

    // Alias of NTC_MAX
    // /** Konstanten 0x00F8 TTOL__NON_ZERO_CHECK */
    // @ext(0x40, 0x02, 0xF8)
    // model TTOL__NON_ZERO_CHECK is Memory;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model TTOL__NON_ZERO_CHECK is Memory<UIN>;

    /** Konstanten 0x00FA EEA_P_CODE */
    @ext(0x42, 0x02, 0xFA)
    model EEA_P_CODE is Memory;
//    @ext(0xf2, 0x12, 0xFA)
//    model EEA_P_CODE is Memory<UIN>;

    // Alias of EEA_P_CODE
    // /** Konstanten 0x00FA EEA_STATI_AKTIV */
    // @ext(0x42, 0x02, 0xFA)
    // model EEA_STATI_AKTIV is Memory;
//    // @ext(0xf2, 0x12, 0xFA)
//    // model EEA_STATI_AKTIV is Memory<UIN>;

    // Alias of EEA_P_CODE
    // /** Konstanten 0x00FA MX_RES_CYCL */
    // @ext(0x42, 0x02, 0xFA)
    // model MX_RES_CYCL is Memory;
//    // @ext(0xf2, 0x12, 0xFA)
//    // model MX_RES_CYCL is Memory<UIN>;

    /** Konstanten 0x00FB BOOSTER_ANL_MASK */
    @ext(0x43, 0x02, 0xFB)
    model BOOSTER_ANL_MASK is Memory;

    /** Konstanten 0x00FC HZ_KTND__D */
    @ext(0x44, 0x02, 0xFC)
    model HZ_KTND__D is Memory;
//    @ext(0xf4, 0x12, 0xFC)
//    model HZ_KTND__D is Memory<UIN>;

    /** Konstanten 0x00FF ADC_BREAK */
    @ext(0x47, 0x02, 0xFF)
    model ADC_BREAK is Memory;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF L_EEPROM */
    // @ext(0x47, 0x02, 0xFF)
    // model L_EEPROM is Memory;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF QQ_M25 */
    // @ext(0x47, 0x02, 0xFF)
    // model QQ_M25 is Memory;

    /** Konstanten 0x0100 EEA_ANF2 */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model EEA_ANF2 is Memory;
//    @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    model EEA_ANF2 is Memory<UIN>;

    /** Konstanten 0x011D TWARTEQQ */
    @ext(0x29, 0x06, 0x01, 0x02, 0x1D)
    model TWARTEQQ is Memory;

    /** Konstanten 0x0191 EEA_HL_HIADR */
    @ext(0xa5, 0x06, 0x01, 0x02, 0x91)
    model EEA_HL_HIADR is Memory;

    /** Konstanten 0x0192 EEA_WRONG_ADR */
    @ext(0x16, 0x06, 0x01, 0x12, 0x92)
    model EEA_WRONG_ADR is Memory<UIN>;

    /** Konstanten 0x0194 EEA_FCODE_NOT */
    @ext(0x10, 0x06, 0x01, 0x12, 0x94)
    model EEA_FCODE_NOT is ReadonlyMemory<UIN>;

    /** Konstanten 0x0196 EEA_FC_57 */
    @ext(0x12, 0x06, 0x01, 0x12, 0x96)
    model EEA_FC_57 is ReadonlyMemory<UIN>;

    /** Konstanten 0x0198 EEA_FC_55 */
    @ext(0x1c, 0x06, 0x01, 0x12, 0x98)
    model EEA_FC_55 is ReadonlyMemory<UIN>;

    /** Konstanten 0x019A EEA_FC_53 */
    @ext(0x1e, 0x06, 0x01, 0x12, 0x9A)
    model EEA_FC_53 is ReadonlyMemory<UIN>;

    /** Konstanten 0x019C EEA_FC_52 */
    @ext(0x18, 0x06, 0x01, 0x12, 0x9C)
    model EEA_FC_52 is ReadonlyMemory<UIN>;

    /** Konstanten 0x019E EEA_FC_51 */
    @ext(0x1a, 0x06, 0x01, 0x12, 0x9E)
    model EEA_FC_51 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01A0 EEA_FC_49 */
    @ext(0x24, 0x06, 0x01, 0x12, 0xA0)
    model EEA_FC_49 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01A2 EEA_FC_48 */
    @ext(0x26, 0x06, 0x01, 0x12, 0xA2)
    model EEA_FC_48 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01A4 EEA_FC_47 */
    @ext(0x20, 0x06, 0x01, 0x12, 0xA4)
    model EEA_FC_47 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01A6 EEA_FC_46 */
    @ext(0x22, 0x06, 0x01, 0x12, 0xA6)
    model EEA_FC_46 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01A8 EEA_FC_45 */
    @ext(0x2c, 0x06, 0x01, 0x12, 0xA8)
    model EEA_FC_45 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01AA EEA_FC_44 */
    @ext(0x2e, 0x06, 0x01, 0x12, 0xAA)
    model EEA_FC_44 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01AC EEA_FC_43 */
    @ext(0x28, 0x06, 0x01, 0x12, 0xAC)
    model EEA_FC_43 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01AE EEA_FC_41 */
    @ext(0x2a, 0x06, 0x01, 0x12, 0xAE)
    model EEA_FC_41 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01B0 EEA_FC_39 */
    @ext(0x34, 0x06, 0x01, 0x12, 0xB0)
    model EEA_FC_39 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01B2 EEA_FC_38 */
    @ext(0x36, 0x06, 0x01, 0x12, 0xB2)
    model EEA_FC_38 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01B4 EEA_FC_37 */
    @ext(0x30, 0x06, 0x01, 0x12, 0xB4)
    model EEA_FC_37 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01B6 EEA_FC_36 */
    @ext(0x32, 0x06, 0x01, 0x12, 0xB6)
    model EEA_FC_36 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01B8 EEA_FC_35 */
    @ext(0x3c, 0x06, 0x01, 0x12, 0xB8)
    model EEA_FC_35 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01BA EEA_FC_34 */
    @ext(0x3e, 0x06, 0x01, 0x12, 0xBA)
    model EEA_FC_34 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01BC EEA_FC_33 */
    @ext(0x38, 0x06, 0x01, 0x12, 0xBC)
    model EEA_FC_33 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01BE EEA_FC_32 */
    @ext(0x3a, 0x06, 0x01, 0x12, 0xBE)
    model EEA_FC_32 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01C0 EEA_FC_31 */
    @ext(0x44, 0x06, 0x01, 0x12, 0xC0)
    model EEA_FC_31 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01C2 EEA_FC_30 */
    @ext(0x46, 0x06, 0x01, 0x12, 0xC2)
    model EEA_FC_30 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01C4 EEA_FC_24 */
    @ext(0x40, 0x06, 0x01, 0x12, 0xC4)
    model EEA_FC_24 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01C6 EEA_FC_23 */
    @ext(0x42, 0x06, 0x01, 0x12, 0xC6)
    model EEA_FC_23 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01C8 EEA_FC_22 */
    @ext(0x4c, 0x06, 0x01, 0x12, 0xC8)
    model EEA_FC_22 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01CA EEA_FC_21 */
    @ext(0x4e, 0x06, 0x01, 0x12, 0xCA)
    model EEA_FC_21 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01CC EEA_FC_18 */
    @ext(0x48, 0x06, 0x01, 0x12, 0xCC)
    model EEA_FC_18 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01CE EEA_FC_16 */
    @ext(0x4a, 0x06, 0x01, 0x12, 0xCE)
    model EEA_FC_16 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01D0 EEA_FC_15 */
    @ext(0x54, 0x06, 0x01, 0x12, 0xD0)
    model EEA_FC_15 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01D2 EEA_FC_14 */
    @ext(0x56, 0x06, 0x01, 0x12, 0xD2)
    model EEA_FC_14 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01D4 EEA_FC_12 */
    @ext(0x50, 0x06, 0x01, 0x12, 0xD4)
    model EEA_FC_12 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01D6 EEA_FC_11 */
    @ext(0x52, 0x06, 0x01, 0x12, 0xD6)
    model EEA_FC_11 is ReadonlyMemory<UIN>;

    /** Konstanten 0x01D8 EEA_HBRONTAG */
    @ext(0xec, 0x06, 0x01, 0x02, 0xD8)
    model EEA_HBRONTAG is ReadonlyMemory;

    /** Konstanten 0x01D9 EEA_NZUENDTAG */
    @ext(0xed, 0x06, 0x01, 0x02, 0xD9)
    model EEA_NZUENDTAG is ReadonlyMemory;

    /** Konstanten 0x01DA EEA_N_PON */
    @ext(0xd2, 0x06, 0x01, 0x22, 0xDA)
    model EEA_N_PON is ReadonlyMemory<U3N>;

    /** Konstanten 0x01DD EEA_N_KON */
    @ext(0xd5, 0x06, 0x01, 0x22, 0xDD)
    model EEA_N_KON is ReadonlyMemory<U3N>;

    /** Konstanten 0x01E0 EEA_RES_CNT */
    @ext(0xe8, 0x06, 0x01, 0x22, 0xE0)
    model EEA_RES_CNT is ReadonlyMemory<U3N>;

    /** Konstanten 0x01E3 EEA_SHUT_OFF */
    @ext(0xeb, 0x06, 0x01, 0x22, 0xE3)
    model EEA_SHUT_OFF is ReadonlyMemory<U3N>;

    /** Konstanten 0x01E6 EEA_H_PON */
    @ext(0xee, 0x06, 0x01, 0x22, 0xE6)
    model EEA_H_PON is ReadonlyMemory<U3N>;

    /** Konstanten 0x01E9 EEA_H_BON */
    @ext(0x6d, 0x06, 0x01, 0x12, 0xE9)
    model EEA_H_BON is ReadonlyMemory<UIN>;

    /** Konstanten 0x01EB EEA_N_ZUE */
    @ext(0xe3, 0x06, 0x01, 0x22, 0xEB)
    model EEA_N_ZUE is ReadonlyMemory<U3N>;

    /** Konstanten 0x01EE EEA_BAUSTAND */
    @ext(0x6a, 0x06, 0x01, 0x12, 0xEE)
    model EEA_BAUSTAND is ReadonlyMemory<UIN>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x01EE EEA_PRUEF_LOW */
    // @ext(0xda, 0x06, 0x01, 0x02, 0xEE)
    // model EEA_PRUEF_LOW is ReadonlyMemory;
//    // @ext(0x6a, 0x06, 0x01, 0x12, 0xEE)
//    // model EEA_PRUEF_LOW is ReadonlyMemory<UIN>;

    /** Konstanten 0x01F0 EEA_KUNDE */
    @ext(0xc4, 0x06, 0x01, 0x02, 0xF0)
    model EEA_KUNDE is ReadonlyMemory;

    /** Konstanten 0x01F1 EEA_VARIANTE */
    @ext(0x75, 0x06, 0x01, 0x12, 0xF1)
    model EEA_VARIANTE is ReadonlyMemory<UIN>;

    /** Konstanten 0x01F3 EEA_SERIAL_NO */
    @ext(0xfb, 0x06, 0x01, 0x22, 0xF3)
    model EEA_SERIAL_NO is ReadonlyMemory<U3N>;

    /** Konstanten 0x01F6 EEA_PRUEF_CRC */
    @ext(0xc2, 0x06, 0x01, 0x02, 0xF6)
    model EEA_PRUEF_CRC is ReadonlyMemory;

    /** Konstanten 0x0200 EEA_F_HIST_PTR_LOW */
    @ext(0xac, 0x06, 0x02, 0x02, 0x00)
    model EEA_F_HIST_PTR_LOW is ReadonlyMemory;

    /** Konstanten 0x0200 EEA_F_HIST_PTR */
    @ext(0x1c, 0x06, 0x02, 0x12, 0x00)
    model EEA_F_HIST_PTR is ReadonlyMemory<UIN>;
    /** Konstanten 0x0201 EEA_F_HIST_PTR_HIGH */
    @ext(0xad, 0x06, 0x02, 0x02, 0x01)
    model EEA_F_HIST_PTR_HIGH is ReadonlyMemory;

    /** Konstanten 0x0202 EEA_F_HIST_ANF */
    @ext(0xae, 0x06, 0x02, 0x02, 0x02)
    model EEA_F_HIST_ANF is Memory;
    /** Konstanten 0x7202 EEA_F_HIST_ANF1 */
    @ext(0x5A, 0x06, 0x02, 0x72, 0x02)
    model EEA_F_HIST_ANF1 is FaultHistory;

    /** Konstanten 0x7A02 EEA_F_HIST_ANF2 */
    @ext(0x02, 0x06, 0x02, 0x7A, 0x02)
    model EEA_F_HIST_ANF2 is FaultHistory;

    /** Konstanten 0x8202 EEA_F_HIST_ANF3 */
    @ext(0x5E, 0x06, 0x02, 0x82, 0x02)
    model EEA_F_HIST_ANF3 is FaultHistory;

    /** Konstanten 0x8A02 EEA_F_HIST_ANF4 */
    @ext(0x06, 0x06, 0x02, 0x8A, 0x02)
    model EEA_F_HIST_ANF4 is FaultHistory;

    /** Konstanten 0x9202 EEA_F_HIST_ANF5 */
    @ext(0xEE, 0x06, 0x02, 0x92, 0x02)
    model EEA_F_HIST_ANF5 is FaultHistory;

    /** Konstanten 0x9A02 EEA_F_HIST_ANF6 */
    @ext(0xB6, 0x06, 0x02, 0x9A, 0x02)
    model EEA_F_HIST_ANF6 is FaultHistory;

    /** Konstanten 0x0231 EEA_F_HIST_END */
    @ext(0x9d, 0x06, 0x02, 0x02, 0x31)
    model EEA_F_HIST_END is Memory;

    /** Konstanten 0x02EE SYS_TAKT */
    @ext(0x42, 0x06, 0x02, 0x02, 0xEE)
    model SYS_TAKT is Memory;
//    @ext(0xf2, 0x06, 0x02, 0x12, 0xEE)
//    model SYS_TAKT is Memory<UIN>;

    /** Konstanten 0x0300 EEA_TVSOLL_EPM */
    @ext(0x10, 0x06, 0x03, 0x02, 0x00)
    model EEA_TVSOLL_EPM is Memory;
//    @ext(0xa0, 0x06, 0x03, 0x12, 0x00)
//    model EEA_TVSOLL_EPM is Memory<UIN>;

    /** Konstanten 0x0301 EEA_TVABSENK */
    @ext(0x11, 0x06, 0x03, 0x02, 0x01)
    model EEA_TVABSENK is Memory;

    /** Konstanten 0x0302 EEA_TWWSOLL_EPM */
    @ext(0x12, 0x06, 0x03, 0x02, 0x02)
    model EEA_TWWSOLL_EPM is Memory;
//    @ext(0xa2, 0x06, 0x03, 0x12, 0x02)
//    model EEA_TWWSOLL_EPM is Memory<UIN>;

    /** Konstanten 0x0303 EEA_WISO_EPM */
    @ext(0x13, 0x06, 0x03, 0x02, 0x03)
    model EEA_WISO_EPM is Memory;

    /** Konstanten 0x0304 EEA_MAINPARACRC */
    @ext(0x14, 0x06, 0x03, 0x02, 0x04)
    model EEA_MAINPARACRC is Memory;
//    @ext(0xa4, 0x06, 0x03, 0x12, 0x04)
//    model EEA_MAINPARACRC is Memory<UIN>;

    /** Konstanten 0x0307 EEA_TVSOLL_EPM2 */
    @ext(0x17, 0x06, 0x03, 0x02, 0x07)
    model EEA_TVSOLL_EPM2 is Memory;


    // ====================================
    // --- External RAM (XRAM) ---
    // ====================================

    /** External RAM (XRAM) 0xF000 TX_BUFFER_END */
    @ext(0xe4, 0x03, 0x00)
    model TX_BUFFER_END is Memory;
//    @ext(0x54, 0x13, 0x00)
//    model TX_BUFFER_END is Memory<UIN>;

    /** External RAM (XRAM) 0xF001 EBUS_ERROR */
    @ext(0xe5, 0x03, 0x01)
    model EBUS_ERROR is Memory;

    /** External RAM (XRAM) 0xF002 TX_QQ */
    @ext(0xe6, 0x03, 0x02)
    model TX_QQ is Memory;
//    @ext(0x56, 0x13, 0x02)
//    model TX_QQ is Memory<UIN>;

    // Alias of TX_QQ
    // /** External RAM (XRAM) 0xF002 TX_XRAM */
    // @ext(0xe6, 0x03, 0x02)
    // model TX_XRAM is Memory;
//    // @ext(0x56, 0x13, 0x02)
//    // model TX_XRAM is Memory<UIN>;

    /** External RAM (XRAM) 0xF003 TX_ZZ */
    @ext(0xe7, 0x03, 0x03)
    model TX_ZZ is Memory;

    /** External RAM (XRAM) 0xF004 TX_PB */
    @ext(0xe0, 0x03, 0x04)
    model TX_PB is Memory;
//    @ext(0x50, 0x13, 0x04)
//    model TX_PB is Memory<UIN>;

    /** External RAM (XRAM) 0xF005 TX_SB */
    @ext(0xe1, 0x03, 0x05)
    model TX_SB is Memory;

    /** External RAM (XRAM) 0xF006 TX_NN */
    @ext(0xe2, 0x03, 0x06)
    model TX_NN is Memory;
//    @ext(0x52, 0x13, 0x06)
//    model TX_NN is Memory<UIN>;

    /** External RAM (XRAM) 0xF007 TX_DB1 */
    @ext(0xe3, 0x03, 0x07)
    model TX_DB1 is Memory;

    /** External RAM (XRAM) 0xF008 TX_DB2 */
    @ext(0xec, 0x03, 0x08)
    model TX_DB2 is Memory;
//    @ext(0x5c, 0x13, 0x08)
//    model TX_DB2 is Memory<UIN>;

    /** External RAM (XRAM) 0xF009 TX_DB3 */
    @ext(0xed, 0x03, 0x09)
    model TX_DB3 is Memory;

    /** External RAM (XRAM) 0xF00A TX_DB4 */
    @ext(0xee, 0x03, 0x0A)
    model TX_DB4 is Memory;
//    @ext(0x5e, 0x13, 0x0A)
//    model TX_DB4 is Memory<UIN>;

    /** External RAM (XRAM) 0xF00B TX_DB5 */
    @ext(0xef, 0x03, 0x0B)
    model TX_DB5 is Memory;

    /** External RAM (XRAM) 0xF00C TX_DB6 */
    @ext(0xe8, 0x03, 0x0C)
    model TX_DB6 is Memory;
//    @ext(0x58, 0x13, 0x0C)
//    model TX_DB6 is Memory<UIN>;

    /** External RAM (XRAM) 0xF00D TX_DBX */
    @ext(0xe9, 0x03, 0x0D)
    model TX_DBX is Memory;

    /** External RAM (XRAM) 0xF01B RX_QQ */
    @ext(0xff, 0x03, 0x1B)
    model RX_QQ is Memory;

    // Alias of RX_QQ
    // /** External RAM (XRAM) 0xF01B RX_XRAM */
    // @ext(0xff, 0x03, 0x1B)
    // model RX_XRAM is Memory;

    /** External RAM (XRAM) 0xF01C RX_ZZ */
    @ext(0xf8, 0x03, 0x1C)
    model RX_ZZ is Memory;
//    @ext(0x48, 0x13, 0x1C)
//    model RX_ZZ is Memory<UIN>;

    /** External RAM (XRAM) 0xF01D RX_PB */
    @ext(0xf9, 0x03, 0x1D)
    model RX_PB is Memory;

    /** External RAM (XRAM) 0xF01E RX_SB */
    @ext(0xfa, 0x03, 0x1E)
    model RX_SB is Memory;
//    @ext(0x4a, 0x13, 0x1E)
//    model RX_SB is Memory<UIN>;

    /** External RAM (XRAM) 0xF01F RX_NN */
    @ext(0xfb, 0x03, 0x1F)
    model RX_NN is Memory;

    /** External RAM (XRAM) 0xF020 RX_DB1 */
    @ext(0xc4, 0x03, 0x20)
    model RX_DB1 is Memory;
//    @ext(0x74, 0x13, 0x20)
//    model RX_DB1 is Memory<UIN>;

    /** External RAM (XRAM) 0xF021 RX_DB2 */
    @ext(0xc5, 0x03, 0x21)
    model RX_DB2 is Memory;

    /** External RAM (XRAM) 0xF022 RX_DB3 */
    @ext(0xc6, 0x03, 0x22)
    model RX_DB3 is Memory;
//    @ext(0x76, 0x13, 0x22)
//    model RX_DB3 is Memory<UIN>;

    /** External RAM (XRAM) 0xF023 RX_DB4 */
    @ext(0xc7, 0x03, 0x23)
    model RX_DB4 is Memory;

    /** External RAM (XRAM) 0xF024 RX_DB5 */
    @ext(0xc0, 0x03, 0x24)
    model RX_DB5 is Memory;
//    @ext(0x70, 0x13, 0x24)
//    model RX_DB5 is Memory<UIN>;

    /** External RAM (XRAM) 0xF025 RX_DB6 */
    @ext(0xc1, 0x03, 0x25)
    model RX_DB6 is Memory;

    /** External RAM (XRAM) 0xF026 RX_DB7 */
    @ext(0xc2, 0x03, 0x26)
    model RX_DB7 is Memory;
//    @ext(0x72, 0x13, 0x26)
//    model RX_DB7 is Memory<UIN>;

    /** External RAM (XRAM) 0xF027 RX_DB8 */
    @ext(0xc3, 0x03, 0x27)
    model RX_DB8 is Memory;

    /** External RAM (XRAM) 0xF029 RX_DB10 */
    @ext(0xcd, 0x03, 0x29)
    model RX_DB10 is Memory;

    /** External RAM (XRAM) 0xF02B RX_DB12 */
    @ext(0xcf, 0x03, 0x2B)
    model RX_DB12 is Memory;

    /** External RAM (XRAM) 0xF02D RX_DB14 */
    @ext(0xc9, 0x03, 0x2D)
    model RX_DB14 is Memory;

    /** External RAM (XRAM) 0xF02F RX_DB16 */
    @ext(0xcb, 0x03, 0x2F)
    model RX_DB16 is Memory;

    /** External RAM (XRAM) 0xF031 RX_DB18 */
    @ext(0xd5, 0x03, 0x31)
    model RX_DB18 is Memory;

    /** External RAM (XRAM) 0xF033 RX_DB20 */
    @ext(0xd7, 0x03, 0x33)
    model RX_DB20 is Memory;

    /** External RAM (XRAM) 0xF035 RX_OFFSET_CNT */
    @ext(0xd1, 0x03, 0x35)
    model RX_OFFSET_CNT is Memory;

    // Alias of RX_OFFSET_CNT
    // /** External RAM (XRAM) 0xF035 RX_XRAM_END */
    // @ext(0xd1, 0x03, 0x35)
    // model RX_XRAM_END is Memory;

    /** External RAM (XRAM) 0xF036 RX_BUFFER_END */
    @ext(0xd2, 0x03, 0x36)
    model RX_BUFFER_END is Memory;
//    @ext(0x62, 0x13, 0x36)
//    model RX_BUFFER_END is Memory<UIN>;

    /** External RAM (XRAM) 0xF037 EBUS_ACK */
    @ext(0xd3, 0x03, 0x37)
    model EBUS_ACK is Memory;

    /** External RAM (XRAM) 0xF038 TALK_EBUS */
    @ext(0xdc, 0x03, 0x38)
    model TALK_EBUS is Memory;
//    @ext(0x6c, 0x13, 0x38)
//    model TALK_EBUS is Memory<UIN>;

    /** External RAM (XRAM) 0xF039 T_SYN */
    @ext(0xdd, 0x03, 0x39)
    model T_SYN is Memory;

    /** External RAM (XRAM) 0xF03A V24_DELAY_TIMER */
    @ext(0xde, 0x03, 0x3A)
    model V24_DELAY_TIMER is Memory;
//    @ext(0x6e, 0x13, 0x3A)
//    model V24_DELAY_TIMER is Memory<UIN>;

    /** External RAM (XRAM) 0xF03B DL_HYS_TH_OFF_ */
    @ext(0xdf, 0x03, 0x3B)
    model DL_HYS_TH_OFF_ is Memory;

    /** External RAM (XRAM) 0xF03C TXist */
    @ext(0xd8, 0x03, 0x3C)
    model TXist is Memory;
//    @ext(0x68, 0x13, 0x3C)
//    model TXist is Memory<UIN>;

    /** External RAM (XRAM) 0xF03D TVist_start_FL */
    @ext(0xd9, 0x03, 0x3D)
    model TVist_start_FL is Memory;

    /** External RAM (XRAM) 0xF03E DL_TH_OFF_SEC */
    @ext(0xda, 0x03, 0x3E)
    model DL_TH_OFF_SEC is Memory;
//    @ext(0x6a, 0x13, 0x3E)
//    model DL_TH_OFF_SEC is Memory<UIN>;

    /** External RAM (XRAM) 0xF03F minWUTzeit */
    @ext(0xdb, 0x03, 0x3F)
    model minWUTzeit is Memory;

    /** External RAM (XRAM) 0xF040 tMinCombi */
    @ext(0xa4, 0x03, 0x40)
    model tMinCombi is Memory;
//    @ext(0x14, 0x13, 0x40)
//    model tMinCombi is Memory<UIN>;

    /** External RAM (XRAM) 0xF041 cntFlaStabHZ */
    @ext(0xa5, 0x03, 0x41)
    model cntFlaStabHZ is Memory;

    /** External RAM (XRAM) 0xF042 ihilf */
    @ext(0xa6, 0x03, 0x42)
    model ihilf is Memory;
//    @ext(0x16, 0x13, 0x42)
//    model ihilf is Memory<UIN>;

    /** External RAM (XRAM) 0xF044 uk1 */
    @ext(0xa0, 0x03, 0x44)
    model uk1 is Memory;
//    @ext(0x10, 0x13, 0x44)
//    model uk1 is Memory<UIN>;

    /** External RAM (XRAM) 0xF045 CNTTW */
    @ext(0xa1, 0x03, 0x45)
    model CNTTW is Memory;

    /** External RAM (XRAM) 0xF046 max_nGsoll */
    @ext(0xa2, 0x03, 0x46)
    model max_nGsoll is Memory;
//    @ext(0x12, 0x13, 0x46)
//    model max_nGsoll is Memory<UIN>;

    /** External RAM (XRAM) 0xF047 cnt_tTvGradient */
    @ext(0xa3, 0x03, 0x47)
    model cnt_tTvGradient is Memory;

    /** External RAM (XRAM) 0xF048 secWWbetr */
    @ext(0xac, 0x03, 0x48)
    model secWWbetr is Memory;
//    @ext(0x1c, 0x13, 0x48)
//    model secWWbetr is Memory<UIN>;

    /** External RAM (XRAM) 0xF049 icl1HrsKick */
    @ext(0xad, 0x03, 0x49)
    model icl1HrsKick is Memory;

    /** External RAM (XRAM) 0xF04A cntConfig */
    @ext(0xae, 0x03, 0x4A)
    model cntConfig is Memory;
//    @ext(0x1e, 0x13, 0x4A)
//    model cntConfig is Memory<UIN>;

    /** External RAM (XRAM) 0xF04C cnt_sw_fc41 */
    @ext(0xa8, 0x03, 0x4C)
    model cnt_sw_fc41 is Memory;
//    @ext(0x18, 0x13, 0x4C)
//    model cnt_sw_fc41 is Memory<UIN>;

    /** External RAM (XRAM) 0xF04D N_DTMax_VL_eSTB */
    @ext(0xa9, 0x03, 0x4D)
    model N_DTMax_VL_eSTB is Memory;

    /** External RAM (XRAM) 0xF04E DL_TVIST_NGMIN_SEC */
    @ext(0xaa, 0x03, 0x4E)
    model DL_TVIST_NGMIN_SEC is Memory;
//    @ext(0x1a, 0x13, 0x4E)
//    model DL_TVIST_NGMIN_SEC is Memory<UIN>;

    /** External RAM (XRAM) 0xF04F dT_VLRL_Filter */
    @ext(0xab, 0x03, 0x4F)
    model dT_VLRL_Filter is Memory;

    /** External RAM (XRAM) 0xF050 prev_tWWist_2 */
    @ext(0xb4, 0x03, 0x50)
    model prev_tWWist_2 is Memory;
//    @ext(0x04, 0x13, 0x50)
//    model prev_tWWist_2 is Memory<UIN>;

    /** External RAM (XRAM) 0xF051 cntGDW */
    @ext(0xb5, 0x03, 0x51)
    model cntGDW is Memory;

    /** External RAM (XRAM) 0xF052 DL_TH_OFF_SEC_MAX_ */
    @ext(0xb6, 0x03, 0x52)
    model DL_TH_OFF_SEC_MAX_ is Memory;
//    @ext(0x06, 0x13, 0x52)
//    model DL_TH_OFF_SEC_MAX_ is Memory<UIN>;

    /** External RAM (XRAM) 0xF053 SA_Th */
    @ext(0xb7, 0x03, 0x53)
    model SA_Th is Memory;

    /** External RAM (XRAM) 0xF054 PNL_HZcnt */
    @ext(0xb0, 0x03, 0x54)
    model PNL_HZcnt is Memory;
//    @ext(0x00, 0x13, 0x54)
//    model PNL_HZcnt is Memory<UIN>;

    /** External RAM (XRAM) 0xF056 BetrArt */
    @ext(0xb2, 0x03, 0x56)
    model BetrArt is Memory;
//    @ext(0x02, 0x13, 0x56)
//    model BetrArt is Memory<UIN>;

    /** External RAM (XRAM) 0xF057 NDTMaxWT */
    @ext(0xb3, 0x03, 0x57)
    model NDTMaxWT is Memory;

    /** External RAM (XRAM) 0xF058 dT_Abtastzeit */
    @ext(0xbc, 0x03, 0x58)
    model dT_Abtastzeit is Memory;
//    @ext(0x0c, 0x13, 0x58)
//    model dT_Abtastzeit is Memory<UIN>;

    /** External RAM (XRAM) 0xF059 prevTVist */
    @ext(0xbd, 0x03, 0x59)
    model prevTVist is Memory;

    /** External RAM (XRAM) 0xF05A DL_HYS_TH_ON_ */
    @ext(0xbe, 0x03, 0x5A)
    model DL_HYS_TH_ON_ is Memory;
//    @ext(0x0e, 0x13, 0x5A)
//    model DL_HYS_TH_ON_ is Memory<UIN>;

    /** External RAM (XRAM) 0xF05B PNL_WWcnt */
    @ext(0xbf, 0x03, 0x5B)
    model PNL_WWcnt is Memory;

    /** External RAM (XRAM) 0xF05D yDT1 */
    @ext(0xb9, 0x03, 0x5D)
    model yDT1 is Memory;

    /** External RAM (XRAM) 0xF05F TVsoll_WUT */
    @ext(0xbb, 0x03, 0x5F)
    model TVsoll_WUT is Memory;

    /** External RAM (XRAM) 0xF060 TRList_start_FL */
    @ext(0x84, 0x03, 0x60)
    model TRList_start_FL is Memory;
//    @ext(0x34, 0x13, 0x60)
//    model TRList_start_FL is Memory<UIN>;

    /** External RAM (XRAM) 0xF061 CNTDTMaxWT */
    @ext(0x85, 0x03, 0x61)
    model CNTDTMaxWT is Memory;

    /** External RAM (XRAM) 0xF062 secFCodeW */
    @ext(0x86, 0x03, 0x62)
    model secFCodeW is Memory;
//    @ext(0x36, 0x13, 0x62)
//    model secFCodeW is Memory<UIN>;

    /** External RAM (XRAM) 0xF063 AbgSS_cnt */
    @ext(0x87, 0x03, 0x63)
    model AbgSS_cnt is Memory;

    /** External RAM (XRAM) 0xF064 dtWWist */
    @ext(0x80, 0x03, 0x64)
    model dtWWist is Memory;
//    @ext(0x30, 0x13, 0x64)
//    model dtWWist is Memory<UIN>;

    /** External RAM (XRAM) 0xF065 cntLDW_Versuche */
    @ext(0x81, 0x03, 0x65)
    model cntLDW_Versuche is Memory;

    /** External RAM (XRAM) 0xF066 DL_XW_NGMIN_ */
    @ext(0x82, 0x03, 0x66)
    model DL_XW_NGMIN_ is Memory;
//    @ext(0x32, 0x13, 0x66)
//    model DL_XW_NGMIN_ is Memory<UIN>;

    /** External RAM (XRAM) 0xF067 scHilf */
    @ext(0x83, 0x03, 0x67)
    model scHilf is Memory;

    /** External RAM (XRAM) 0xF068 cntGDWtime */
    @ext(0x8c, 0x03, 0x68)
    model cntGDWtime is Memory;
//    @ext(0x3c, 0x13, 0x68)
//    model cntGDWtime is Memory<UIN>;

    /** External RAM (XRAM) 0xF069 DL_XW_NGMAX_ */
    @ext(0x8d, 0x03, 0x69)
    model DL_XW_NGMAX_ is Memory;

    /** External RAM (XRAM) 0xF06A ucHilf */
    @ext(0x8e, 0x03, 0x6A)
    model ucHilf is Memory;
//    @ext(0x3e, 0x13, 0x6A)
//    model ucHilf is Memory<UIN>;

    /** External RAM (XRAM) 0xF06B PuPWM_tempoffset */
    @ext(0x8f, 0x03, 0x6B)
    model PuPWM_tempoffset is Memory;

    /** External RAM (XRAM) 0xF06C DTVIST */
    @ext(0x88, 0x03, 0x6C)
    model DTVIST is Memory;
//    @ext(0x38, 0x13, 0x6C)
//    model DTVIST is Memory<UIN>;

    /** External RAM (XRAM) 0xF06D CNTGradTVist */
    @ext(0x89, 0x03, 0x6D)
    model CNTGradTVist is Memory;

    /** External RAM (XRAM) 0xF06E cntSoft */
    @ext(0x8a, 0x03, 0x6E)
    model cntSoft is Memory;
//    @ext(0x3a, 0x13, 0x6E)
//    model cntSoft is Memory<UIN>;

    /** External RAM (XRAM) 0xF06F CntAusg1 */
    @ext(0x8b, 0x03, 0x6F)
    model CntAusg1 is Memory;

    /** External RAM (XRAM) 0xF070 DL_Comf_Soll */
    @ext(0x94, 0x03, 0x70)
    model DL_Comf_Soll is Memory;
//    @ext(0x24, 0x13, 0x70)
//    model DL_Comf_Soll is Memory<UIN>;

    /** External RAM (XRAM) 0xF071 Min_nGsoll */
    @ext(0x95, 0x03, 0x71)
    model Min_nGsoll is Memory;

    /** External RAM (XRAM) 0xF072 TWWISTAD */
    @ext(0x96, 0x03, 0x72)
    model TWWISTAD is Memory;
//    @ext(0x26, 0x13, 0x72)
//    model TWWISTAD is Memory<UIN>;

    /** External RAM (XRAM) 0xF073 TAUSSAD */
    @ext(0x97, 0x03, 0x73)
    model TAUSSAD is Memory;

    /** External RAM (XRAM) 0xF074 TRLISTAD */
    @ext(0x90, 0x03, 0x74)
    model TRLISTAD is Memory;
//    @ext(0x20, 0x13, 0x74)
//    model TRLISTAD is Memory<UIN>;

    /** External RAM (XRAM) 0xF075 AIN_WPAD */
    @ext(0x91, 0x03, 0x75)
    model AIN_WPAD is Memory;

    /** External RAM (XRAM) 0xF076 AIN_0_10VAD */
    @ext(0x92, 0x03, 0x76)
    model AIN_0_10VAD is Memory;
//    @ext(0x22, 0x13, 0x76)
//    model AIN_0_10VAD is Memory<UIN>;

    /** External RAM (XRAM) 0xF077 AIN_0_10V */
    @ext(0x93, 0x03, 0x77)
    model AIN_0_10V is Memory;

    /** External RAM (XRAM) 0xF078 AIN_STB */
    @ext(0x9c, 0x03, 0x78)
    model AIN_STB is Memory;
//    @ext(0x2c, 0x13, 0x78)
//    model AIN_STB is Memory<UIN>;

    /** External RAM (XRAM) 0xF079 AIN_STBA */
    @ext(0x9d, 0x03, 0x79)
    model AIN_STBA is Memory;

    /** External RAM (XRAM) 0xF07A AIN_ANAIN6AD */
    @ext(0x9e, 0x03, 0x7A)
    model AIN_ANAIN6AD is Memory;
//    @ext(0x2e, 0x13, 0x7A)
//    model AIN_ANAIN6AD is Memory<UIN>;

    /** External RAM (XRAM) 0xF07B AIN_ANAIN7AD */
    @ext(0x9f, 0x03, 0x7B)
    model AIN_ANAIN7AD is Memory;

    /** External RAM (XRAM) 0xF07C TWEICHEIST */
    @ext(0x98, 0x03, 0x7C)
    model TWEICHEIST is Memory;
//    @ext(0x28, 0x13, 0x7C)
//    model TWEICHEIST is Memory<UIN>;

    /** External RAM (XRAM) 0xF07D TWEICHEAD */
    @ext(0x99, 0x03, 0x7D)
    model TWEICHEAD is Memory;

    /** External RAM (XRAM) 0xF07E TABGAD */
    @ext(0x9a, 0x03, 0x7E)
    model TABGAD is Memory;
//    @ext(0x2a, 0x13, 0x7E)
//    model TABGAD is Memory<UIN>;

    /** External RAM (XRAM) 0xF07F ICL20SEC_BON */
    @ext(0x9b, 0x03, 0x7F)
    model ICL20SEC_BON is Memory;

    /** External RAM (XRAM) 0xF080 ALARM_TIMER */
    @ext(0x64, 0x03, 0x80)
    model ALARM_TIMER is Memory;
//    @ext(0xd4, 0x13, 0x80)
//    model ALARM_TIMER is Memory<UIN>;

    /** External RAM (XRAM) 0xF081 CNT_REF_OK */
    @ext(0x65, 0x03, 0x81)
    model CNT_REF_OK is Memory;

    /** External RAM (XRAM) 0xF082 CNT_KASK_REL */
    @ext(0x66, 0x03, 0x82)
    model CNT_KASK_REL is Memory;
//    @ext(0xd6, 0x13, 0x82)
//    model CNT_KASK_REL is Memory<UIN>;

    /** External RAM (XRAM) 0xF083 VAR_VERBRAUCHER */
    @ext(0x67, 0x03, 0x83)
    model VAR_VERBRAUCHER is Memory;

    /** External RAM (XRAM) 0xF084 FE_CNT */
    @ext(0x60, 0x03, 0x84)
    model FE_CNT is Memory;
//    @ext(0xd0, 0x13, 0x84)
//    model FE_CNT is Memory<UIN>;

    /** External RAM (XRAM) 0xF085 CNT_DECGAP */
    @ext(0x61, 0x03, 0x85)
    model CNT_DECGAP is Memory;

    /** External RAM (XRAM) 0xF086 ISECFEPRESSED */
    @ext(0x62, 0x03, 0x86)
    model ISECFEPRESSED is Memory;
//    @ext(0xd2, 0x13, 0x86)
//    model ISECFEPRESSED is Memory<UIN>;

    /** External RAM (XRAM) 0xF087 ABREGELTEMP */
    @ext(0x63, 0x03, 0x87)
    model ABREGELTEMP is Memory;

    /** External RAM (XRAM) 0xF088 INIT_ORDER_BYTE */
    @ext(0x6c, 0x03, 0x88)
    model INIT_ORDER_BYTE is Memory;
//    @ext(0xdc, 0x13, 0x88)
//    model INIT_ORDER_BYTE is Memory<UIN>;

    /** External RAM (XRAM) 0xF08A CNT_MB_2_TO_EEPROM */
    @ext(0x6e, 0x03, 0x8A)
    model CNT_MB_2_TO_EEPROM is Memory;
//    @ext(0xde, 0x13, 0x8A)
//    model CNT_MB_2_TO_EEPROM is Memory<UIN>;

    /** External RAM (XRAM) 0xF08B YTVREG */
    @ext(0x6f, 0x03, 0x8B)
    model YTVREG is Memory;

    /** External RAM (XRAM) 0xF08D FDE_XRAM */
    @ext(0x69, 0x03, 0x8D)
    model FDE_XRAM is Memory;

    /** External RAM (XRAM) 0xF095 AIN_ERR_MASK */
    @ext(0x71, 0x03, 0x95)
    model AIN_ERR_MASK is Memory;

    /** External RAM (XRAM) 0xF096 SIPHON_OSZ_CNT */
    @ext(0x72, 0x03, 0x96)
    model SIPHON_OSZ_CNT is Memory;
//    @ext(0xc2, 0x13, 0x96)
//    model SIPHON_OSZ_CNT is Memory<UIN>;

    /** External RAM (XRAM) 0xF097 CNT_NTC_TOL */
    @ext(0x73, 0x03, 0x97)
    model CNT_NTC_TOL is Memory;

    /** External RAM (XRAM) 0xF098 CNT_NTC_ERR */
    @ext(0x7c, 0x03, 0x98)
    model CNT_NTC_ERR is Memory;
//    @ext(0xcc, 0x13, 0x98)
//    model CNT_NTC_ERR is Memory<UIN>;

    /** External RAM (XRAM) 0xF099 NTC1_TEMP */
    @ext(0x7d, 0x03, 0x99)
    model NTC1_TEMP is Memory;

    /** External RAM (XRAM) 0xF09A NTC2_TEMP */
    @ext(0x7e, 0x03, 0x9A)
    model NTC2_TEMP is Memory;
//    @ext(0xce, 0x13, 0x9A)
//    model NTC2_TEMP is Memory<UIN>;

    /** External RAM (XRAM) 0xF09B NTC1_AD */
    @ext(0x7f, 0x03, 0x9B)
    model NTC1_AD is Memory;

    /** External RAM (XRAM) 0xF09C NTC2_AD */
    @ext(0x78, 0x03, 0x9C)
    model NTC2_AD is Memory;
//    @ext(0xc8, 0x13, 0x9C)
//    model NTC2_AD is Memory<UIN>;

    /** External RAM (XRAM) 0xF09D CNT_W89 */
    @ext(0x79, 0x03, 0x9D)
    model CNT_W89 is Memory;

    /** External RAM (XRAM) 0xF09F HZZUSTBM_2 */
    @ext(0x7b, 0x03, 0x9F)
    model HZZUSTBM_2 is Memory;

    /** External RAM (XRAM) 0xF0A0 EPIONNULL_INV */
    @ext(0x44, 0x03, 0xA0)
    model EPIONNULL_INV is Memory;
//    @ext(0xf4, 0x13, 0xA0)
//    model EPIONNULL_INV is Memory<UIN>;

    /** External RAM (XRAM) 0xF0A1 MIN_BR_OFF_VL_ESTB_RL */
    @ext(0x45, 0x03, 0xA1)
    model MIN_BR_OFF_VL_ESTB_RL is Memory;

    /** External RAM (XRAM) 0xF0A2 TWEICHEIST_INTERN */
    @ext(0x46, 0x03, 0xA2)
    model TWEICHEIST_INTERN is Memory;
//    @ext(0xf6, 0x13, 0xA2)
//    model TWEICHEIST_INTERN is Memory<UIN>;

    /** External RAM (XRAM) 0xF0A3 TWEICHEIST_EXTERN */
    @ext(0x47, 0x03, 0xA3)
    model TWEICHEIST_EXTERN is Memory;

    /** External RAM (XRAM) 0xF0A4 CNT_1_5MIN_RETRY_KLAPPE */
    @ext(0x40, 0x03, 0xA4)
    model CNT_1_5MIN_RETRY_KLAPPE is Memory;
//    @ext(0xf0, 0x13, 0xA4)
//    model CNT_1_5MIN_RETRY_KLAPPE is Memory<UIN>;

    /** External RAM (XRAM) 0xF0A5 SERVICEBETR_VIA_CUI_U8 */
    @ext(0x41, 0x03, 0xA5)
    model SERVICEBETR_VIA_CUI_U8 is Memory;

    /** External RAM (XRAM) 0xF0A6 DEBUG_VAR_1 */
    @ext(0x42, 0x03, 0xA6)
    model DEBUG_VAR_1 is Memory;
//    @ext(0xf2, 0x13, 0xA6)
//    model DEBUG_VAR_1 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0A7 DEBUG_VAR_2 */
    @ext(0x43, 0x03, 0xA7)
    model DEBUG_VAR_2 is Memory;

    /** External RAM (XRAM) 0xF0A8 TWWIST_2 */
    @ext(0x4c, 0x03, 0xA8)
    model TWWIST_2 is Memory;
//    @ext(0xfc, 0x13, 0xA8)
//    model TWWIST_2 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0A9 TRLIST_2 */
    @ext(0x4d, 0x03, 0xA9)
    model TRLIST_2 is Memory;

    /** External RAM (XRAM) 0xF0AA TVIST_2 */
    @ext(0x4e, 0x03, 0xAA)
    model TVIST_2 is Memory;
//    @ext(0xfe, 0x13, 0xAA)
//    model TVIST_2 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0AB TWW_DLPLUS */
    @ext(0x4f, 0x03, 0xAB)
    model TWW_DLPLUS is Memory;

    /** External RAM (XRAM) 0xF0AC WW_DURCHFL */
    @ext(0x48, 0x03, 0xAC)
    model WW_DURCHFL is Memory;
//    @ext(0xf8, 0x13, 0xAC)
//    model WW_DURCHFL is Memory<UIN>;

    /** External RAM (XRAM) 0xF0AD DL_Y_VORST */
    @ext(0x49, 0x03, 0xAD)
    model DL_Y_VORST is Memory;

    /** External RAM (XRAM) 0xF0AF TA_FILTER */
    @ext(0x4b, 0x03, 0xAF)
    model TA_FILTER is Memory;

    /** External RAM (XRAM) 0xF0B1 TA_MITTEL */
    @ext(0x55, 0x03, 0xB1)
    model TA_MITTEL is Memory;

    /** External RAM (XRAM) 0xF0B2 MODULATIONSGRAD */
    @ext(0x56, 0x03, 0xB2)
    model MODULATIONSGRAD is Memory;
//    @ext(0xe6, 0x13, 0xB2)
//    model MODULATIONSGRAD is Memory<UIN>;

    /** External RAM (XRAM) 0xF0B3 SECBROFF */
    @ext(0x57, 0x03, 0xB3)
    model SECBROFF is Memory;

    /** External RAM (XRAM) 0xF0B5 CNTF_CODE_1X */
    @ext(0x51, 0x03, 0xB5)
    model CNTF_CODE_1X is Memory;

    /** External RAM (XRAM) 0xF0B6 CNTF_CODE_2X */
    @ext(0x52, 0x03, 0xB6)
    model CNTF_CODE_2X is Memory;
//    @ext(0xe2, 0x13, 0xB6)
//    model CNTF_CODE_2X is Memory<UIN>;

    /** External RAM (XRAM) 0xF0B7 CNTF_CODE_6X */
    @ext(0x53, 0x03, 0xB7)
    model CNTF_CODE_6X is Memory;

    /** External RAM (XRAM) 0xF0B8 EM_EE_REDUND */
    @ext(0x5c, 0x03, 0xB8)
    model EM_EE_REDUND is Memory;
//    @ext(0xec, 0x13, 0xB8)
//    model EM_EE_REDUND is Memory<UIN>;

    /** External RAM (XRAM) 0xF0B9 EE_RANGE_FAIL */
    @ext(0x5d, 0x03, 0xB9)
    model EE_RANGE_FAIL is Memory;

    /** External RAM (XRAM) 0xF0BA WR_KESS_P_HILF */
    @ext(0x5e, 0x03, 0xBA)
    model WR_KESS_P_HILF is Memory;
//    @ext(0xee, 0x13, 0xBA)
//    model WR_KESS_P_HILF is Memory<UIN>;

    /** External RAM (XRAM) 0xF0BB WR_KESS_P_HILF2 */
    @ext(0x5f, 0x03, 0xBB)
    model WR_KESS_P_HILF2 is Memory;

    /** External RAM (XRAM) 0xF0BC ANF_WR_KESS_P */
    @ext(0x58, 0x03, 0xBC)
    model ANF_WR_KESS_P is Memory;
//    @ext(0xe8, 0x13, 0xBC)
//    model ANF_WR_KESS_P is Memory<UIN>;

    /** External RAM (XRAM) 0xF0BD CNT_15MIN_TKKB */
    @ext(0x59, 0x03, 0xBD)
    model CNT_15MIN_TKKB is Memory;

    /** External RAM (XRAM) 0xF0BE P_CODE */
    @ext(0x5a, 0x03, 0xBE)
    model P_CODE is Memory;
//    @ext(0xea, 0x13, 0xBE)
//    model P_CODE is Memory<UIN>;

    /** External RAM (XRAM) 0xF0BF MKESSSTATUSBM */
    @ext(0x5b, 0x03, 0xBF)
    model MKESSSTATUSBM is Memory;

    /** External RAM (XRAM) 0xF0C0 TVSOLL_HS */
    @ext(0x24, 0x03, 0xC0)
    model TVSOLL_HS is Memory;
//    @ext(0x94, 0x13, 0xC0)
//    model TVSOLL_HS is Memory<UIN>;

    /** External RAM (XRAM) 0xF0C1 EE_ERR_STATUS */
    @ext(0x25, 0x03, 0xC1)
    model EE_ERR_STATUS is Memory;

    /** External RAM (XRAM) 0xF0C2 NM_TX_ADR */
    @ext(0x26, 0x03, 0xC2)
    model NM_TX_ADR is Memory;
//    @ext(0x96, 0x13, 0xC2)
//    model NM_TX_ADR is Memory<UIN>;

    /** External RAM (XRAM) 0xF0C3 RX_TX_ZUSTAND */
    @ext(0x27, 0x03, 0xC3)
    model RX_TX_ZUSTAND is Memory;

    /** External RAM (XRAM) 0xF0C4 TX_ANF_05 */
    @ext(0x20, 0x03, 0xC4)
    model TX_ANF_05 is Memory;
//    @ext(0x90, 0x13, 0xC4)
//    model TX_ANF_05 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0C5 TX_ANF_50 */
    @ext(0x21, 0x03, 0xC5)
    model TX_ANF_50 is Memory;

    /** External RAM (XRAM) 0xF0C6 TX_ANF_FE */
    @ext(0x22, 0x03, 0xC6)
    model TX_ANF_FE is Memory;
//    @ext(0x92, 0x13, 0xC6)
//    model TX_ANF_FE is Memory<UIN>;

    // Alias of TX_ANF_FE
    // /** External RAM (XRAM) 0xF0C6 TX_ANF_FF */
    // @ext(0x22, 0x03, 0xC6)
    // model TX_ANF_FF is Memory;
//    // @ext(0x92, 0x13, 0xC6)
//    // model TX_ANF_FF is Memory<UIN>;

    /** External RAM (XRAM) 0xF0C7 TX_ANF_07 */
    @ext(0x23, 0x03, 0xC7)
    model TX_ANF_07 is Memory;

    /** External RAM (XRAM) 0xF0C8 M_5023_CRC */
    @ext(0x2c, 0x03, 0xC8)
    model M_5023_CRC is Memory;
//    @ext(0x9c, 0x13, 0xC8)
//    model M_5023_CRC is Memory<UIN>;

    /** External RAM (XRAM) 0xF0C9 TX_ANF_08 */
    @ext(0x2d, 0x03, 0xC9)
    model TX_ANF_08 is Memory;

    /** External RAM (XRAM) 0xF0CA TCYCL_MAX */
    @ext(0x2e, 0x03, 0xCA)
    model TCYCL_MAX is Memory;
//    @ext(0x9e, 0x13, 0xCA)
//    model TCYCL_MAX is Memory<UIN>;

    /** External RAM (XRAM) 0xF0CB TCYCL_QQ_M2 */
    @ext(0x2f, 0x03, 0xCB)
    model TCYCL_QQ_M2 is Memory;

    /** External RAM (XRAM) 0xF0CC TCYCL_QQ_M10 */
    @ext(0x28, 0x03, 0xCC)
    model TCYCL_QQ_M10 is Memory;
//    @ext(0x98, 0x13, 0xCC)
//    model TCYCL_QQ_M10 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0CD TCYCL_EIG_QQ */
    @ext(0x29, 0x03, 0xCD)
    model TCYCL_EIG_QQ is Memory;

    /** External RAM (XRAM) 0xF0CE TCYCL_TALK_EBUS */
    @ext(0x2a, 0x03, 0xCE)
    model TCYCL_TALK_EBUS is Memory;
//    @ext(0x9a, 0x13, 0xCE)
//    model TCYCL_TALK_EBUS is Memory<UIN>;

    /** External RAM (XRAM) 0xF0CF NM_SOLL_KONF_M2 */
    @ext(0x2b, 0x03, 0xCF)
    model NM_SOLL_KONF_M2 is Memory;

    /** External RAM (XRAM) 0xF0D0 NM_SOLL_KONF_M10 */
    @ext(0x34, 0x03, 0xD0)
    model NM_SOLL_KONF_M10 is Memory;
//    @ext(0x84, 0x13, 0xD0)
//    model NM_SOLL_KONF_M10 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0D1 z_count */
    @ext(0x35, 0x03, 0xD1)
    model z_count is Memory;

    /** External RAM (XRAM) 0xF0D2 delta */
    @ext(0x36, 0x03, 0xD2)
    model delta is Memory;
//    @ext(0x86, 0x13, 0xD2)
//    model delta is Memory<UIN>;

    /** External RAM (XRAM) 0xF0D4 Z_IonOndmueA */
    @ext(0x30, 0x03, 0xD4)
    model Z_IonOndmueA is Memory;
//    @ext(0x80, 0x13, 0xD4)
//    model Z_IonOndmueA is Memory<UIN>;

    /** External RAM (XRAM) 0xF0D5 Z_IondmueA */
    @ext(0x31, 0x03, 0xD5)
    model Z_IondmueA is Memory;

    /** External RAM (XRAM) 0xF0D6 Z_IonOffdmueA */
    @ext(0x32, 0x03, 0xD6)
    model Z_IonOffdmueA is Memory;
//    @ext(0x82, 0x13, 0xD6)
//    model Z_IonOffdmueA is Memory<UIN>;

    /** External RAM (XRAM) 0xF0D7 z_last_signal */
    @ext(0x33, 0x03, 0xD7)
    model z_last_signal is Memory;

    /** External RAM (XRAM) 0xF0D8 ANAIN4AD */
    @ext(0x3c, 0x03, 0xD8)
    model ANAIN4AD is Memory;
//    @ext(0x8c, 0x13, 0xD8)
//    model ANAIN4AD is Memory<UIN>;

    /** External RAM (XRAM) 0xF0D9 AIN_REF */
    @ext(0x3d, 0x03, 0xD9)
    model AIN_REF is Memory;

    /** External RAM (XRAM) 0xF0DA AIN_REF_U */
    @ext(0x3e, 0x03, 0xDA)
    model AIN_REF_U is Memory;
//    @ext(0x8e, 0x13, 0xDA)
//    model AIN_REF_U is Memory<UIN>;

    /** External RAM (XRAM) 0xF0DB AIN_REF_I */
    @ext(0x3f, 0x03, 0xDB)
    model AIN_REF_I is Memory;

    /** External RAM (XRAM) 0xF0DC NGKORR */
    @ext(0x38, 0x03, 0xDC)
    model NGKORR is Memory;
//    @ext(0x88, 0x13, 0xDC)
//    model NGKORR is Memory<UIN>;

    /** External RAM (XRAM) 0xF0DD NG_REG_FAKT */
    @ext(0x39, 0x03, 0xDD)
    model NG_REG_FAKT is Memory;

    /** External RAM (XRAM) 0xF0DE MODI_NGSOLL */
    @ext(0x3a, 0x03, 0xDE)
    model MODI_NGSOLL is Memory;
//    @ext(0x8a, 0x13, 0xDE)
//    model MODI_NGSOLL is Memory<UIN>;

    /** External RAM (XRAM) 0xF0DF MERK_NG_RAMPE */
    @ext(0x3b, 0x03, 0xDF)
    model MERK_NG_RAMPE is Memory;

    /** External RAM (XRAM) 0xF0E0 step_Klappe */
    @ext(0x04, 0x03, 0xE0)
    model step_Klappe is Memory;
//    @ext(0xb4, 0x13, 0xE0)
//    model step_Klappe is Memory<UIN>;

    /** External RAM (XRAM) 0xF0E1 cnt_HZ_SW_Versuche */
    @ext(0x05, 0x03, 0xE1)
    model cnt_HZ_SW_Versuche is Memory;

    /** External RAM (XRAM) 0xF0E2 cnt_Klappe */
    @ext(0x06, 0x03, 0xE2)
    model cnt_Klappe is Memory;
//    @ext(0xb6, 0x13, 0xE2)
//    model cnt_Klappe is Memory<UIN>;

    /** External RAM (XRAM) 0xF0E3 Anlagen_Druck_cnt */
    @ext(0x07, 0x03, 0xE3)
    model Anlagen_Druck_cnt is Memory;

    /** External RAM (XRAM) 0xF0E4 CNT_GDW_LDW */
    @ext(0x00, 0x03, 0xE4)
    model CNT_GDW_LDW is Memory;
//    @ext(0xb0, 0x13, 0xE4)
//    model CNT_GDW_LDW is Memory<UIN>;

    /** External RAM (XRAM) 0xF0E5 CNTGFASTART */
    @ext(0x01, 0x03, 0xE5)
    model CNTGFASTART is Memory;

    /** External RAM (XRAM) 0xF0E6 VARIANTE */
    @ext(0x02, 0x03, 0xE6)
    model VARIANTE is Memory;
//    @ext(0xb2, 0x13, 0xE6)
//    model VARIANTE is Memory<UIN>;

    /** External RAM (XRAM) 0xF0E8 TCYCL_0503 */
    @ext(0x0c, 0x03, 0xE8)
    model TCYCL_0503 is Memory;
//    @ext(0xbc, 0x13, 0xE8)
//    model TCYCL_0503 is Memory<UIN>;

    /** External RAM (XRAM) 0xF0E9 TCYCL_0800 */
    @ext(0x0d, 0x03, 0xE9)
    model TCYCL_0800 is Memory;

}
