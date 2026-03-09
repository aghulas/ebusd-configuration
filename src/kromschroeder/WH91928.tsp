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
    model IDLE_R0 is Memory<UCH>;
//    @ext(0xec, 0x11, 0x00)
//    model IDLE_R0 is Memory<UIN>;

    /** RAM 0x0001 IDLE_R1 */
    @ext(0x5d, 0x01, 0x01)
    model IDLE_R1 is Memory<UCH>;

    /** RAM 0x0002 IDLE_R2 */
    @ext(0x5e, 0x01, 0x02)
    model IDLE_R2 is Memory<UCH>;
//    @ext(0xee, 0x11, 0x02)
//    model IDLE_R2 is Memory<UIN>;

    /** RAM 0x0003 IDLE_R3 */
    @ext(0x5f, 0x01, 0x03)
    model IDLE_R3 is Memory<UCH>;

    /** RAM 0x0004 IDLE_R4 */
    @ext(0x58, 0x01, 0x04)
    model IDLE_R4 is Memory<UCH>;
//    @ext(0xe8, 0x11, 0x04)
//    model IDLE_R4 is Memory<UIN>;

    /** RAM 0x0005 IDLE_R5 */
    @ext(0x59, 0x01, 0x05)
    model IDLE_R5 is Memory<UCH>;

    /** RAM 0x0006 IDLE_R6 */
    @ext(0x5a, 0x01, 0x06)
    model IDLE_R6 is Memory<UCH>;
//    @ext(0xea, 0x11, 0x06)
//    model IDLE_R6 is Memory<UIN>;

    /** RAM 0x0007 IDLE_R7 */
    @ext(0x5b, 0x01, 0x07)
    model IDLE_R7 is Memory<UCH>;

    /** RAM 0x000A BYTEDIAGNOSE */
    @ext(0x56, 0x01, 0x0A)
    model BYTEDIAGNOSE is Memory<UCH>;
//    @ext(0xe6, 0x11, 0x0A)
//    model BYTEDIAGNOSE is Memory<UIN>;

    /** RAM 0x0017 select_FS_x */
    @ext(0x4b, 0x01, 0x17)
    model select_FS_x is Memory<UCH>;

    // Alias of select_FS_x
    // /** RAM 0x0017 select_PR_x */
    // @ext(0x4b, 0x01, 0x17)
    // model select_PR_x is Memory<UCH>;

    /** RAM 0x0019 TIRP_R1 */
    @ext(0x45, 0x01, 0x19)
    model TIRP_R1 is Memory<UCH>;

    /** RAM 0x001A TIRP_R2 */
    @ext(0x46, 0x01, 0x1A)
    model TIRP_R2 is Memory<UCH>;
//    @ext(0xf6, 0x11, 0x1A)
//    model TIRP_R2 is Memory<UIN>;

    /** RAM 0x001B TIRP_R3 */
    @ext(0x47, 0x01, 0x1B)
    model TIRP_R3 is Memory<UCH>;

    /** RAM 0x001C TIRP_R4 */
    @ext(0x40, 0x01, 0x1C)
    model TIRP_R4 is Memory<UCH>;
//    @ext(0xf0, 0x11, 0x1C)
//    model TIRP_R4 is Memory<UIN>;

    /** RAM 0x001D TIRP_R5 */
    @ext(0x41, 0x01, 0x1D)
    model TIRP_R5 is Memory<UCH>;

    /** RAM 0x001E TIRP_R6 */
    @ext(0x42, 0x01, 0x1E)
    model TIRP_R6 is Memory<UCH>;
//    @ext(0xf2, 0x11, 0x1E)
//    model TIRP_R6 is Memory<UIN>;

    @ext(0x7c, 0x01, 0x20)
    /** RAM 0x0020 BYTE_20 */
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

    @ext(0x7d, 0x01, 0x21)
    /** RAM 0x0021 BYTE_21 */
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

    @ext(0x7e, 0x01, 0x22)
    /** RAM 0x0022 BYTE_22 */
    @inherit(memr, memw)
    model BYTE_22 {
        EB_x: BI7,
        MGDW: BI6,
        QQ_FLAG: BI5,
        TX_RETRY_FLAG: BI4,
        PROG_REL_4: BI3,
        STB: BI2,
        HZ_SW: BI1,
        PUWW: BI0
    }

    @ext(0x7f, 0x01, 0x23)
    /** RAM 0x0023 ERR_MERK */
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

    @ext(0x78, 0x01, 0x24)
    /** RAM 0x0024 CONSIS_MARK */
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

    @ext(0x79, 0x01, 0x25)
    /** RAM 0x0025 BYTE_25 */
    @inherit(memr, memw)
    model BYTE_25 {
        Abgasklappe_anf: BI7,
        WW_Takten: BI6,
        DL_Zapfen: BI5,
        ThFrS_WW: BI4,
        DL_Comfort: BI3,
        ThFrS_HZ: BI2,
        HZ_frei: BI1,
        PuFrSanf: BI0
    }

    @ext(0x7a, 0x01, 0x26)
    /** RAM 0x0026 EBUS_BITS */
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

    @ext(0x7b, 0x01, 0x27)
    /** RAM 0x0027 EB_0000 */
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

    @ext(0x74, 0x01, 0x28)
    /** RAM 0x0028 EB_0001 */
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

    @ext(0x75, 0x01, 0x29)
    /** RAM 0x0029 T_0108 */
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
    model T_CALT_0108 is Memory<UCH>;
//    @ext(0xc6, 0x11, 0x2A)
//    model T_CALT_0108 is Memory<UIN>;

    @ext(0x77, 0x01, 0x2B)
    /** RAM 0x002B AB_0000 */
    @inherit(memr, memw)
    model AB_0000 {
        PROG_REL_3: BI7,
        PUHZ: BI6,
        PROG_REL_2: BI5,
        PROG_REL_1: BI4,
        ZUEND: BI1,
        COMMON: BI0
    }

    @ext(0x70, 0x01, 0x2C)
    /** RAM 0x002C MB_0000 */
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

    @ext(0x71, 0x01, 0x2D)
    /** RAM 0x002D MB_0001 */
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

    @ext(0x72, 0x01, 0x2E)
    /** RAM 0x002E MB_0002 */
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

    @ext(0x73, 0x01, 0x2F)
    /** RAM 0x002F MB_0003 */
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
    model TCVSP is Memory<UCH>;
//    @ext(0xdc, 0x11, 0x30)
//    model TCVSP is Memory<UIN>;

    /** RAM 0x0031 TCHZZ */
    @ext(0x6d, 0x01, 0x31)
    model TCHZZ is Memory<UCH>;

    // Alias of TCHZZ
    // /** RAM 0x0031 TCSZA */
    // @ext(0x6d, 0x01, 0x31)
    // model TCSZA is Memory<UCH>;

    /** RAM 0x0032 TCNSP */
    @ext(0x6e, 0x01, 0x32)
    model TCNSP is Memory<UCH>;
//    @ext(0xde, 0x11, 0x32)
//    model TCNSP is Memory<UIN>;

    /** RAM 0x0033 TCFLASTAB */
    @ext(0x6f, 0x01, 0x33)
    model TCFLASTAB is Memory<UCH>;

    /** RAM 0x0034 NG_VSP */
    @ext(0x68, 0x01, 0x34)
    model NG_VSP is Memory<UCH>;
//    @ext(0xd8, 0x11, 0x34)
//    model NG_VSP is Memory<UIN>;

    /** RAM 0x0035 NG_NSP */
    @ext(0x69, 0x01, 0x35)
    model NG_NSP is Memory<UCH>;

    /** RAM 0x0036 NG_GR_MIN */
    @ext(0x6a, 0x01, 0x36)
    model NG_GR_MIN is Memory<UCH>;
//    @ext(0xda, 0x11, 0x36)
//    model NG_GR_MIN is Memory<UIN>;

    /** RAM 0x0037 NG_GR_MAX */
    @ext(0x6b, 0x01, 0x37)
    model NG_GR_MAX is Memory<UCH>;

    /** RAM 0x0038 NG_MAX_LIMIT */
    @ext(0x64, 0x01, 0x38)
    model NG_MAX_LIMIT is Memory<UCH>;
//    @ext(0xd4, 0x11, 0x38)
//    model NG_MAX_LIMIT is Memory<UIN>;

    /** RAM 0x0039 MXSTB_K */
    @ext(0x65, 0x01, 0x39)
    model MXSTB_K is Memory<UCH>;

    /** RAM 0x003A MXSTW_K */
    @ext(0x66, 0x01, 0x3A)
    model MXSTW_K is Memory<UCH>;
//    @ext(0xd6, 0x11, 0x3A)
//    model MXSTW_K is Memory<UIN>;

    /** RAM 0x003B ION_ON */
    @ext(0x67, 0x01, 0x3B)
    model ION_ON is Memory<UCH>;

    /** RAM 0x003C ION_OFF */
    @ext(0x60, 0x01, 0x3C)
    model ION_OFF is Memory<UCH>;
//    @ext(0xd0, 0x11, 0x3C)
//    model ION_OFF is Memory<UIN>;

    /** RAM 0x003D LIM_ION_FLASTAB */
    @ext(0x61, 0x01, 0x3D)
    model LIM_ION_FLASTAB is Memory<UCH>;

    /** RAM 0x003E TC_PRUEF_V1 */
    @ext(0x62, 0x01, 0x3E)
    model TC_PRUEF_V1 is Memory<UCH>;
//    @ext(0xd2, 0x11, 0x3E)
//    model TC_PRUEF_V1 is Memory<UIN>;

    /** RAM 0x003F TC_PRUEF_V2 */
    @ext(0x63, 0x01, 0x3F)
    model TC_PRUEF_V2 is Memory<UCH>;

    /** RAM 0x0040 P_LPG */
    @ext(0x1c, 0x01, 0x40)
    model P_LPG is Memory<UCH>;
//    @ext(0xac, 0x11, 0x40)
//    model P_LPG is Memory<UIN>;

    /** RAM 0x0041 KASK_P_ANHEB */
    @ext(0x1d, 0x01, 0x41)
    model KASK_P_ANHEB is Memory<UCH>;

    /** RAM 0x0042 KLAPPE_P_ANHEB */
    @ext(0x1e, 0x01, 0x42)
    model KLAPPE_P_ANHEB is Memory<UCH>;
//    @ext(0xae, 0x11, 0x42)
//    model KLAPPE_P_ANHEB is Memory<UIN>;

    /** RAM 0x0043 MAXGFASTART */
    @ext(0x1f, 0x01, 0x43)
    model MAXGFASTART is Memory<UCH>;

    /** RAM 0x0044 NG_BR_MIN */
    @ext(0x18, 0x01, 0x44)
    model NG_BR_MIN is Memory<UCH>;
//    @ext(0xa8, 0x11, 0x44)
//    model NG_BR_MIN is Memory<UIN>;

    /** RAM 0x0045 EE_CONST_CRC */
    @ext(0x19, 0x01, 0x45)
    model EE_CONST_CRC is Memory<UCH>;

    /** RAM 0x0046 T_CNT_0001 */
    @ext(0x1a, 0x01, 0x46)
    model T_CNT_0001 is Memory<UCH>;
//    @ext(0xaa, 0x11, 0x46)
//    model T_CNT_0001 is Memory<UIN>;

    /** RAM 0x0047 T_CNT_0002 */
    @ext(0x1b, 0x01, 0x47)
    model T_CNT_0002 is Memory<UCH>;

    /** RAM 0x0048 T_CNT_0003 */
    @ext(0x14, 0x01, 0x48)
    model T_CNT_0003 is Memory<UCH>;
//    @ext(0xa4, 0x11, 0x48)
//    model T_CNT_0003 is Memory<UIN>;

    /** RAM 0x0049 T_CNT_0004 */
    @ext(0x15, 0x01, 0x49)
    model T_CNT_0004 is Memory<UCH>;

    /** RAM 0x004A T_CNT_0005 */
    @ext(0x16, 0x01, 0x4A)
    model T_CNT_0005 is Memory<UCH>;
//    @ext(0xa6, 0x11, 0x4A)
//    model T_CNT_0005 is Memory<UIN>;

    /** RAM 0x004B T_CNT_0006 */
    @ext(0x17, 0x01, 0x4B)
    model T_CNT_0006 is Memory<UCH>;

    /** RAM 0x004C T_CNT_0007 */
    @ext(0x10, 0x01, 0x4C)
    model T_CNT_0007 is Memory<UCH>;
//    @ext(0xa0, 0x11, 0x4C)
//    model T_CNT_0007 is Memory<UIN>;

    /** RAM 0x004D T_CNT_0008 */
    @ext(0x11, 0x01, 0x4D)
    model T_CNT_0008 is Memory<UCH>;

    /** RAM 0x004E T_CNT_0009 */
    @ext(0x12, 0x01, 0x4E)
    model T_CNT_0009 is Memory<UCH>;
//    @ext(0xa2, 0x11, 0x4E)
//    model T_CNT_0009 is Memory<UIN>;

    /** RAM 0x004F EPIONNULL */
    @ext(0x13, 0x01, 0x4F)
    model EPIONNULL is Memory<UCH>;

    /** RAM 0x0050 S5_DAT_CRC */
    @ext(0x0c, 0x01, 0x50)
    model S5_DAT_CRC is Memory<UCH>;
//    @ext(0xbc, 0x11, 0x50)
//    model S5_DAT_CRC is Memory<UIN>;

    /** RAM 0x0051 MB_2_ALT */
    @ext(0x0d, 0x01, 0x51)
    model MB_2_ALT is Memory<UCH>;

    /** RAM 0x0052 BE1_50HZ_CNT */
    @ext(0x0e, 0x01, 0x52)
    model BE1_50HZ_CNT is Memory<UCH>;
//    @ext(0xbe, 0x11, 0x52)
//    model BE1_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0053 BE2_50HZ_CNT */
    @ext(0x0f, 0x01, 0x53)
    model BE2_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0054 BE3_50HZ_CNT */
    @ext(0x08, 0x01, 0x54)
    model BE3_50HZ_CNT is Memory<UCH>;
//    @ext(0xb8, 0x11, 0x54)
//    model BE3_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0055 BE4_50HZ_CNT */
    @ext(0x09, 0x01, 0x55)
    model BE4_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0056 BE5_50HZ_CNT */
    @ext(0x0a, 0x01, 0x56)
    model BE5_50HZ_CNT is Memory<UCH>;
//    @ext(0xba, 0x11, 0x56)
//    model BE5_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0057 BE6_50HZ_CNT */
    @ext(0x0b, 0x01, 0x57)
    model BE6_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0058 BE7_50HZ_CNT */
    @ext(0x04, 0x01, 0x58)
    model BE7_50HZ_CNT is Memory<UCH>;
//    @ext(0xb4, 0x11, 0x58)
//    model BE7_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0059 BE8_50HZ_CNT */
    @ext(0x05, 0x01, 0x59)
    model BE8_50HZ_CNT is Memory<UCH>;

    // Alias of BE8_50HZ_CNT
    // /** RAM 0x0059 NGIST_CNT */
    // @ext(0x05, 0x01, 0x59)
    // model NGIST_CNT is Memory<UCH>;

    /** RAM 0x005A RES_CYCL_CNT */
    @ext(0x06, 0x01, 0x5A)
    model RES_CYCL_CNT is Memory<UCH>;
//    @ext(0xb6, 0x11, 0x5A)
//    model RES_CYCL_CNT is Memory<UIN>;

    /** RAM 0x005B RES_CNT */
    @ext(0x07, 0x01, 0x5B)
    model RES_CNT is Memory<UCH>;

    /** RAM 0x005C RES_CNT_INV */
    @ext(0x00, 0x01, 0x5C)
    model RES_CNT_INV is Memory<UCH>;
//    @ext(0xb0, 0x11, 0x5C)
//    model RES_CNT_INV is Memory<UIN>;

    /** RAM 0x005D ICL100MSEC */
    @ext(0x01, 0x01, 0x5D)
    model ICL100MSEC is Memory<UCH>;

    /** RAM 0x005E ICL20SEC */
    @ext(0x02, 0x01, 0x5E)
    model ICL20SEC is Memory<UCH>;
//    @ext(0xb2, 0x11, 0x5E)
//    model ICL20SEC is Memory<UIN>;

    /** RAM 0x005F ICL1HRS */
    @ext(0x03, 0x01, 0x5F)
    model ICL1HRS is Memory<UCH>;

    /** RAM 0x0060 CNTGDWOSZ */
    @ext(0x3c, 0x01, 0x60)
    model CNTGDWOSZ is Memory<UCH>;
//    @ext(0x8c, 0x11, 0x60)
//    model CNTGDWOSZ is Memory<UIN>;

    /** RAM 0x0061 S5_ERR_CODE */
    @ext(0x3d, 0x01, 0x61)
    model S5_ERR_CODE is Memory<UCH>;

    /** RAM 0x0062 YPWM */
    @ext(0x3e, 0x01, 0x62)
    model YPWM is Memory<UCH>;
//    @ext(0x8e, 0x11, 0x62)
//    model YPWM is Memory<UIN>;

    /** RAM 0x0065 F_CODE */
    @ext(0x39, 0x01, 0x65)
    model F_CODE is Memory<UCH>;

    /** RAM 0x0066 ANAIN4 */
    @ext(0x3a, 0x01, 0x66)
    model ANAIN4 is Memory<UCH>;
//    @ext(0x8a, 0x11, 0x66)
//    model ANAIN4 is Memory<UIN>;

    /** RAM 0x0067 SMON_TIMEOUT */
    @ext(0x3b, 0x01, 0x67)
    model SMON_TIMEOUT is Memory<UCH>;

    /** RAM 0x0068 TVIST */
    @ext(0x34, 0x01, 0x68)
    model TVIST is Memory<UCH>;
//    @ext(0x84, 0x11, 0x68)
//    model TVIST is Memory<UIN>;

    /** RAM 0x0069 V24_CCMD */
    @ext(0x35, 0x01, 0x69)
    model V24_CCMD is Memory<UCH>;

    /** RAM 0x006A TWWIST */
    @ext(0x36, 0x01, 0x6A)
    model TWWIST is Memory<UCH>;
//    @ext(0x86, 0x11, 0x6A)
//    model TWWIST is Memory<UIN>;

    /** RAM 0x006B V24_IADR */
    @ext(0x37, 0x01, 0x6B)
    model V24_IADR is Memory<UCH>;

    /** RAM 0x006C TAUSSEN */
    @ext(0x30, 0x01, 0x6C)
    model TAUSSEN is Memory<UCH>;
//    @ext(0x80, 0x11, 0x6C)
//    model TAUSSEN is Memory<UIN>;

    /** RAM 0x006D V24_RXCNT1MS */
    @ext(0x31, 0x01, 0x6D)
    model V24_RXCNT1MS is Memory<UCH>;

    /** RAM 0x006E TVSOLL */
    @ext(0x32, 0x01, 0x6E)
    model TVSOLL is Memory<UCH>;
//    @ext(0x82, 0x11, 0x6E)
//    model TVSOLL is Memory<UIN>;

    /** RAM 0x006F TWWSOLL_HS */
    @ext(0x33, 0x01, 0x6F)
    model TWWSOLL_HS is Memory<UCH>;

    /** RAM 0x0070 KESZUST */
    @ext(0x2c, 0x01, 0x70)
    model KESZUST is Memory<UCH>;
//    @ext(0x9c, 0x11, 0x70)
//    model KESZUST is Memory<UIN>;

    /** RAM 0x0071 TAUSS_HS */
    @ext(0x2d, 0x01, 0x71)
    model TAUSS_HS is Memory<UCH>;

    /** RAM 0x0072 HZZUSTBM */
    @ext(0x2e, 0x01, 0x72)
    model HZZUSTBM is Memory<UCH>;
//    @ext(0x9e, 0x11, 0x72)
//    model HZZUSTBM is Memory<UIN>;

    /** RAM 0x0073 V24_TXCNT */
    @ext(0x2f, 0x01, 0x73)
    model V24_TXCNT is Memory<UCH>;

    /** RAM 0x0074 WWZUSTBM */
    @ext(0x28, 0x01, 0x74)
    model WWZUSTBM is Memory<UCH>;
//    @ext(0x98, 0x11, 0x74)
//    model WWZUSTBM is Memory<UIN>;

    /** RAM 0x0075 WWZUSTKM */
    @ext(0x29, 0x01, 0x75)
    model WWZUSTKM is Memory<UCH>;

    /** RAM 0x0076 V24_ODAT */
    @ext(0x2a, 0x01, 0x76)
    model V24_ODAT is Memory<UCH>;
//    @ext(0x9a, 0x11, 0x76)
//    model V24_ODAT is Memory<UIN>;

    /** RAM 0x0077 NGIST */
    @ext(0x2b, 0x01, 0x77)
    model NGIST is Memory<UCH>;

    /** RAM 0x0078 NGSOLL */
    @ext(0x24, 0x01, 0x78)
    model NGSOLL is Memory<UCH>;
//    @ext(0x94, 0x11, 0x78)
//    model NGSOLL is Memory<UIN>;

    /** RAM 0x0079 TVISTAD */
    @ext(0x25, 0x01, 0x79)
    model TVISTAD is Memory<UCH>;

    /** RAM 0x007A T_ESTB2 */
    @ext(0x26, 0x01, 0x7A)
    model T_ESTB2 is Memory<UCH>;
//    @ext(0x96, 0x11, 0x7A)
//    model T_ESTB2 is Memory<UIN>;

    /** RAM 0x007B Z_ION */
    @ext(0x27, 0x01, 0x7B)
    model Z_ION is Memory<UCH>;

    /** RAM 0x007C TRLIST */
    @ext(0x20, 0x01, 0x7C)
    model TRLIST is Memory<UCH>;
//    @ext(0x90, 0x11, 0x7C)
//    model TRLIST is Memory<UIN>;

    /** RAM 0x007D TABGAS */
    @ext(0x21, 0x01, 0x7D)
    model TABGAS is Memory<UCH>;

    /** RAM 0x007E IRAEPKANF */
    @ext(0x22, 0x01, 0x7E)
    model IRAEPKANF is Memory<UCH>;
//    @ext(0x92, 0x11, 0x7E)
//    model IRAEPKANF is Memory<UIN>;

    // Alias of IRAEPKANF
    // /** RAM 0x007E MAXTVSOLL */
    // @ext(0x22, 0x01, 0x7E)
    // model MAXTVSOLL is Memory<UCH>;
//    // @ext(0x92, 0x11, 0x7E)
//    // model MAXTVSOLL is Memory<UIN>;

    /** RAM 0x007F MINTVSOLL */
    @ext(0x23, 0x01, 0x7F)
    model MINTVSOLL is Memory<UCH>;

    /** RAM 0x0080 HZ_HYS */
    @ext(0xdc, 0x01, 0x80)
    model HZ_HYS is Memory<UCH>;
//    @ext(0x6c, 0x11, 0x80)
//    model HZ_HYS is Memory<UIN>;

    /** RAM 0x0081 TBRMINOFF */
    @ext(0xdd, 0x01, 0x81)
    model TBRMINOFF is Memory<UCH>;

    /** RAM 0x0082 TC_SOFTSTART */
    @ext(0xde, 0x01, 0x82)
    model TC_SOFTSTART is Memory<UCH>;
//    @ext(0x6e, 0x11, 0x82)
//    model TC_SOFTSTART is Memory<UIN>;

    /** RAM 0x0083 HZ_KP */
    @ext(0xdf, 0x01, 0x83)
    model HZ_KP is Memory<UCH>;

    /** RAM 0x0084 HZ_KTND */
    @ext(0xd8, 0x01, 0x84)
    model HZ_KTND is Memory<UCH>;
//    @ext(0x68, 0x11, 0x84)
//    model HZ_KTND is Memory<UIN>;

    /** RAM 0x0085 SONDERNIVEAU */
    @ext(0xd9, 0x01, 0x85)
    model SONDERNIVEAU is Memory<UCH>;

    /** RAM 0x0086 TAUSS_KORREKTUR */
    @ext(0xda, 0x01, 0x86)
    model TAUSS_KORREKTUR is Memory<UCH>;
//    @ext(0x6a, 0x11, 0x86)
//    model TAUSS_KORREKTUR is Memory<UIN>;

    /** RAM 0x0087 WARTUNGSINTERVALL */
    @ext(0xdb, 0x01, 0x87)
    model WARTUNGSINTERVALL is Memory<UCH>;

    /** RAM 0x0088 MX_DREHZ_KESSEL */
    @ext(0xd4, 0x01, 0x88)
    model MX_DREHZ_KESSEL is Memory<UCH>;
//    @ext(0x64, 0x11, 0x88)
//    model MX_DREHZ_KESSEL is Memory<UIN>;

    /** RAM 0x0089 NG_ZUEND */
    @ext(0xd5, 0x01, 0x89)
    model NG_ZUEND is Memory<UCH>;

    /** RAM 0x008A KESSEL_VARIANTE */
    @ext(0xd6, 0x01, 0x8A)
    model KESSEL_VARIANTE is Memory<UCH>;
//    @ext(0x66, 0x11, 0x8A)
//    model KESSEL_VARIANTE is Memory<UIN>;

    /** RAM 0x008B MXGRADTVIST */
    @ext(0xd7, 0x01, 0x8B)
    model MXGRADTVIST is Memory<UCH>;

    /** RAM 0x008C MXTABGAS */
    @ext(0xd0, 0x01, 0x8C)
    model MXTABGAS is Memory<UCH>;
//    @ext(0x60, 0x11, 0x8C)
//    model MXTABGAS is Memory<UIN>;

    /** RAM 0x008D TOL_TIME */
    @ext(0xd1, 0x01, 0x8D)
    model TOL_TIME is Memory<UCH>;

    /** RAM 0x008E NG_DGESCHW */
    @ext(0xd2, 0x01, 0x8E)
    model NG_DGESCHW is Memory<UCH>;
//    @ext(0x62, 0x11, 0x8E)
//    model NG_DGESCHW is Memory<UIN>;

    /** RAM 0x008F NG_INCR_DECR */
    @ext(0xd3, 0x01, 0x8F)
    model NG_INCR_DECR is Memory<UCH>;

    /** RAM 0x0090 NG_HZ_MIN */
    @ext(0xcc, 0x01, 0x90)
    model NG_HZ_MIN is Memory<UCH>;
//    @ext(0x7c, 0x11, 0x90)
//    model NG_HZ_MIN is Memory<UIN>;

    /** RAM 0x0091 NG_HZ_FREI */
    @ext(0xcd, 0x01, 0x91)
    model NG_HZ_FREI is Memory<UCH>;

    /** RAM 0x0092 NG_HZ_MAX */
    @ext(0xce, 0x01, 0x92)
    model NG_HZ_MAX is Memory<UCH>;
//    @ext(0x7e, 0x11, 0x92)
//    model NG_HZ_MAX is Memory<UIN>;

    /** RAM 0x0093 PUHZ_VSP */
    @ext(0xcf, 0x01, 0x93)
    model PUHZ_VSP is Memory<UCH>;

    /** RAM 0x0094 PUHZ_MIN */
    @ext(0xc8, 0x01, 0x94)
    model PUHZ_MIN is Memory<UCH>;
//    @ext(0x78, 0x11, 0x94)
//    model PUHZ_MIN is Memory<UIN>;

    /** RAM 0x0095 PUHZ_MAX */
    @ext(0xc9, 0x01, 0x95)
    model PUHZ_MAX is Memory<UCH>;

    /** RAM 0x0096 PUHZ_DT_REG */
    @ext(0xca, 0x01, 0x96)
    model PUHZ_DT_REG is Memory<UCH>;
//    @ext(0x7a, 0x11, 0x96)
//    model PUHZ_DT_REG is Memory<UIN>;

    /** RAM 0x0097 PU_TAKT */
    @ext(0xcb, 0x01, 0x97)
    model PU_TAKT is Memory<UCH>;

    /** RAM 0x0098 DT_VLRL_SOLL */
    @ext(0xc4, 0x01, 0x98)
    model DT_VLRL_SOLL is Memory<UCH>;
//    @ext(0x74, 0x11, 0x98)
//    model DT_VLRL_SOLL is Memory<UIN>;

    /** RAM 0x0099 DT_VLRL_MAX */
    @ext(0xc5, 0x01, 0x99)
    model DT_VLRL_MAX is Memory<UCH>;

    /** RAM 0x009A DT_VL_ESTB2_MAX */
    @ext(0xc6, 0x01, 0x9A)
    model DT_VL_ESTB2_MAX is Memory<UCH>;
//    @ext(0x76, 0x11, 0x9A)
//    model DT_VL_ESTB2_MAX is Memory<UIN>;

    /** RAM 0x009B PNL_HZ */
    @ext(0xc7, 0x01, 0x9B)
    model PNL_HZ is Memory<UCH>;

    /** RAM 0x009C MAXWWSOLL */
    @ext(0xc0, 0x01, 0x9C)
    model MAXWWSOLL is Memory<UCH>;
//    @ext(0x70, 0x11, 0x9C)
//    model MAXWWSOLL is Memory<UIN>;

    /** RAM 0x009D MINWWSOLL */
    @ext(0xc1, 0x01, 0x9D)
    model MINWWSOLL is Memory<UCH>;

    /** RAM 0x009E WW_HYS */
    @ext(0xc2, 0x01, 0x9E)
    model WW_HYS is Memory<UCH>;
//    @ext(0x72, 0x11, 0x9E)
//    model WW_HYS is Memory<UIN>;

    /** RAM 0x009F TWWPLUS */
    @ext(0xc3, 0x01, 0x9F)
    model TWWPLUS is Memory<UCH>;

    /** RAM 0x00A0 NG_WW_MIN */
    @ext(0xfc, 0x01, 0xA0)
    model NG_WW_MIN is Memory<UCH>;
//    @ext(0x4c, 0x11, 0xA0)
//    model NG_WW_MIN is Memory<UIN>;

    /** RAM 0x00A1 NG_WW_FREI */
    @ext(0xfd, 0x01, 0xA1)
    model NG_WW_FREI is Memory<UCH>;

    /** RAM 0x00A2 NG_WW_MAX */
    @ext(0xfe, 0x01, 0xA2)
    model NG_WW_MAX is Memory<UCH>;
//    @ext(0x4e, 0x11, 0xA2)
//    model NG_WW_MAX is Memory<UIN>;

    /** RAM 0x00A3 PUHZ_WW */
    @ext(0xff, 0x01, 0xA3)
    model PUHZ_WW is Memory<UCH>;

    /** RAM 0x00A4 PNL_WW */
    @ext(0xf8, 0x01, 0xA4)
    model PNL_WW is Memory<UCH>;
//    @ext(0x48, 0x11, 0xA4)
//    model PNL_WW is Memory<UIN>;

    /** RAM 0x00A5 TFRS_A */
    @ext(0xf9, 0x01, 0xA5)
    model TFRS_A is Memory<UCH>;

    /** RAM 0x00A6 NG_KP */
    @ext(0xfa, 0x01, 0xA6)
    model NG_KP is Memory<UCH>;
//    @ext(0x4a, 0x11, 0xA6)
//    model NG_KP is Memory<UIN>;

    /** RAM 0x00A7 NG_KTN */
    @ext(0xfb, 0x01, 0xA7)
    model NG_KTN is Memory<UCH>;

    /** RAM 0x00A8 NG_REG_ANPASS */
    @ext(0xf4, 0x01, 0xA8)
    model NG_REG_ANPASS is Memory<UCH>;
//    @ext(0x44, 0x11, 0xA8)
//    model NG_REG_ANPASS is Memory<UIN>;

    /** RAM 0x00A9 SEL_IN_1_2 */
    @ext(0xf5, 0x01, 0xA9)
    model SEL_IN_1_2 is Memory<UCH>;

    /** RAM 0x00AA SEL_IN_3_4 */
    @ext(0xf6, 0x01, 0xAA)
    model SEL_IN_3_4 is Memory<UCH>;
//    @ext(0x46, 0x11, 0xAA)
//    model SEL_IN_3_4 is Memory<UIN>;

    /** RAM 0x00AB SEL_PR_1_2 */
    @ext(0xf7, 0x01, 0xAB)
    model SEL_PR_1_2 is Memory<UCH>;

    /** RAM 0x00AC SEL_PR_3_4 */
    @ext(0xf0, 0x01, 0xAC)
    model SEL_PR_3_4 is Memory<UCH>;
//    @ext(0x40, 0x11, 0xAC)
//    model SEL_PR_3_4 is Memory<UIN>;

    /** RAM 0x00AD KLAPPENLAUFZEIT */
    @ext(0xf1, 0x01, 0xAD)
    model KLAPPENLAUFZEIT is Memory<UCH>;

    /** RAM 0x00AE PARA_DT_WEICHE_VL */
    @ext(0xf2, 0x01, 0xAE)
    model PARA_DT_WEICHE_VL is Memory<UCH>;
//    @ext(0x42, 0x11, 0xAE)
//    model PARA_DT_WEICHE_VL is Memory<UIN>;

    /** RAM 0x00AF V24_KM_ADR */
    @ext(0xf3, 0x01, 0xAF)
    model V24_KM_ADR is Memory<UCH>;

    /** RAM 0x00B0 KESS_OPT */
    @ext(0xec, 0x01, 0xB0)
    model KESS_OPT is Memory<UCH>;
//    @ext(0x5c, 0x11, 0xB0)
//    model KESS_OPT is Memory<UIN>;

    /** RAM 0x00B1 KESS_OPT_2 */
    @ext(0xed, 0x01, 0xB1)
    model KESS_OPT_2 is Memory<UCH>;

    /** RAM 0x00B2 KESS_BITS */
    @ext(0xee, 0x01, 0xB2)
    model KESS_BITS is Memory<UCH>;
//    @ext(0x5e, 0x11, 0xB2)
//    model KESS_BITS is Memory<UIN>;

    /** RAM 0x00B3 REF_KORR */
    @ext(0xef, 0x01, 0xB3)
    model REF_KORR is Memory<UCH>;

    /** RAM 0x00B4 KES_DAT_CRC */
    @ext(0xe8, 0x01, 0xB4)
    model KES_DAT_CRC is Memory<UCH>;
//    @ext(0x58, 0x11, 0xB4)
//    model KES_DAT_CRC is Memory<UIN>;

    /** RAM 0x00B5 AIN_FS_ERR_MASK */
    @ext(0xe9, 0x01, 0xB5)
    model AIN_FS_ERR_MASK is Memory<UCH>;

    /** RAM 0x00B6 ERR_MERK_ALT */
    @ext(0xea, 0x01, 0xB6)
    model ERR_MERK_ALT is Memory<UCH>;
//    @ext(0x5a, 0x11, 0xB6)
//    model ERR_MERK_ALT is Memory<UIN>;

    /** RAM 0x00B7 F_CODE_ALT */
    @ext(0xeb, 0x01, 0xB7)
    model F_CODE_ALT is Memory<UCH>;

    /** RAM 0x00B8 ROM_DPH */
    @ext(0xe4, 0x01, 0xB8)
    model ROM_DPH is Memory<UCH>;
//    @ext(0x54, 0x11, 0xB8)
//    model ROM_DPH is Memory<UIN>;

    /** RAM 0x00B9 ROM_DPL */
    @ext(0xe5, 0x01, 0xB9)
    model ROM_DPL is Memory<UCH>;

    /** RAM 0x00BA ROM_H */
    @ext(0xe6, 0x01, 0xBA)
    model ROM_H is Memory<UCH>;
//    @ext(0x56, 0x11, 0xBA)
//    model ROM_H is Memory<UIN>;

    /** RAM 0x00BB ROM_L */
    @ext(0xe7, 0x01, 0xBB)
    model ROM_L is Memory<UCH>;

    /** RAM 0x00BC V24_SCOM_ADR */
    @ext(0xe0, 0x01, 0xBC)
    model V24_SCOM_ADR is Memory<UCH>;
//    @ext(0x50, 0x11, 0xBC)
//    model V24_SCOM_ADR is Memory<UIN>;

    /** RAM 0x00BD S5STEP */
    @ext(0xe1, 0x01, 0xBD)
    model S5STEP is Memory<UCH>;

    /** RAM 0x00BF NGXW1 */
    @ext(0xe3, 0x01, 0xBF)
    model NGXW1 is Memory<UCH>;

    /** RAM 0x00C0 PUHZPWM */
    @ext(0x9c, 0x01, 0xC0)
    model PUHZPWM is Memory<UCH>;
//    @ext(0x2c, 0x11, 0xC0)
//    model PUHZPWM is Memory<UIN>;

    /** RAM 0x00C1 K_ZUST_BITS */
    @ext(0x9d, 0x01, 0xC1)
    model K_ZUST_BITS is Memory<UCH>;

    /** RAM 0x00C2 K_ZUST_BITS_2 */
    @ext(0x9e, 0x01, 0xC2)
    model K_ZUST_BITS_2 is Memory<UCH>;
//    @ext(0x2e, 0x11, 0xC2)
//    model K_ZUST_BITS_2 is Memory<UIN>;

    /** RAM 0x00C3 V24_HIADR */
    @ext(0x9f, 0x01, 0xC3)
    model V24_HIADR is Memory<UCH>;

    /** RAM 0x00C4 ICL20SEC_ALT */
    @ext(0x98, 0x01, 0xC4)
    model ICL20SEC_ALT is Memory<UCH>;
//    @ext(0x28, 0x11, 0xC4)
//    model ICL20SEC_ALT is Memory<UIN>;

    /** RAM 0x00C5 ICL1HRS_ALT */
    @ext(0x99, 0x01, 0xC5)
    model ICL1HRS_ALT is Memory<UCH>;

    /** RAM 0x00C6 RES_CNT_ALT */
    @ext(0x9a, 0x01, 0xC6)
    model RES_CNT_ALT is Memory<UCH>;
//    @ext(0x2a, 0x11, 0xC6)
//    model RES_CNT_ALT is Memory<UIN>;

    /** RAM 0x00C7 NGIST_2 */
    @ext(0x9b, 0x01, 0xC7)
    model NGIST_2 is Memory<UCH>;

    /** RAM 0x00C9 NM_EBUS_STATUS */
    @ext(0x95, 0x01, 0xC9)
    model NM_EBUS_STATUS is Memory<UCH>;

    /** RAM 0x00CA NM_ZUSTAND */
    @ext(0x96, 0x01, 0xCA)
    model NM_ZUSTAND is Memory<UCH>;
//    @ext(0x26, 0x11, 0xCA)
//    model NM_ZUSTAND is Memory<UIN>;

    /** RAM 0x00CB CNTBOOSTER */
    @ext(0x97, 0x01, 0xCB)
    model CNTBOOSTER is Memory<UCH>;

    /** RAM 0x00CC BCC_STATUS */
    @ext(0x90, 0x01, 0xCC)
    model BCC_STATUS is Memory<UCH>;
//    @ext(0x20, 0x11, 0xCC)
//    model BCC_STATUS is Memory<UIN>;

    /** RAM 0x00CD S7_BITS */
    @ext(0x91, 0x01, 0xCD)
    model S7_BITS is Memory<UCH>;

    /** RAM 0x00CE STACK */
    @ext(0x92, 0x01, 0xCE)
    model STACK is Memory<UCH>;
//    @ext(0x22, 0x11, 0xCE)
//    model STACK is Memory<UIN>;


    // ====================================
    // --- SFR ---
    // ====================================

    /** SFR 0x0080 DE_F_PORT */
    @ext(0xac, 0x04, 0x80)
    model DE_F_PORT is Memory<UCH>;
//    @ext(0x1c, 0x14, 0x80)
//    model DE_F_PORT is Memory<UIN>;

    /** SFR 0x0082 DPL */
    @ext(0xae, 0x04, 0x82)
    model DPL is Memory<UCH>;
//    @ext(0x1e, 0x14, 0x82)
//    model DPL is Memory<UIN>;

    /** SFR 0x0083 DPH */
    @ext(0xaf, 0x04, 0x83)
    model DPH is Memory<UCH>;

    /** SFR 0x0086 WDTREL */
    @ext(0xaa, 0x04, 0x86)
    model WDTREL is Memory<UCH>;
//    @ext(0x1a, 0x14, 0x86)
//    model WDTREL is Memory<UIN>;

    /** SFR 0x0087 PCON */
    @ext(0xab, 0x04, 0x87)
    model PCON is Memory<UCH>;

    /** SFR 0x0088 TCON */
    @ext(0xa4, 0x04, 0x88)
    model TCON is Memory<UCH>;
//    @ext(0x14, 0x14, 0x88)
//    model TCON is Memory<UIN>;

    /** SFR 0x0089 TMOD */
    @ext(0xa5, 0x04, 0x89)
    model TMOD is Memory<UCH>;

    /** SFR 0x008A TL0 */
    @ext(0xa6, 0x04, 0x8A)
    model TL0 is Memory<UCH>;
//    @ext(0x16, 0x14, 0x8A)
//    model TL0 is Memory<UIN>;

    /** SFR 0x008B TL1 */
    @ext(0xa7, 0x04, 0x8B)
    model TL1 is Memory<UCH>;

    /** SFR 0x008C TH0 */
    @ext(0xa0, 0x04, 0x8C)
    model TH0 is Memory<UCH>;
//    @ext(0x10, 0x14, 0x8C)
//    model TH0 is Memory<UIN>;

    /** SFR 0x008D TH1 */
    @ext(0xa1, 0x04, 0x8D)
    model TH1 is Memory<UCH>;

    /** SFR 0x0090 P1ANA */
    @ext(0xbc, 0x04, 0x90)
    model P1ANA is Memory<UCH>;
//    @ext(0x0c, 0x14, 0x90)
//    model P1ANA is Memory<UIN>;

    /** SFR 0x0091 XPAGE */
    @ext(0xbd, 0x04, 0x91)
    model XPAGE is Memory<UCH>;

    /** SFR 0x0092 DPSEL */
    @ext(0xbe, 0x04, 0x92)
    model DPSEL is Memory<UCH>;
//    @ext(0x0e, 0x14, 0x92)
//    model DPSEL is Memory<UIN>;

    /** SFR 0x0098 SCON */
    @ext(0xb4, 0x04, 0x98)
    model SCON is Memory<UCH>;
//    @ext(0x04, 0x14, 0x98)
//    model SCON is Memory<UIN>;

    /** SFR 0x0099 SBUF */
    @ext(0xb5, 0x04, 0x99)
    model SBUF is Memory<UCH>;

    /** SFR 0x00A0 DO_PORT */
    @ext(0x8c, 0x04, 0xA0)
    model DO_PORT is Memory<UCH>;
//    @ext(0x3c, 0x14, 0xA0)
//    model DO_PORT is Memory<UIN>;

    /** SFR 0x00A8 IEN0 */
    @ext(0x84, 0x04, 0xA8)
    model IEN0 is Memory<UCH>;
//    @ext(0x34, 0x14, 0xA8)
//    model IEN0 is Memory<UIN>;

    /** SFR 0x00A9 IP0 */
    @ext(0x85, 0x04, 0xA9)
    model IP0 is Memory<UCH>;

    /** SFR 0x00AA SRELL */
    @ext(0x86, 0x04, 0xAA)
    model SRELL is Memory<UCH>;
//    @ext(0x36, 0x14, 0xAA)
//    model SRELL is Memory<UIN>;

    /** SFR 0x00B1 SYSCON */
    @ext(0x9d, 0x04, 0xB1)
    model SYSCON is Memory<UCH>;

    /** SFR 0x00B8 IEN1 */
    @ext(0x94, 0x04, 0xB8)
    model IEN1 is Memory<UCH>;
//    @ext(0x24, 0x14, 0xB8)
//    model IEN1 is Memory<UIN>;

    /** SFR 0x00B9 IP1 */
    @ext(0x95, 0x04, 0xB9)
    model IP1 is Memory<UCH>;

    /** SFR 0x00BA SRELH */
    @ext(0x96, 0x04, 0xBA)
    model SRELH is Memory<UCH>;
//    @ext(0x26, 0x14, 0xBA)
//    model SRELH is Memory<UIN>;

    /** SFR 0x00C0 IRCON */
    @ext(0xec, 0x04, 0xC0)
    model IRCON is Memory<UCH>;
//    @ext(0x5c, 0x14, 0xC0)
//    model IRCON is Memory<UIN>;

    /** SFR 0x00C1 CCEN */
    @ext(0xed, 0x04, 0xC1)
    model CCEN is Memory<UCH>;

    /** SFR 0x00C2 CCL1 */
    @ext(0xee, 0x04, 0xC2)
    model CCL1 is Memory<UCH>;
//    @ext(0x5e, 0x14, 0xC2)
//    model CCL1 is Memory<UIN>;

    // Alias of CCL1
    // /** SFR 0x00C2 CCL_GEBL */
    // @ext(0xee, 0x04, 0xC2)
    // model CCL_GEBL is Memory<UCH>;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model CCL_GEBL is Memory<UIN>;

    /** SFR 0x00C3 CCH1 */
    @ext(0xef, 0x04, 0xC3)
    model CCH1 is Memory<UCH>;

    // Alias of CCH1
    // /** SFR 0x00C3 CCH_GEBL */
    // @ext(0xef, 0x04, 0xC3)
    // model CCH_GEBL is Memory<UCH>;

    /** SFR 0x00C4 CCL2 */
    @ext(0xe8, 0x04, 0xC4)
    model CCL2 is Memory<UCH>;
//    @ext(0x58, 0x14, 0xC4)
//    model CCL2 is Memory<UIN>;

    // Alias of CCL2
    // /** SFR 0x00C4 CCL_PUHZ */
    // @ext(0xe8, 0x04, 0xC4)
    // model CCL_PUHZ is Memory<UCH>;
//    // @ext(0x58, 0x14, 0xC4)
//    // model CCL_PUHZ is Memory<UIN>;

    /** SFR 0x00C5 CCH2 */
    @ext(0xe9, 0x04, 0xC5)
    model CCH2 is Memory<UCH>;

    // Alias of CCH2
    // /** SFR 0x00C5 CCH_PUHZ */
    // @ext(0xe9, 0x04, 0xC5)
    // model CCH_PUHZ is Memory<UCH>;

    /** SFR 0x00C6 CCL3 */
    @ext(0xea, 0x04, 0xC6)
    model CCL3 is Memory<UCH>;
//    @ext(0x5a, 0x14, 0xC6)
//    model CCL3 is Memory<UIN>;

    // Alias of CCL3
    // /** SFR 0x00C6 CCL_GPV */
    // @ext(0xea, 0x04, 0xC6)
    // model CCL_GPV is Memory<UCH>;
//    // @ext(0x5a, 0x14, 0xC6)
//    // model CCL_GPV is Memory<UIN>;

    /** SFR 0x00C7 CCH3 */
    @ext(0xeb, 0x04, 0xC7)
    model CCH3 is Memory<UCH>;

    // Alias of CCH3
    // /** SFR 0x00C7 CCH_GPV */
    // @ext(0xeb, 0x04, 0xC7)
    // model CCH_GPV is Memory<UCH>;

    /** SFR 0x00C8 T2CON */
    @ext(0xe4, 0x04, 0xC8)
    model T2CON is Memory<UCH>;
//    @ext(0x54, 0x14, 0xC8)
//    model T2CON is Memory<UIN>;

    /** SFR 0x00CA CRCL */
    @ext(0xe6, 0x04, 0xCA)
    model CRCL is Memory<UCH>;
//    @ext(0x56, 0x14, 0xCA)
//    model CRCL is Memory<UIN>;

    // Alias of CRCL
    // /** SFR 0x00CA SYS_TIMER_RELOAD_LOW */
    // @ext(0xe6, 0x04, 0xCA)
    // model SYS_TIMER_RELOAD_LOW is Memory<UCH>;
//    // @ext(0x56, 0x14, 0xCA)
//    // model SYS_TIMER_RELOAD_LOW is Memory<UIN>;

    /** SFR 0x00CB CRCH */
    @ext(0xe7, 0x04, 0xCB)
    model CRCH is Memory<UCH>;

    // Alias of CRCH
    // /** SFR 0x00CB SYS_TIMER_RELOAD_HIGH */
    // @ext(0xe7, 0x04, 0xCB)
    // model SYS_TIMER_RELOAD_HIGH is Memory<UCH>;

    /** SFR 0x00CC TL2 */
    @ext(0xe0, 0x04, 0xCC)
    model TL2 is Memory<UCH>;
//    @ext(0x50, 0x14, 0xCC)
//    model TL2 is Memory<UIN>;

    /** SFR 0x00CD TH2 */
    @ext(0xe1, 0x04, 0xCD)
    model TH2 is Memory<UCH>;

    /** SFR 0x00D0 PSW */
    @ext(0xfc, 0x04, 0xD0)
    model PSW is Memory<UCH>;
//    @ext(0x4c, 0x14, 0xD0)
//    model PSW is Memory<UIN>;

    /** SFR 0x00D8 ADCON */
    @ext(0xf4, 0x04, 0xD8)
    model ADCON is Memory<UCH>;
//    @ext(0x44, 0x14, 0xD8)
//    model ADCON is Memory<UIN>;

    // Alias of ADCON
    // /** SFR 0x00D8 ADCON0 */
    // @ext(0xf4, 0x04, 0xD8)
    // model ADCON0 is Memory<UCH>;
//    // @ext(0x44, 0x14, 0xD8)
//    // model ADCON0 is Memory<UIN>;

    /** SFR 0x00D9 ADDAT */
    @ext(0xf5, 0x04, 0xD9)
    model ADDAT is Memory<UCH>;

    // Alias of ADDAT
    // /** SFR 0x00D9 ADDATH */
    // @ext(0xf5, 0x04, 0xD9)
    // model ADDATH is Memory<UCH>;

    /** SFR 0x00DA ADDATL */
    @ext(0xf6, 0x04, 0xDA)
    model ADDATL is Memory<UCH>;
//    @ext(0x46, 0x14, 0xDA)
//    model ADDATL is Memory<UIN>;

    // Alias of ADDATL
    // /** SFR 0x00DA DAPR */
    // @ext(0xf6, 0x04, 0xDA)
    // model DAPR is Memory<UCH>;
//    // @ext(0x46, 0x14, 0xDA)
//    // model DAPR is Memory<UIN>;

    /** SFR 0x00DC ADCON1 */
    @ext(0xf0, 0x04, 0xDC)
    model ADCON1 is Memory<UCH>;
//    @ext(0x40, 0x14, 0xDC)
//    model ADCON1 is Memory<UIN>;

    /** SFR 0x00E0 ACC */
    @ext(0xcc, 0x04, 0xE0)
    model ACC is Memory<UCH>;
//    @ext(0x7c, 0x14, 0xE0)
//    model ACC is Memory<UIN>;

    /** SFR 0x00FC VR0 */
    @ext(0xd0, 0x04, 0xFC)
    model VR0 is Memory<UCH>;
//    @ext(0x60, 0x14, 0xFC)
//    model VR0 is Memory<UIN>;

    /** SFR 0x00FD VR1 */
    @ext(0xd1, 0x04, 0xFD)
    model VR1 is Memory<UCH>;

    /** SFR 0x00FE VR2 */
    @ext(0xd2, 0x04, 0xFE)
    model VR2 is Memory<UCH>;
//    @ext(0x62, 0x14, 0xFE)
//    model VR2 is Memory<UIN>;


    // ====================================
    // --- Konstanten ---
    // ====================================

    /** Konstanten 0x0000 ACK_07FF_BIT */
    @ext(0xb8, 0x02, 0x00)
    model ACK_07FF_BIT is Memory<UCH>;
//    @ext(0x08, 0x12, 0x00)
//    model ACK_07FF_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_0800_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_0800_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_0800_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_5002_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_5002_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_5002_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_FF00_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_FF00_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_FF00_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ACK_REG_STOP_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_REG_STOP_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_REG_STOP_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ADC_SHORT */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_SHORT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ADC_SHORT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 AIO_900 */
    // @ext(0xb8, 0x02, 0x00)
    // model AIO_900 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AIO_900 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 AI_MUXER */
    // @ext(0xb8, 0x02, 0x00)
    // model AI_MUXER is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AI_MUXER is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 AI_REF */
    // @ext(0xb8, 0x02, 0x00)
    // model AI_REF is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AI_REF is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 BCCARD */
    // @ext(0xb8, 0x02, 0x00)
    // model BCCARD is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model BCCARD is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EBUS_S7 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_S7 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_S7 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EBUS_SCHICHT_2 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_SCHICHT_2 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_SCHICHT_2 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EEA_ANF */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_ANF is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEA_ANF is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EEA_PAGE_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_PAGE_DEFAULT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEA_PAGE_DEFAULT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EEP_FAST_INIT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEP_FAST_INIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEP_FAST_INIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EE_I2C */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_I2C is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EE_I2C is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 EE_PARAS */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_PARAS is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EE_PARAS is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 FEHLER_DETAIL_EBENE */
    // @ext(0xb8, 0x02, 0x00)
    // model FEHLER_DETAIL_EBENE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model FEHLER_DETAIL_EBENE is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 HARD_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD_C505L is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model HARD_C505L is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 INFONR */
    // @ext(0xb8, 0x02, 0x00)
    // model INFONR is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model INFONR is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ION */
    // @ext(0xb8, 0x02, 0x00)
    // model ION is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ION is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 MXSTB_A */
    // @ext(0xb8, 0x02, 0x00)
    // model MXSTB_A is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MXSTB_A is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 NM_KALTSTART_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model NM_KALTSTART_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model NM_KALTSTART_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 OS_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model OS_C505L is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model OS_C505L is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model QQ_M1 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 RAMROM */
    // @ext(0xb8, 0x02, 0x00)
    // model RAMROM is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model RAMROM is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 RX_XRAM_BUSY_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model RX_XRAM_BUSY_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model RX_XRAM_BUSY_BIT is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 SFR_IO */
    // @ext(0xb8, 0x02, 0x00)
    // model SFR_IO is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model SFR_IO is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 STOEREC */
    // @ext(0xb8, 0x02, 0x00)
    // model STOEREC is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model STOEREC is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 TX_EIG_QQ */
    // @ext(0xb8, 0x02, 0x00)
    // model TX_EIG_QQ is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model TX_EIG_QQ is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 TX_QQ_M11 */
    // @ext(0xb8, 0x02, 0x00)
    // model TX_QQ_M11 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model TX_QQ_M11 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 USER */
    // @ext(0xb8, 0x02, 0x00)
    // model USER is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model USER is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 VAR_900 */
    // @ext(0xb8, 0x02, 0x00)
    // model VAR_900 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model VAR_900 is Memory<UIN>;

    // Alias of ACK_07FF_BIT
    // /** Konstanten 0x0000 ZST_QQ_EIG */
    // @ext(0xb8, 0x02, 0x00)
    // model ZST_QQ_EIG is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ZST_QQ_EIG is Memory<UIN>;

    /** Konstanten 0x0001 ACK_0503_BIT */
    @ext(0xb9, 0x02, 0x01)
    model ACK_0503_BIT is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_0704_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_0704_BIT is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_07FF */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_07FF is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_0800 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_0800 is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_5002 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_5002 is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_FF00 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_FF00 is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_FF02_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_FF02_BIT is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ACK_REG_STOP */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_REG_STOP is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ADC_NONE */
    // @ext(0xb9, 0x02, 0x01)
    // model ADC_NONE is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 AIN_ERR_NI1000 */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_ERR_NI1000 is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 EE_RANGE_FAIL__DEF */
    // @ext(0xb9, 0x02, 0x01)
    // model EE_RANGE_FAIL__DEF is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 MAX_OK */
    // @ext(0xb9, 0x02, 0x01)
    // model MAX_OK is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NGPBS_AFAKT */
    // @ext(0xb9, 0x02, 0x01)
    // model NGPBS_AFAKT is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NM_INIT_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model NM_INIT_BIT is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 NTC1_TR_TST */
    // @ext(0xb9, 0x02, 0x01)
    // model NTC1_TR_TST is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 RX_QQ_M2 */
    // @ext(0xb9, 0x02, 0x01)
    // model RX_QQ_M2 is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 TCVZZ */
    // @ext(0xb9, 0x02, 0x01)
    // model TCVZZ is Memory<UCH>;

    // Alias of ACK_0503_BIT
    // /** Konstanten 0x0001 ZST_QQ_M2 */
    // @ext(0xb9, 0x02, 0x01)
    // model ZST_QQ_M2 is Memory<UCH>;

    /** Konstanten 0x0002 ACK_0503 */
    @ext(0xba, 0x02, 0x02)
    model ACK_0503 is Memory<UCH>;
//    @ext(0x0a, 0x12, 0x02)
//    model ACK_0503 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_0704 */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_0704 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_0704 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_FE01_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_FE01_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_FE01_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ACK_FF02 */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_FF02 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_FF02 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 EEA_CONST_ANF */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_CONST_ANF is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model EEA_CONST_ANF is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 EE_RANGE_FAIL__INTBCC */
    // @ext(0xba, 0x02, 0x02)
    // model EE_RANGE_FAIL__INTBCC is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model EE_RANGE_FAIL__INTBCC is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ION_TEILER */
    // @ext(0xba, 0x02, 0x02)
    // model ION_TEILER is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ION_TEILER is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 L_EEA_CRC_BCC_INT */
    // @ext(0xba, 0x02, 0x02)
    // model L_EEA_CRC_BCC_INT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model L_EEA_CRC_BCC_INT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 MB_2_INIT */
    // @ext(0xba, 0x02, 0x02)
    // model MB_2_INIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MB_2_INIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NGPBS_XWATOM */
    // @ext(0xba, 0x02, 0x02)
    // model NGPBS_XWATOM is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NGPBS_XWATOM is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NM_RESET_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model NM_RESET_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NM_RESET_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NM_S7_RESET_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model NM_S7_RESET_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NM_S7_RESET_BIT is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 NTC2_TR_TST */
    // @ext(0xba, 0x02, 0x02)
    // model NTC2_TR_TST is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NTC2_TR_TST is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 TIDLE_R2 */
    // @ext(0xba, 0x02, 0x02)
    // model TIDLE_R2 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TIDLE_R2 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ZST_QQ_M10 */
    // @ext(0xba, 0x02, 0x02)
    // model ZST_QQ_M10 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ZST_QQ_M10 is Memory<UIN>;

    // Alias of ACK_0503
    // /** Konstanten 0x0002 ZST_QQ_M10_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ZST_QQ_M10_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ZST_QQ_M10_BIT is Memory<UIN>;

    /** Konstanten 0x0003 ADC_MXCODE */
    @ext(0xbb, 0x02, 0x03)
    model ADC_MXCODE is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EM_EE_REDUND__SELF */
    // @ext(0xbb, 0x02, 0x03)
    // model EM_EE_REDUND__SELF is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 HZ_KTND__I */
    // @ext(0xbb, 0x02, 0x03)
    // model HZ_KTND__I is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NG_GR_MIN__FILT */
    // @ext(0xbb, 0x02, 0x03)
    // model NG_GR_MIN__FILT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NM_NORMAL_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model NM_NORMAL_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY11 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY11 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY12 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY12 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 QQ_M11 */
    // @ext(0xbb, 0x02, 0x03)
    // model QQ_M11 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 TBOOSTRES */
    // @ext(0xbb, 0x02, 0x03)
    // model TBOOSTRES is Memory<UCH>;

    /** Konstanten 0x0004 ACK_FE01 */
    @ext(0xbc, 0x02, 0x04)
    model ACK_FE01 is Memory<UCH>;
//    @ext(0x0c, 0x12, 0x04)
//    model ACK_FE01 is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 AIN_ERR_TAUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model AIN_ERR_TAUSS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AIN_ERR_TAUSS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 AI_TRL */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TRL is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TRL is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 EE_RANGE_FAIL__BCC_STAT */
    // @ext(0xbc, 0x02, 0x04)
    // model EE_RANGE_FAIL__BCC_STAT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model EE_RANGE_FAIL__BCC_STAT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 EM_EE_REDUND__RED_FS */
    // @ext(0xbc, 0x02, 0x04)
    // model EM_EE_REDUND__RED_FS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model EM_EE_REDUND__RED_FS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NFSOUT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NM_NETZSTATUS_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model NM_NETZSTATUS_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NM_NETZSTATUS_BIT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NTC1_SCHLUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model NTC1_SCHLUSS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NTC1_SCHLUSS is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 NTC_TEMP_TOL */
    // @ext(0xbc, 0x02, 0x04)
    // model NTC_TEMP_TOL is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NTC_TEMP_TOL is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model RES_CNT_OFF is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0004 TBOOST */
    // @ext(0xbc, 0x02, 0x04)
    // model TBOOST is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TBOOST is Memory<UIN>;

    /** Konstanten 0x0005 AI_ANAIN5 */
    @ext(0xbd, 0x02, 0x05)
    model AI_ANAIN5 is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 AI_ESTB1 */
    // @ext(0xbd, 0x02, 0x05)
    // model AI_ESTB1 is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 C_MX_RES_CNT */
    // @ext(0xbd, 0x02, 0x05)
    // model C_MX_RES_CNT is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 K_NTC1 */
    // @ext(0xbd, 0x02, 0x05)
    // model K_NTC1 is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 MAXIONTST0 */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXIONTST0 is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 NGPBS_IMPS */
    // @ext(0xbd, 0x02, 0x05)
    // model NGPBS_IMPS is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 NG_DW_TOL */
    // @ext(0xbd, 0x02, 0x05)
    // model NG_DW_TOL is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 NM_STARTFLAG_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model NM_STARTFLAG_BIT is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 REF_FUSE */
    // @ext(0xbd, 0x02, 0x05)
    // model REF_FUSE is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 V24_KM_ADR_DEFAULT */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_DEFAULT is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 V24_KM_ADR_MAX */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX is Memory<UCH>;

    // Alias of AI_ANAIN5
    // /** Konstanten 0x0005 V24_KM_ADR_MAX_SCOM */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX_SCOM is Memory<UCH>;

    /** Konstanten 0x0006 AI_ANAIN6 */
    @ext(0xbe, 0x02, 0x06)
    model AI_ANAIN6 is Memory<UCH>;
//    @ext(0x0e, 0x12, 0x06)
//    model AI_ANAIN6 is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 AI_THZ */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_THZ is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_THZ is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 AI_TVL */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TVL is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TVL is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 EPIONTSTDUR */
    // @ext(0xbe, 0x02, 0x06)
    // model EPIONTSTDUR is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model EPIONTSTDUR is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 NM_NO_AUTOSYN */
    // @ext(0xbe, 0x02, 0x06)
    // model NM_NO_AUTOSYN is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model NM_NO_AUTOSYN is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 N_50HZ_IN */
    // @ext(0xbe, 0x02, 0x06)
    // model N_50HZ_IN is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model N_50HZ_IN is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 SPEICHER_TIEFE */
    // @ext(0xbe, 0x02, 0x06)
    // model SPEICHER_TIEFE is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model SPEICHER_TIEFE is Memory<UIN>;

    // Alias of AI_ANAIN6
    // /** Konstanten 0x0006 V24_TECHOHW */
    // @ext(0xbe, 0x02, 0x06)
    // model V24_TECHOHW is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model V24_TECHOHW is Memory<UIN>;

    /** Konstanten 0x0007 AI_ANAIN7 */
    @ext(0xbf, 0x02, 0x07)
    model AI_ANAIN7 is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 AI_ESTB2 */
    // @ext(0xbf, 0x02, 0x07)
    // model AI_ESTB2 is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 K_NTC2 */
    // @ext(0xbf, 0x02, 0x07)
    // model K_NTC2 is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 NGPBS_FABTAST */
    // @ext(0xbf, 0x02, 0x07)
    // model NGPBS_FABTAST is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 NM_TALK_EBUS_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model NM_TALK_EBUS_BIT is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 TTOL__SW_CONTR */
    // @ext(0xbf, 0x02, 0x07)
    // model TTOL__SW_CONTR is Memory<UCH>;

    // Alias of AI_ANAIN7
    // /** Konstanten 0x0007 ZST_ENABLE */
    // @ext(0xbf, 0x02, 0x07)
    // model ZST_ENABLE is Memory<UCH>;

    /** Konstanten 0x0008 EM_EE_REDUND__RED_NFS */
    @ext(0xb0, 0x02, 0x08)
    model EM_EE_REDUND__RED_NFS is Memory<UCH>;
//    @ext(0x00, 0x12, 0x08)
//    model EM_EE_REDUND__RED_NFS is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 L_PRUEF_DAT_CRC */
    // @ext(0xb0, 0x02, 0x08)
    // model L_PRUEF_DAT_CRC is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model L_PRUEF_DAT_CRC is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 NTC1_BRUCH */
    // @ext(0xb0, 0x02, 0x08)
    // model NTC1_BRUCH is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model NTC1_BRUCH is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 RECORD */
    // @ext(0xb0, 0x02, 0x08)
    // model RECORD is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model RECORD is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_NFS
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model REGBNK_TASK_1 is Memory<UIN>;

    /** Konstanten 0x000A INIT_TCYCL_0503 */
    @ext(0xb2, 0x02, 0x0A)
    model INIT_TCYCL_0503 is Memory<UCH>;
//    @ext(0x02, 0x12, 0x0A)
//    model INIT_TCYCL_0503 is Memory<UIN>;

    // Alias of INIT_TCYCL_0503
    // /** Konstanten 0x000A L_ID_PARA_BCC */
    // @ext(0xb2, 0x02, 0x0A)
    // model L_ID_PARA_BCC is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model L_ID_PARA_BCC is Memory<UIN>;

    /** Konstanten 0x000B INIT_TCYCL_0800 */
    @ext(0xb3, 0x02, 0x0B)
    model INIT_TCYCL_0800 is Memory<UCH>;

    /** Konstanten 0x000D BAUDRATE_TAKT */
    @ext(0xb5, 0x02, 0x0D)
    model BAUDRATE_TAKT is Memory<UCH>;

    /** Konstanten 0x000F HZ_HYS__POS */
    @ext(0xb7, 0x02, 0x0F)
    model HZ_HYS__POS is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F KTNMULFACT */
    // @ext(0xb7, 0x02, 0x0F)
    // model KTNMULFACT is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F NG_INCR_DECR__INCR */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_INCR_DECR__INCR is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F NG_REG_ANPASS__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_REG_ANPASS__SELF is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F PU_TAKT__PAUSE */
    // @ext(0xb7, 0x02, 0x0F)
    // model PU_TAKT__PAUSE is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F P_HZTHTWWSOLL_MIN */
    // @ext(0xb7, 0x02, 0x0F)
    // model P_HZTHTWWSOLL_MIN is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F P_LPG__START */
    // @ext(0xb7, 0x02, 0x0F)
    // model P_LPG__START is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_IN_1_2__1 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_IN_1_2__1 is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_IN_3_4__3 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_IN_3_4__3 is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_PR_1_2__1 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_PR_1_2__1 is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F SEL_PR_3_4__3 */
    // @ext(0xb7, 0x02, 0x0F)
    // model SEL_PR_3_4__3 is Memory<UCH>;

    // Alias of HZ_HYS__POS
    // /** Konstanten 0x000F WW_HYS__POS */
    // @ext(0xb7, 0x02, 0x0F)
    // model WW_HYS__POS is Memory<UCH>;

    /** Konstanten 0x0010 AIN_ERR_BW1 */
    @ext(0xa8, 0x02, 0x10)
    model AIN_ERR_BW1 is Memory<UCH>;
//    @ext(0x18, 0x12, 0x10)
//    model AIN_ERR_BW1 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 EM_EE_REDUND__RED_DEF */
    // @ext(0xa8, 0x02, 0x10)
    // model EM_EE_REDUND__RED_DEF is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model EM_EE_REDUND__RED_DEF is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 NTC2_SCHLUSS */
    // @ext(0xa8, 0x02, 0x10)
    // model NTC2_SCHLUSS is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model NTC2_SCHLUSS is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 QQ_M2 */
    // @ext(0xa8, 0x02, 0x10)
    // model QQ_M2 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model QQ_M2 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBANK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBANK_TASK_2 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model REGBANK_TASK_2 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBNK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBNK_TASK_2 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model REGBNK_TASK_2 is Memory<UIN>;

    /** Konstanten 0x0011 DE_MIN_CNT */
    @ext(0xa9, 0x02, 0x11)
    model DE_MIN_CNT is Memory<UCH>;

    /** Konstanten 0x0012 DDSPERRZAEHLER */
    @ext(0xaa, 0x02, 0x12)
    model DDSPERRZAEHLER is Memory<UCH>;
//    @ext(0x1a, 0x12, 0x12)
//    model DDSPERRZAEHLER is Memory<UIN>;

    /** Konstanten 0x0013 DDRX_OFFSET_S1 */
    @ext(0xab, 0x02, 0x13)
    model DDRX_OFFSET_S1 is Memory<UCH>;

    /** Konstanten 0x0014 AD_SCALE_2 */
    @ext(0xac, 0x02, 0x14)
    model AD_SCALE_2 is Memory<UCH>;
//    @ext(0x1c, 0x12, 0x14)
//    model AD_SCALE_2 is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 DDTX_OFFSET_CNT */
    // @ext(0xac, 0x02, 0x14)
    // model DDTX_OFFSET_CNT is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DDTX_OFFSET_CNT is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 DIG_TST */
    // @ext(0xac, 0x02, 0x14)
    // model DIG_TST is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DIG_TST is Memory<UIN>;

    // Alias of AD_SCALE_2
    // /** Konstanten 0x0014 L_EWIGEN_ZAEHLER */
    // @ext(0xac, 0x02, 0x14)
    // model L_EWIGEN_ZAEHLER is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model L_EWIGEN_ZAEHLER is Memory<UIN>;

    /** Konstanten 0x0016 L_FS_PARA */
    @ext(0xae, 0x02, 0x16)
    model L_FS_PARA is Memory<UCH>;
//    @ext(0x1e, 0x12, 0x16)
//    model L_FS_PARA is Memory<UIN>;

    // Alias of L_FS_PARA
    // /** Konstanten 0x0016 WAIT_A_2 */
    // @ext(0xae, 0x02, 0x16)
    // model WAIT_A_2 is Memory<UCH>;
//    // @ext(0x1e, 0x12, 0x16)
//    // model WAIT_A_2 is Memory<UIN>;

    /** Konstanten 0x0018 EEA_CONST_CRC */
    @ext(0xa0, 0x02, 0x18)
    model EEA_CONST_CRC is Memory<UCH>;
//    @ext(0x10, 0x12, 0x18)
//    model EEA_CONST_CRC is Memory<UIN>;

    // Alias of EEA_CONST_CRC
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory<UCH>;
//    // @ext(0x10, 0x12, 0x18)
//    // model REGB_TIRP is Memory<UIN>;

    /** Konstanten 0x0019 EEA_RAM_ANF */
    @ext(0xa1, 0x02, 0x19)
    model EEA_RAM_ANF is Memory<UCH>;

    // Alias of EEA_RAM_ANF
    // /** Konstanten 0x0019 ROM_END_L */
    // @ext(0xa1, 0x02, 0x19)
    // model ROM_END_L is Memory<UCH>;

    // Alias of EEA_RAM_ANF
    // /** Konstanten 0x0019 RX_BUF_LEN */
    // @ext(0xa1, 0x02, 0x19)
    // model RX_BUF_LEN is Memory<UCH>;

    /** Konstanten 0x001B EEAEPKANF */
    @ext(0xa3, 0x02, 0x1B)
    model EEAEPKANF is Memory<UCH>;

    /** Konstanten 0x001E NTCYCL_0503 */
    @ext(0xa6, 0x02, 0x1E)
    model NTCYCL_0503 is Memory<UCH>;
//    @ext(0x16, 0x12, 0x1E)
//    model NTCYCL_0503 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_0800 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_0800 is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_0800 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_EIG_QQ */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_EIG_QQ is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_EIG_QQ is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_MAX */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_MAX is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_MAX is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_QQ_M10 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_QQ_M10 is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_QQ_M10 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTCYCL_QQ_M2 */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTCYCL_QQ_M2 is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTCYCL_QQ_M2 is Memory<UIN>;

    // Alias of NTCYCL_0503
    // /** Konstanten 0x001E NTC_MIN */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTC_MIN is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTC_MIN is Memory<UIN>;

    /** Konstanten 0x001F TFRS_A__SELF */
    @ext(0xa7, 0x02, 0x1F)
    model TFRS_A__SELF is Memory<UCH>;

    /** Konstanten 0x0020 EM_EE_REDUND__RED_INTBCC */
    @ext(0x98, 0x02, 0x20)
    model EM_EE_REDUND__RED_INTBCC is Memory<UCH>;
//    @ext(0x28, 0x12, 0x20)
//    model EM_EE_REDUND__RED_INTBCC is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_INTBCC
    // /** Konstanten 0x0020 GEC_LDW_RUHE */
    // @ext(0x98, 0x02, 0x20)
    // model GEC_LDW_RUHE is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model GEC_LDW_RUHE is Memory<UIN>;

    // Alias of EM_EE_REDUND__RED_INTBCC
    // /** Konstanten 0x0020 NTC2_BRUCH */
    // @ext(0x98, 0x02, 0x20)
    // model NTC2_BRUCH is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model NTC2_BRUCH is Memory<UIN>;

    /** Konstanten 0x0021 GENPOLY8SIG */
    @ext(0x99, 0x02, 0x21)
    model GENPOLY8SIG is Memory<UCH>;

    /** Konstanten 0x0024 GEC_PUHZ_SW */
    @ext(0x9c, 0x02, 0x24)
    model GEC_PUHZ_SW is Memory<UCH>;
//    @ext(0x2c, 0x12, 0x24)
//    model GEC_PUHZ_SW is Memory<UIN>;

    /** Konstanten 0x0027 L_S5_DAT_CRC */
    @ext(0x9f, 0x02, 0x27)
    model L_S5_DAT_CRC is Memory<UCH>;

    /** Konstanten 0x0028 DL_BOOSTERPLUS */
    @ext(0x90, 0x02, 0x28)
    model DL_BOOSTERPLUS is Memory<UCH>;
//    @ext(0x20, 0x12, 0x28)
//    model DL_BOOSTERPLUS is Memory<UIN>;

    // Alias of DL_BOOSTERPLUS
    // /** Konstanten 0x0028 P_KOTHTWWSOLL_MIN */
    // @ext(0x90, 0x02, 0x28)
    // model P_KOTHTWWSOLL_MIN is Memory<UCH>;
//    // @ext(0x20, 0x12, 0x28)
//    // model P_KOTHTWWSOLL_MIN is Memory<UIN>;

    /** Konstanten 0x0029 MIN_TAUTOSYN */
    @ext(0x91, 0x02, 0x29)
    model MIN_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x002B GEC_N_NOK_LIMIT */
    @ext(0x93, 0x02, 0x2B)
    model GEC_N_NOK_LIMIT is Memory<UCH>;

    // Alias of GEC_N_NOK_LIMIT
    // /** Konstanten 0x002B GEC_N_NOK_VSP */
    // @ext(0x93, 0x02, 0x2B)
    // model GEC_N_NOK_VSP is Memory<UCH>;

    // Alias of GEC_N_NOK_LIMIT
    // /** Konstanten 0x002B GEC_N_NOK_ZUE_N */
    // @ext(0x93, 0x02, 0x2B)
    // model GEC_N_NOK_ZUE_N is Memory<UCH>;

    /** Konstanten 0x002C GEC_N_NOK_RUHE */
    @ext(0x94, 0x02, 0x2C)
    model GEC_N_NOK_RUHE is Memory<UCH>;
//    @ext(0x24, 0x12, 0x2C)
//    model GEC_N_NOK_RUHE is Memory<UIN>;

    /** Konstanten 0x002D GEC_LDW_ARB */
    @ext(0x95, 0x02, 0x2D)
    model GEC_LDW_ARB is Memory<UCH>;

    /** Konstanten 0x002E QAC_MIN */
    @ext(0x96, 0x02, 0x2E)
    model QAC_MIN is Memory<UCH>;
//    @ext(0x26, 0x12, 0x2E)
//    model QAC_MIN is Memory<UIN>;

    // Alias of QAC_MIN
    // /** Konstanten 0x002E WAIT_A_1 */
    // @ext(0x96, 0x02, 0x2E)
    // model WAIT_A_1 is Memory<UCH>;
//    // @ext(0x26, 0x12, 0x2E)
//    // model WAIT_A_1 is Memory<UIN>;

    /** Konstanten 0x002F QAC_SHORT */
    @ext(0x97, 0x02, 0x2F)
    model QAC_SHORT is Memory<UCH>;

    /** Konstanten 0x0030 AD_SCALE_3 */
    @ext(0x88, 0x02, 0x30)
    model AD_SCALE_3 is Memory<UCH>;
//    @ext(0x38, 0x12, 0x30)
//    model AD_SCALE_3 is Memory<UIN>;

    // Alias of AD_SCALE_3
    // /** Konstanten 0x0030 L_FHIST */
    // @ext(0x88, 0x02, 0x30)
    // model L_FHIST is Memory<UCH>;
//    // @ext(0x38, 0x12, 0x30)
//    // model L_FHIST is Memory<UIN>;

    /** Konstanten 0x0032 KPMULFACT */
    @ext(0x8a, 0x02, 0x32)
    model KPMULFACT is Memory<UCH>;
//    @ext(0x3a, 0x12, 0x32)
//    model KPMULFACT is Memory<UIN>;

    // Alias of KPMULFACT
    // /** Konstanten 0x0032 RES_MAX_TIME */
    // @ext(0x8a, 0x02, 0x32)
    // model RES_MAX_TIME is Memory<UCH>;
//    // @ext(0x3a, 0x12, 0x32)
//    // model RES_MAX_TIME is Memory<UIN>;

    /** Konstanten 0x0035 GEC_AIN_REF */
    @ext(0x8d, 0x02, 0x35)
    model GEC_AIN_REF is Memory<UCH>;

    /** Konstanten 0x0036 L_EEAEPKDAT */
    @ext(0x8e, 0x02, 0x36)
    model L_EEAEPKDAT is Memory<UCH>;
//    @ext(0x3e, 0x12, 0x36)
//    model L_EEAEPKDAT is Memory<UIN>;

    // Alias of L_EEAEPKDAT
    // /** Konstanten 0x0036 L_KES_DAT_CRC */
    // @ext(0x8e, 0x02, 0x36)
    // model L_KES_DAT_CRC is Memory<UCH>;
//    // @ext(0x3e, 0x12, 0x36)
//    // model L_KES_DAT_CRC is Memory<UIN>;

    /** Konstanten 0x0038 FCODE_NOT */
    @ext(0x80, 0x02, 0x38)
    model FCODE_NOT is Memory<UCH>;
//    @ext(0x30, 0x12, 0x38)
//    model FCODE_NOT is Memory<UIN>;

    /** Konstanten 0x0039 FCODE_MAX */
    @ext(0x81, 0x02, 0x39)
    model FCODE_MAX is Memory<UCH>;

    /** Konstanten 0x003C NTCYCL_EBUS_SCOM */
    @ext(0x84, 0x02, 0x3C)
    model NTCYCL_EBUS_SCOM is Memory<UCH>;
//    @ext(0x34, 0x12, 0x3C)
//    model NTCYCL_EBUS_SCOM is Memory<UIN>;

    /** Konstanten 0x003D MAX_TAUTOSYN */
    @ext(0x85, 0x02, 0x3D)
    model MAX_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x003F P_KOTHTWWSOLL_MAX */
    @ext(0x87, 0x02, 0x3F)
    model P_KOTHTWWSOLL_MAX is Memory<UCH>;

    /** Konstanten 0x0040 AIN_ERR_BW2 */
    @ext(0xf8, 0x02, 0x40)
    model AIN_ERR_BW2 is Memory<UCH>;
//    @ext(0x48, 0x12, 0x40)
//    model AIN_ERR_BW2 is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 NTC1_NTC2 */
    // @ext(0xf8, 0x02, 0x40)
    // model NTC1_NTC2 is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model NTC1_NTC2 is Memory<UIN>;

    /** Konstanten 0x0041 P_HZTHTWWSOLL_MAX */
    @ext(0xf9, 0x02, 0x41)
    model P_HZTHTWWSOLL_MAX is Memory<UCH>;

    /** Konstanten 0x0044 NIT_SHORT */
    @ext(0xfc, 0x02, 0x44)
    model NIT_SHORT is Memory<UCH>;
//    @ext(0x4c, 0x12, 0x44)
//    model NIT_SHORT is Memory<UIN>;

    /** Konstanten 0x0045 NIT_MIN */
    @ext(0xfd, 0x02, 0x45)
    model NIT_MIN is Memory<UCH>;

    /** Konstanten 0x0046 L_FCODE_ZAEHLER */
    @ext(0xfe, 0x02, 0x46)
    model L_FCODE_ZAEHLER is Memory<UCH>;
//    @ext(0x4e, 0x12, 0x46)
//    model L_FCODE_ZAEHLER is Memory<UIN>;

    /** Konstanten 0x0050 AD_SCALE_4 */
    @ext(0xe8, 0x02, 0x50)
    model AD_SCALE_4 is Memory<UCH>;
//    @ext(0x58, 0x12, 0x50)
//    model AD_SCALE_4 is Memory<UIN>;

    // Alias of AD_SCALE_4
    // /** Konstanten 0x0050 DE_MAX_CNT */
    // @ext(0xe8, 0x02, 0x50)
    // model DE_MAX_CNT is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model DE_MAX_CNT is Memory<UIN>;

    // Alias of AD_SCALE_4
    // /** Konstanten 0x0050 K_ID */
    // @ext(0xe8, 0x02, 0x50)
    // model K_ID is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model K_ID is Memory<UIN>;

    /** Konstanten 0x0051 EEAEPKCRC */
    @ext(0xe9, 0x02, 0x51)
    model EEAEPKCRC is Memory<UCH>;

    /** Konstanten 0x0053 EEAEPKANF2 */
    @ext(0xeb, 0x02, 0x53)
    model EEAEPKANF2 is Memory<UCH>;

    /** Konstanten 0x0059 PH_TST_T1 */
    @ext(0xe1, 0x02, 0x59)
    model PH_TST_T1 is Memory<UCH>;

    /** Konstanten 0x0060 NG_GR_MIN__IMPS */
    @ext(0xd8, 0x02, 0x60)
    model NG_GR_MIN__IMPS is Memory<UCH>;
//    @ext(0x68, 0x12, 0x60)
//    model NG_GR_MIN__IMPS is Memory<UIN>;

    /** Konstanten 0x0064 SCHEDULE_TAKT */
    @ext(0xdc, 0x02, 0x64)
    model SCHEDULE_TAKT is Memory<UCH>;
//    @ext(0x6c, 0x12, 0x64)
//    model SCHEDULE_TAKT is Memory<UIN>;

    /** Konstanten 0x0065 NR_NG_BR_MIN */
    @ext(0xdd, 0x02, 0x65)
    model NR_NG_BR_MIN is Memory<UCH>;

    /** Konstanten 0x0070 AD_SCALE_5 */
    @ext(0xc8, 0x02, 0x70)
    model AD_SCALE_5 is Memory<UCH>;
//    @ext(0x78, 0x12, 0x70)
//    model AD_SCALE_5 is Memory<UIN>;

    // Alias of AD_SCALE_5
    // /** Konstanten 0x0070 KESS_BIT_MASK */
    // @ext(0xc8, 0x02, 0x70)
    // model KESS_BIT_MASK is Memory<UCH>;
//    // @ext(0x78, 0x12, 0x70)
//    // model KESS_BIT_MASK is Memory<UIN>;

    // Alias of AD_SCALE_5
    // /** Konstanten 0x0070 OFFSET_NR_CCINFO_NR */
    // @ext(0xc8, 0x02, 0x70)
    // model OFFSET_NR_CCINFO_NR is Memory<UCH>;
//    // @ext(0x78, 0x12, 0x70)
//    // model OFFSET_NR_CCINFO_NR is Memory<UIN>;

    /** Konstanten 0x0071 OFFSET_NR_CC_RELAESE */
    @ext(0xc9, 0x02, 0x71)
    model OFFSET_NR_CC_RELAESE is Memory<UCH>;

    /** Konstanten 0x0072 OFFSET_NR_FW1 */
    @ext(0xca, 0x02, 0x72)
    model OFFSET_NR_FW1 is Memory<UCH>;
//    @ext(0x7a, 0x12, 0x72)
//    model OFFSET_NR_FW1 is Memory<UIN>;

    /** Konstanten 0x0073 OFFSET_NR_FW2 */
    @ext(0xcb, 0x02, 0x73)
    model OFFSET_NR_FW2 is Memory<UCH>;

    /** Konstanten 0x0074 OFFSET_NR_FW3 */
    @ext(0xcc, 0x02, 0x74)
    model OFFSET_NR_FW3 is Memory<UCH>;
//    @ext(0x7c, 0x12, 0x74)
//    model OFFSET_NR_FW3 is Memory<UIN>;

    /** Konstanten 0x0075 OFFSET_NR_FW4 */
    @ext(0xcd, 0x02, 0x75)
    model OFFSET_NR_FW4 is Memory<UCH>;

    /** Konstanten 0x0076 OFFSET_NR_FW5 */
    @ext(0xce, 0x02, 0x76)
    model OFFSET_NR_FW5 is Memory<UCH>;
//    @ext(0x7e, 0x12, 0x76)
//    model OFFSET_NR_FW5 is Memory<UIN>;

    /** Konstanten 0x0077 OFFSET_NR_CRC */
    @ext(0xcf, 0x02, 0x77)
    model OFFSET_NR_CRC is Memory<UCH>;

    /** Konstanten 0x0078 ANZ_INFONR */
    @ext(0xc0, 0x02, 0x78)
    model ANZ_INFONR is Memory<UCH>;
//    @ext(0x70, 0x12, 0x78)
//    model ANZ_INFONR is Memory<UIN>;

    // Alias of ANZ_INFONR
    // /** Konstanten 0x0078 REF_MIN_OFF */
    // @ext(0xc0, 0x02, 0x78)
    // model REF_MIN_OFF is Memory<UCH>;
//    // @ext(0x70, 0x12, 0x78)
//    // model REF_MIN_OFF is Memory<UIN>;

    /** Konstanten 0x007A ION_GRENZ */
    @ext(0xc2, 0x02, 0x7A)
    model ION_GRENZ is Memory<UCH>;
//    @ext(0x72, 0x12, 0x7A)
//    model ION_GRENZ is Memory<UIN>;

    /** Konstanten 0x007C ADX_TEST */
    @ext(0xc4, 0x02, 0x7C)
    model ADX_TEST is Memory<UCH>;
//    @ext(0x74, 0x12, 0x7C)
//    model ADX_TEST is Memory<UIN>;

    /** Konstanten 0x007D V24_KM_ADR_SCOM_DEFAULT */
    @ext(0xc5, 0x02, 0x7D)
    model V24_KM_ADR_SCOM_DEFAULT is Memory<UCH>;

    /** Konstanten 0x007F MINTVSOLL__SELF */
    @ext(0xc7, 0x02, 0x7F)
    model MINTVSOLL__SELF is Memory<UCH>;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F PNL_HZ__SELF */
    // @ext(0xc7, 0x02, 0x7F)
    // model PNL_HZ__SELF is Memory<UCH>;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F REF_MIN_ON */
    // @ext(0xc7, 0x02, 0x7F)
    // model REF_MIN_ON is Memory<UCH>;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F ROM_PAGES */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGES is Memory<UCH>;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGE_DEFAULT is Memory<UCH>;

    // Alias of MINTVSOLL__SELF
    // /** Konstanten 0x007F TBRMINOFF__SELF */
    // @ext(0xc7, 0x02, 0x7F)
    // model TBRMINOFF__SELF is Memory<UCH>;

    /** Konstanten 0x0080 MINTVSOLL__TRLAUF */
    @ext(0x38, 0x02, 0x80)
    model MINTVSOLL__TRLAUF is Memory<UCH>;
//    @ext(0x88, 0x12, 0x80)
//    model MINTVSOLL__TRLAUF is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 NG_GR_MIN__FABTAST */
    // @ext(0x38, 0x02, 0x80)
    // model NG_GR_MIN__FABTAST is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model NG_GR_MIN__FABTAST is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 PNL_HZ__BETRART */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__BETRART is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__BETRART is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 PNL_HZ__PDL */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__PDL is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 PWM_TEILER */
    // @ext(0x38, 0x02, 0x80)
    // model PWM_TEILER is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PWM_TEILER is Memory<UIN>;

    // Alias of MINTVSOLL__TRLAUF
    // /** Konstanten 0x0080 TBRMINOFF__ERDGAS */
    // @ext(0x38, 0x02, 0x80)
    // model TBRMINOFF__ERDGAS is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model TBRMINOFF__ERDGAS is Memory<UIN>;

    /** Konstanten 0x0089 EEAEPKCRC2 */
    @ext(0x31, 0x02, 0x89)
    model EEAEPKCRC2 is Memory<UCH>;

    /** Konstanten 0x008A EEA_RAM_ANF2 */
    @ext(0x32, 0x02, 0x8A)
    model EEA_RAM_ANF2 is Memory<UCH>;
//    @ext(0x82, 0x12, 0x8A)
//    model EEA_RAM_ANF2 is Memory<UIN>;

    /** Konstanten 0x008C EEA_CONST_ANF2 */
    @ext(0x34, 0x02, 0x8C)
    model EEA_CONST_ANF2 is Memory<UCH>;
//    @ext(0x84, 0x12, 0x8C)
//    model EEA_CONST_ANF2 is Memory<UIN>;

    /** Konstanten 0x0090 AD_SCALE_6 */
    @ext(0x28, 0x02, 0x90)
    model AD_SCALE_6 is Memory<UCH>;
//    @ext(0x98, 0x12, 0x90)
//    model AD_SCALE_6 is Memory<UIN>;

    // Alias of AD_SCALE_6
    // /** Konstanten 0x0090 NTC_ERR_ZEIT */
    // @ext(0x28, 0x02, 0x90)
    // model NTC_ERR_ZEIT is Memory<UCH>;
//    // @ext(0x98, 0x12, 0x90)
//    // model NTC_ERR_ZEIT is Memory<UIN>;

    /** Konstanten 0x00A0 CS_BYTE_WR */
    @ext(0x18, 0x02, 0xA0)
    model CS_BYTE_WR is Memory<UCH>;
//    @ext(0xa8, 0x12, 0xA0)
//    model CS_BYTE_WR is Memory<UIN>;

    // Alias of CS_BYTE_WR
    // /** Konstanten 0x00A0 ENAB_MASK */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK is Memory<UCH>;
//    // @ext(0xa8, 0x12, 0xA0)
//    // model ENAB_MASK is Memory<UIN>;

    // Alias of CS_BYTE_WR
    // /** Konstanten 0x00A0 ENAB_MASK_WD */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK_WD is Memory<UCH>;
//    // @ext(0xa8, 0x12, 0xA0)
//    // model ENAB_MASK_WD is Memory<UIN>;

    /** Konstanten 0x00A1 CS_BYTE_RD */
    @ext(0x19, 0x02, 0xA1)
    model CS_BYTE_RD is Memory<UCH>;

    /** Konstanten 0x00A2 EEA_CONST_CRC2 */
    @ext(0x1a, 0x02, 0xA2)
    model EEA_CONST_CRC2 is Memory<UCH>;
//    @ext(0xaa, 0x12, 0xA2)
//    model EEA_CONST_CRC2 is Memory<UIN>;

    /** Konstanten 0x00A3 INT_EEA_ID_NR_BCC */
    @ext(0x1b, 0x02, 0xA3)
    model INT_EEA_ID_NR_BCC is Memory<UCH>;

    /** Konstanten 0x00A4 INT_EEA_ID_NR_BCC_1 */
    @ext(0x1c, 0x02, 0xA4)
    model INT_EEA_ID_NR_BCC_1 is Memory<UCH>;
//    @ext(0xac, 0x12, 0xA4)
//    model INT_EEA_ID_NR_BCC_1 is Memory<UIN>;

    /** Konstanten 0x00A5 INT_EEA_ID_CRC_BCC */
    @ext(0x1d, 0x02, 0xA5)
    model INT_EEA_ID_CRC_BCC is Memory<UCH>;

    /** Konstanten 0x00A6 INT_EEA_ID_NR_BCC_2 */
    @ext(0x1e, 0x02, 0xA6)
    model INT_EEA_ID_NR_BCC_2 is Memory<UCH>;
//    @ext(0xae, 0x12, 0xA6)
//    model INT_EEA_ID_NR_BCC_2 is Memory<UIN>;

    /** Konstanten 0x00A8 INT_EEA_ID_CRC_BCC_2 */
    @ext(0x10, 0x02, 0xA8)
    model INT_EEA_ID_CRC_BCC_2 is Memory<UCH>;
//    @ext(0xa0, 0x12, 0xA8)
//    model INT_EEA_ID_CRC_BCC_2 is Memory<UIN>;

    // Alias of INT_EEA_ID_CRC_BCC_2
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory<UCH>;
//    // @ext(0xa0, 0x12, 0xA8)
//    // model NCL1HRS is Memory<UIN>;

    /** Konstanten 0x00A9 EEA_ION_KALIB */
    @ext(0x11, 0x02, 0xA9)
    model EEA_ION_KALIB is Memory<UCH>;

    /** Konstanten 0x00AA EEA_ION_KALIB_INV */
    @ext(0x12, 0x02, 0xAA)
    model EEA_ION_KALIB_INV is Memory<UCH>;
//    @ext(0xa2, 0x12, 0xAA)
//    model EEA_ION_KALIB_INV is Memory<UIN>;

    /** Konstanten 0x00AB EEA_ION_KALIB_2 */
    @ext(0x13, 0x02, 0xAB)
    model EEA_ION_KALIB_2 is Memory<UCH>;

    /** Konstanten 0x00B4 C_DECGAP */
    @ext(0x0c, 0x02, 0xB4)
    model C_DECGAP is Memory<UCH>;
//    @ext(0xbc, 0x12, 0xB4)
//    model C_DECGAP is Memory<UIN>;

    // Alias of C_DECGAP
    // /** Konstanten 0x00B4 NCL20SEC */
    // @ext(0x0c, 0x02, 0xB4)
    // model NCL20SEC is Memory<UCH>;
//    // @ext(0xbc, 0x12, 0xB4)
//    // model NCL20SEC is Memory<UIN>;

    /** Konstanten 0x00B7 REF_MAX_ON */
    @ext(0x0f, 0x02, 0xB7)
    model REF_MAX_ON is Memory<UCH>;

    /** Konstanten 0x00C1 REF_MAX_OFF */
    @ext(0x79, 0x02, 0xC1)
    model REF_MAX_OFF is Memory<UCH>;

    /** Konstanten 0x00C8 NCL100MSEC */
    @ext(0x70, 0x02, 0xC8)
    model NCL100MSEC is Memory<UCH>;
//    @ext(0xc0, 0x12, 0xC8)
//    model NCL100MSEC is Memory<UIN>;

    /** Konstanten 0x00D5 AD8_OF_25GRDC */
    @ext(0x6d, 0x02, 0xD5)
    model AD8_OF_25GRDC is Memory<UCH>;

    /** Konstanten 0x00E0 TFRS_A__REST */
    @ext(0x58, 0x02, 0xE0)
    model TFRS_A__REST is Memory<UCH>;
//    @ext(0xe8, 0x12, 0xE0)
//    model TFRS_A__REST is Memory<UIN>;

    /** Konstanten 0x00E1 NTC_TOL_ZEIT */
    @ext(0x59, 0x02, 0xE1)
    model NTC_TOL_ZEIT is Memory<UCH>;

    /** Konstanten 0x00E9 AD_TWWSOLL_MAX */
    @ext(0x51, 0x02, 0xE9)
    model AD_TWWSOLL_MAX is Memory<UCH>;

    /** Konstanten 0x00EB QAC_MAX */
    @ext(0x53, 0x02, 0xEB)
    model QAC_MAX is Memory<UCH>;

    /** Konstanten 0x00F0 HZ_HYS__NEG */
    @ext(0x48, 0x02, 0xF0)
    model HZ_HYS__NEG is Memory<UCH>;
//    @ext(0xf8, 0x12, 0xF0)
//    model HZ_HYS__NEG is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 NG_INCR_DECR__DECR */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_INCR_DECR__DECR is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NG_INCR_DECR__DECR is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 NG_REG_ANPASS__START */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_REG_ANPASS__START is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NG_REG_ANPASS__START is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 PU_TAKT__PULS */
    // @ext(0x48, 0x02, 0xF0)
    // model PU_TAKT__PULS is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model PU_TAKT__PULS is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 P_LPG__BETRIEB */
    // @ext(0x48, 0x02, 0xF0)
    // model P_LPG__BETRIEB is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model P_LPG__BETRIEB is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_IN_1_2__2 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_IN_1_2__2 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_IN_1_2__2 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_IN_3_4__4 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_IN_3_4__4 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_IN_3_4__4 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_PR_1_2__2 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_PR_1_2__2 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_PR_1_2__2 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 SEL_PR_3_4__4 */
    // @ext(0x48, 0x02, 0xF0)
    // model SEL_PR_3_4__4 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model SEL_PR_3_4__4 is Memory<UIN>;

    // Alias of HZ_HYS__NEG
    // /** Konstanten 0x00F0 WW_HYS__NEG */
    // @ext(0x48, 0x02, 0xF0)
    // model WW_HYS__NEG is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model WW_HYS__NEG is Memory<UIN>;

    /** Konstanten 0x00F1 NTC_TA_MAX */
    @ext(0x49, 0x02, 0xF1)
    model NTC_TA_MAX is Memory<UCH>;

    // Alias of NTC_TA_MAX
    // /** Konstanten 0x00F1 QQ_M10 */
    // @ext(0x49, 0x02, 0xF1)
    // model QQ_M10 is Memory<UCH>;

    /** Konstanten 0x00F3 NIT_MAX */
    @ext(0x4b, 0x02, 0xF3)
    model NIT_MAX is Memory<UCH>;

    /** Konstanten 0x00F8 NTC_MAX */
    @ext(0x40, 0x02, 0xF8)
    model NTC_MAX is Memory<UCH>;
//    @ext(0xf0, 0x12, 0xF8)
//    model NTC_MAX is Memory<UIN>;

    // Alias of NTC_MAX
    // /** Konstanten 0x00F8 TTOL__NON_ZERO_CHECK */
    // @ext(0x40, 0x02, 0xF8)
    // model TTOL__NON_ZERO_CHECK is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model TTOL__NON_ZERO_CHECK is Memory<UIN>;

    /** Konstanten 0x00FA EEA_P_CODE */
    @ext(0x42, 0x02, 0xFA)
    model EEA_P_CODE is Memory<UCH>;
//    @ext(0xf2, 0x12, 0xFA)
//    model EEA_P_CODE is Memory<UIN>;

    // Alias of EEA_P_CODE
    // /** Konstanten 0x00FA MX_RES_CYCL */
    // @ext(0x42, 0x02, 0xFA)
    // model MX_RES_CYCL is Memory<UCH>;
//    // @ext(0xf2, 0x12, 0xFA)
//    // model MX_RES_CYCL is Memory<UIN>;

    /** Konstanten 0x00FC HZ_KTND__D */
    @ext(0x44, 0x02, 0xFC)
    model HZ_KTND__D is Memory<UCH>;
//    @ext(0xf4, 0x12, 0xFC)
//    model HZ_KTND__D is Memory<UIN>;

    /** Konstanten 0x00FF ADC_BREAK */
    @ext(0x47, 0x02, 0xFF)
    model ADC_BREAK is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF L_EEPROM */
    // @ext(0x47, 0x02, 0xFF)
    // model L_EEPROM is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF QQ_M25 */
    // @ext(0x47, 0x02, 0xFF)
    // model QQ_M25 is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF XRAM_PAGE_DEFAULT */
    // @ext(0x47, 0x02, 0xFF)
    // model XRAM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0100 EEA_ANF2 */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model EEA_ANF2 is Memory<UCH>;
//    @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    model EEA_ANF2 is Memory<UIN>;

    /** Konstanten 0x0193 EEA_HL_HIADR */
    @ext(0xa7, 0x06, 0x01, 0x02, 0x93)
    model EEA_HL_HIADR is Memory<UCH>;

    /** Konstanten 0x0194 EEA_WRONG_ADR */
    @ext(0xa0, 0x06, 0x01, 0x02, 0x94)
    model EEA_WRONG_ADR is Memory<UCH>;
//    @ext(0x10, 0x06, 0x01, 0x12, 0x94)
//    model EEA_WRONG_ADR is Memory<UIN>;

    /** Konstanten 0x0196 EEA_FCODE_NOT */
    @ext(0xa2, 0x06, 0x01, 0x02, 0x96)
    model EEA_FCODE_NOT is Memory<UCH>;
//    @ext(0x12, 0x06, 0x01, 0x12, 0x96)
//    model EEA_FCODE_NOT is Memory<UIN>;

    /** Konstanten 0x0198 EEA_FC_57 */
    @ext(0xac, 0x06, 0x01, 0x02, 0x98)
    model EEA_FC_57 is Memory<UCH>;
//    @ext(0x1c, 0x06, 0x01, 0x12, 0x98)
//    model EEA_FC_57 is Memory<UIN>;

    /** Konstanten 0x019A EEA_FC_55 */
    @ext(0xae, 0x06, 0x01, 0x02, 0x9A)
    model EEA_FC_55 is Memory<UCH>;
//    @ext(0x1e, 0x06, 0x01, 0x12, 0x9A)
//    model EEA_FC_55 is Memory<UIN>;

    /** Konstanten 0x019C EEA_FC_53 */
    @ext(0xa8, 0x06, 0x01, 0x02, 0x9C)
    model EEA_FC_53 is Memory<UCH>;
//    @ext(0x18, 0x06, 0x01, 0x12, 0x9C)
//    model EEA_FC_53 is Memory<UIN>;

    /** Konstanten 0x019E EEA_FC_52 */
    @ext(0xaa, 0x06, 0x01, 0x02, 0x9E)
    model EEA_FC_52 is Memory<UCH>;
//    @ext(0x1a, 0x06, 0x01, 0x12, 0x9E)
//    model EEA_FC_52 is Memory<UIN>;

    /** Konstanten 0x01A0 EEA_FC_51 */
    @ext(0x94, 0x06, 0x01, 0x02, 0xA0)
    model EEA_FC_51 is Memory<UCH>;
//    @ext(0x24, 0x06, 0x01, 0x12, 0xA0)
//    model EEA_FC_51 is Memory<UIN>;

    /** Konstanten 0x01A2 EEA_FC_48 */
    @ext(0x96, 0x06, 0x01, 0x02, 0xA2)
    model EEA_FC_48 is Memory<UCH>;
//    @ext(0x26, 0x06, 0x01, 0x12, 0xA2)
//    model EEA_FC_48 is Memory<UIN>;

    /** Konstanten 0x01A4 EEA_FC_47 */
    @ext(0x90, 0x06, 0x01, 0x02, 0xA4)
    model EEA_FC_47 is Memory<UCH>;
//    @ext(0x20, 0x06, 0x01, 0x12, 0xA4)
//    model EEA_FC_47 is Memory<UIN>;

    /** Konstanten 0x01A6 EEA_FC_46 */
    @ext(0x92, 0x06, 0x01, 0x02, 0xA6)
    model EEA_FC_46 is Memory<UCH>;
//    @ext(0x22, 0x06, 0x01, 0x12, 0xA6)
//    model EEA_FC_46 is Memory<UIN>;

    /** Konstanten 0x01A8 EEA_FC_45 */
    @ext(0x9c, 0x06, 0x01, 0x02, 0xA8)
    model EEA_FC_45 is Memory<UCH>;
//    @ext(0x2c, 0x06, 0x01, 0x12, 0xA8)
//    model EEA_FC_45 is Memory<UIN>;

    /** Konstanten 0x01AA EEA_FC_44 */
    @ext(0x9e, 0x06, 0x01, 0x02, 0xAA)
    model EEA_FC_44 is Memory<UCH>;
//    @ext(0x2e, 0x06, 0x01, 0x12, 0xAA)
//    model EEA_FC_44 is Memory<UIN>;

    /** Konstanten 0x01AC EEA_FC_43 */
    @ext(0x98, 0x06, 0x01, 0x02, 0xAC)
    model EEA_FC_43 is Memory<UCH>;
//    @ext(0x28, 0x06, 0x01, 0x12, 0xAC)
//    model EEA_FC_43 is Memory<UIN>;

    /** Konstanten 0x01AE EEA_FC_41 */
    @ext(0x9a, 0x06, 0x01, 0x02, 0xAE)
    model EEA_FC_41 is Memory<UCH>;
//    @ext(0x2a, 0x06, 0x01, 0x12, 0xAE)
//    model EEA_FC_41 is Memory<UIN>;

    /** Konstanten 0x01B0 EEA_FC_39 */
    @ext(0x84, 0x06, 0x01, 0x02, 0xB0)
    model EEA_FC_39 is Memory<UCH>;
//    @ext(0x34, 0x06, 0x01, 0x12, 0xB0)
//    model EEA_FC_39 is Memory<UIN>;

    /** Konstanten 0x01B2 EEA_FC_38 */
    @ext(0x86, 0x06, 0x01, 0x02, 0xB2)
    model EEA_FC_38 is Memory<UCH>;
//    @ext(0x36, 0x06, 0x01, 0x12, 0xB2)
//    model EEA_FC_38 is Memory<UIN>;

    /** Konstanten 0x01B4 EEA_FC_37 */
    @ext(0x80, 0x06, 0x01, 0x02, 0xB4)
    model EEA_FC_37 is Memory<UCH>;
//    @ext(0x30, 0x06, 0x01, 0x12, 0xB4)
//    model EEA_FC_37 is Memory<UIN>;

    /** Konstanten 0x01B6 EEA_FC_36 */
    @ext(0x82, 0x06, 0x01, 0x02, 0xB6)
    model EEA_FC_36 is Memory<UCH>;
//    @ext(0x32, 0x06, 0x01, 0x12, 0xB6)
//    model EEA_FC_36 is Memory<UIN>;

    /** Konstanten 0x01B8 EEA_FC_35 */
    @ext(0x8c, 0x06, 0x01, 0x02, 0xB8)
    model EEA_FC_35 is Memory<UCH>;
//    @ext(0x3c, 0x06, 0x01, 0x12, 0xB8)
//    model EEA_FC_35 is Memory<UIN>;

    /** Konstanten 0x01BA EEA_FC_34 */
    @ext(0x8e, 0x06, 0x01, 0x02, 0xBA)
    model EEA_FC_34 is Memory<UCH>;
//    @ext(0x3e, 0x06, 0x01, 0x12, 0xBA)
//    model EEA_FC_34 is Memory<UIN>;

    /** Konstanten 0x01BC EEA_FC_33 */
    @ext(0x88, 0x06, 0x01, 0x02, 0xBC)
    model EEA_FC_33 is Memory<UCH>;
//    @ext(0x38, 0x06, 0x01, 0x12, 0xBC)
//    model EEA_FC_33 is Memory<UIN>;

    /** Konstanten 0x01BE EEA_FC_32 */
    @ext(0x8a, 0x06, 0x01, 0x02, 0xBE)
    model EEA_FC_32 is Memory<UCH>;
//    @ext(0x3a, 0x06, 0x01, 0x12, 0xBE)
//    model EEA_FC_32 is Memory<UIN>;

    /** Konstanten 0x01C0 EEA_FC_31 */
    @ext(0xf4, 0x06, 0x01, 0x02, 0xC0)
    model EEA_FC_31 is Memory<UCH>;
//    @ext(0x44, 0x06, 0x01, 0x12, 0xC0)
//    model EEA_FC_31 is Memory<UIN>;

    /** Konstanten 0x01C2 EEA_FC_30 */
    @ext(0xf6, 0x06, 0x01, 0x02, 0xC2)
    model EEA_FC_30 is Memory<UCH>;
//    @ext(0x46, 0x06, 0x01, 0x12, 0xC2)
//    model EEA_FC_30 is Memory<UIN>;

    /** Konstanten 0x01C4 EEA_FC_24 */
    @ext(0xf0, 0x06, 0x01, 0x02, 0xC4)
    model EEA_FC_24 is Memory<UCH>;
//    @ext(0x40, 0x06, 0x01, 0x12, 0xC4)
//    model EEA_FC_24 is Memory<UIN>;

    /** Konstanten 0x01C6 EEA_FC_23 */
    @ext(0xf2, 0x06, 0x01, 0x02, 0xC6)
    model EEA_FC_23 is Memory<UCH>;
//    @ext(0x42, 0x06, 0x01, 0x12, 0xC6)
//    model EEA_FC_23 is Memory<UIN>;

    /** Konstanten 0x01C8 EEA_FC_22 */
    @ext(0xfc, 0x06, 0x01, 0x02, 0xC8)
    model EEA_FC_22 is Memory<UCH>;
//    @ext(0x4c, 0x06, 0x01, 0x12, 0xC8)
//    model EEA_FC_22 is Memory<UIN>;

    /** Konstanten 0x01CA EEA_FC_21 */
    @ext(0xfe, 0x06, 0x01, 0x02, 0xCA)
    model EEA_FC_21 is Memory<UCH>;
//    @ext(0x4e, 0x06, 0x01, 0x12, 0xCA)
//    model EEA_FC_21 is Memory<UIN>;

    /** Konstanten 0x01CC EEA_FC_18 */
    @ext(0xf8, 0x06, 0x01, 0x02, 0xCC)
    model EEA_FC_18 is Memory<UCH>;
//    @ext(0x48, 0x06, 0x01, 0x12, 0xCC)
//    model EEA_FC_18 is Memory<UIN>;

    /** Konstanten 0x01CE EEA_FC_16 */
    @ext(0xfa, 0x06, 0x01, 0x02, 0xCE)
    model EEA_FC_16 is Memory<UCH>;
//    @ext(0x4a, 0x06, 0x01, 0x12, 0xCE)
//    model EEA_FC_16 is Memory<UIN>;

    /** Konstanten 0x01D0 EEA_FC_15 */
    @ext(0xe4, 0x06, 0x01, 0x02, 0xD0)
    model EEA_FC_15 is Memory<UCH>;
//    @ext(0x54, 0x06, 0x01, 0x12, 0xD0)
//    model EEA_FC_15 is Memory<UIN>;

    /** Konstanten 0x01D2 EEA_FC_14 */
    @ext(0xe6, 0x06, 0x01, 0x02, 0xD2)
    model EEA_FC_14 is Memory<UCH>;
//    @ext(0x56, 0x06, 0x01, 0x12, 0xD2)
//    model EEA_FC_14 is Memory<UIN>;

    /** Konstanten 0x01D4 EEA_FC_12 */
    @ext(0xe0, 0x06, 0x01, 0x02, 0xD4)
    model EEA_FC_12 is Memory<UCH>;
//    @ext(0x50, 0x06, 0x01, 0x12, 0xD4)
//    model EEA_FC_12 is Memory<UIN>;

    /** Konstanten 0x01D6 EEA_FC_11 */
    @ext(0xe2, 0x06, 0x01, 0x02, 0xD6)
    model EEA_FC_11 is Memory<UCH>;
//    @ext(0x52, 0x06, 0x01, 0x12, 0xD6)
//    model EEA_FC_11 is Memory<UIN>;

    /** Konstanten 0x01D8 EEA_HBRONTAG */
    @ext(0xec, 0x06, 0x01, 0x02, 0xD8)
    model EEA_HBRONTAG is Memory<UCH>;
//    @ext(0x5c, 0x06, 0x01, 0x12, 0xD8)
//    model EEA_HBRONTAG is Memory<UIN>;

    /** Konstanten 0x01D9 EEA_NZUENDTAG */
    @ext(0xed, 0x06, 0x01, 0x02, 0xD9)
    model EEA_NZUENDTAG is Memory<UCH>;

    /** Konstanten 0x01DA EEA_N_PON */
    @ext(0xee, 0x06, 0x01, 0x02, 0xDA)
    model EEA_N_PON is Memory<UCH>;
//    @ext(0x5e, 0x06, 0x01, 0x12, 0xDA)
//    model EEA_N_PON is Memory<UIN>;

    /** Konstanten 0x01DD EEA_N_KON */
    @ext(0xe9, 0x06, 0x01, 0x02, 0xDD)
    model EEA_N_KON is Memory<UCH>;

    /** Konstanten 0x01E0 EEA_RES_CNT */
    @ext(0xd4, 0x06, 0x01, 0x02, 0xE0)
    model EEA_RES_CNT is Memory<UCH>;
//    @ext(0x64, 0x06, 0x01, 0x12, 0xE0)
//    model EEA_RES_CNT is Memory<UIN>;

    /** Konstanten 0x01E3 EEA_SHUT_OFF */
    @ext(0xd7, 0x06, 0x01, 0x02, 0xE3)
    model EEA_SHUT_OFF is Memory<UCH>;

    /** Konstanten 0x01E6 EEA_H_PON */
    @ext(0xd2, 0x06, 0x01, 0x02, 0xE6)
    model EEA_H_PON is Memory<UCH>;
//    @ext(0x62, 0x06, 0x01, 0x12, 0xE6)
//    model EEA_H_PON is Memory<UIN>;

    /** Konstanten 0x01E9 EEA_H_BON */
    @ext(0xdd, 0x06, 0x01, 0x02, 0xE9)
    model EEA_H_BON is Memory<UCH>;

    /** Konstanten 0x01EB EEA_N_ZUE */
    @ext(0xdf, 0x06, 0x01, 0x02, 0xEB)
    model EEA_N_ZUE is Memory<UCH>;

    /** Konstanten 0x01EE EEA_BAUSTAND */
    @ext(0xda, 0x06, 0x01, 0x02, 0xEE)
    model EEA_BAUSTAND is Memory<UCH>;
//    @ext(0x6a, 0x06, 0x01, 0x12, 0xEE)
//    model EEA_BAUSTAND is Memory<UIN>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x01EE EEA_PRUEF_LOW */
    // @ext(0xda, 0x06, 0x01, 0x02, 0xEE)
    // model EEA_PRUEF_LOW is Memory<UCH>;
//    // @ext(0x6a, 0x06, 0x01, 0x12, 0xEE)
//    // model EEA_PRUEF_LOW is Memory<UIN>;

    /** Konstanten 0x01F0 EEA_KUNDE */
    @ext(0xc4, 0x06, 0x01, 0x02, 0xF0)
    model EEA_KUNDE is Memory<UCH>;
//    @ext(0x74, 0x06, 0x01, 0x12, 0xF0)
//    model EEA_KUNDE is Memory<UIN>;

    /** Konstanten 0x01F1 EEA_VARIANTE */
    @ext(0xc5, 0x06, 0x01, 0x02, 0xF1)
    model EEA_VARIANTE is Memory<UCH>;

    /** Konstanten 0x01F3 EEA_SERIAL_NO */
    @ext(0xc7, 0x06, 0x01, 0x02, 0xF3)
    model EEA_SERIAL_NO is Memory<UCH>;

    /** Konstanten 0x01F4 PWM_RANGE */
    @ext(0xc0, 0x06, 0x01, 0x02, 0xF4)
    model PWM_RANGE is Memory<UCH>;
//    @ext(0x70, 0x06, 0x01, 0x12, 0xF4)
//    model PWM_RANGE is Memory<UIN>;

    // Alias of PWM_RANGE
    // /** Konstanten 0x01F4 SYS_TAKT */
    // @ext(0xc0, 0x06, 0x01, 0x02, 0xF4)
    // model SYS_TAKT is Memory<UCH>;
//    // @ext(0x70, 0x06, 0x01, 0x12, 0xF4)
//    // model SYS_TAKT is Memory<UIN>;

    /** Konstanten 0x01F6 EEA_PRUEF_CRC */
    @ext(0xc2, 0x06, 0x01, 0x02, 0xF6)
    model EEA_PRUEF_CRC is Memory<UCH>;
//    @ext(0x72, 0x06, 0x01, 0x12, 0xF6)
//    model EEA_PRUEF_CRC is Memory<UIN>;

    /** Konstanten 0x0200 EEA_F_HIST_PTR_LOW */
    @ext(0xac, 0x06, 0x02, 0x02, 0x00)
    model EEA_F_HIST_PTR_LOW is Memory<UCH>;
//    @ext(0x1c, 0x06, 0x02, 0x12, 0x00)
//    model EEA_F_HIST_PTR_LOW is Memory<UIN>;

    /** Konstanten 0x0201 EEA_F_HIST_PTR_HIGH */
    @ext(0xad, 0x06, 0x02, 0x02, 0x01)
    model EEA_F_HIST_PTR_HIGH is Memory<UCH>;

    /** Konstanten 0x0202 EEA_F_HIST_ANF */
    @ext(0xae, 0x06, 0x02, 0x02, 0x02)
    model EEA_F_HIST_ANF is Memory<UCH>;
//    @ext(0x1e, 0x06, 0x02, 0x12, 0x02)
//    model EEA_F_HIST_ANF is Memory<UIN>;

    /** Konstanten 0x0231 EEA_F_HIST_END */
    @ext(0x9d, 0x06, 0x02, 0x02, 0x31)
    model EEA_F_HIST_END is Memory<UCH>;

    /** Konstanten 0x0300 EEA_TVSOLL_EPM */
    @ext(0x10, 0x06, 0x03, 0x02, 0x00)
    model EEA_TVSOLL_EPM is Memory<UCH>;
//    @ext(0xa0, 0x06, 0x03, 0x12, 0x00)
//    model EEA_TVSOLL_EPM is Memory<UIN>;

    /** Konstanten 0x0301 EEA_TVABSENK */
    @ext(0x11, 0x06, 0x03, 0x02, 0x01)
    model EEA_TVABSENK is Memory<UCH>;

    /** Konstanten 0x0302 EEA_TWWSOLL_EPM */
    @ext(0x12, 0x06, 0x03, 0x02, 0x02)
    model EEA_TWWSOLL_EPM is Memory<UCH>;
//    @ext(0xa2, 0x06, 0x03, 0x12, 0x02)
//    model EEA_TWWSOLL_EPM is Memory<UIN>;

    /** Konstanten 0x0303 EEA_WISO_EPM */
    @ext(0x13, 0x06, 0x03, 0x02, 0x03)
    model EEA_WISO_EPM is Memory<UCH>;

    /** Konstanten 0x0304 EEA_MAINPARACRC */
    @ext(0x14, 0x06, 0x03, 0x02, 0x04)
    model EEA_MAINPARACRC is Memory<UCH>;
//    @ext(0xa4, 0x06, 0x03, 0x12, 0x04)
//    model EEA_MAINPARACRC is Memory<UIN>;

}
