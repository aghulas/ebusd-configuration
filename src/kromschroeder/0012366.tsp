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

    /** RAM 0x0001 IDLE_R1 */
    @ext(0x5d, 0x01, 0x01)
    model IDLE_R1 is Memory<UCH>;

    /** RAM 0x0002 IDLE_R2 */
    @ext(0x5e, 0x01, 0x02)
    model IDLE_R2 is Memory<UCH>;

    /** RAM 0x0003 IDLE_R3 */
    @ext(0x5f, 0x01, 0x03)
    model IDLE_R3 is Memory<UCH>;

    /** RAM 0x0004 Divi */
    @ext(0x58, 0x01, 0x04)
    model Divi is Memory<UCH>;

    // Alias of Divi
    // /** RAM 0x0004 IDLE_R4 */
    // @ext(0x58, 0x01, 0x04)
    // model IDLE_R4 is Memory<UCH>;

    /** RAM 0x0005 IDLE_R5 */
    @ext(0x59, 0x01, 0x05)
    model IDLE_R5 is Memory<UCH>;

    /** RAM 0x0006 IDLE_R6 */
    @ext(0x5a, 0x01, 0x06)
    model IDLE_R6 is Memory<UCH>;

    // Alias of IDLE_R6
    // /** RAM 0x0006 Value */
    // @ext(0x5a, 0x01, 0x06)
    // model Value is Memory<UCH>;

    // Alias of IDLE_R6
    // /** RAM 0x0006 hys */
    // @ext(0x5a, 0x01, 0x06)
    // model hys is Memory<UCH>;

    // Alias of IDLE_R6
    // /** RAM 0x0006 timeout */
    // @ext(0x5a, 0x01, 0x06)
    // model timeout is Memory<UCH>;

    /** RAM 0x0007 Bezeichnung_INr */
    @ext(0x5b, 0x01, 0x07)
    model Bezeichnung_INr is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 Bezeichnung_PNr */
    // @ext(0x5b, 0x01, 0x07)
    // model Bezeichnung_PNr is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 Drehzahl */
    // @ext(0x5b, 0x01, 0x07)
    // model Drehzahl is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 IDLE_R7 */
    // @ext(0x5b, 0x01, 0x07)
    // model IDLE_R7 is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 Multi */
    // @ext(0x5b, 0x01, 0x07)
    // model Multi is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 Pt_History */
    // @ext(0x5b, 0x01, 0x07)
    // model Pt_History is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aMenu_Pt */
    // @ext(0x5b, 0x01, 0x07)
    // model aMenu_Pt is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aMenupunkt */
    // @ext(0x5b, 0x01, 0x07)
    // model aMenupunkt is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aPara */
    // @ext(0x5b, 0x01, 0x07)
    // model aPara is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aParameterwert */
    // @ext(0x5b, 0x01, 0x07)
    // model aParameterwert is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aVal */
    // @ext(0x5b, 0x01, 0x07)
    // model aVal is Memory<UCH>;

    /** RAM 0x0008 USER_R0 */
    @ext(0x54, 0x01, 0x08)
    model USER_R0 is Memory<UCH>;

    /** RAM 0x0009 USER_R1 */
    @ext(0x55, 0x01, 0x09)
    model USER_R1 is Memory<UCH>;

    /** RAM 0x000A USER_R2 */
    @ext(0x56, 0x01, 0x0A)
    model USER_R2 is Memory<UCH>;

    /** RAM 0x000B USER_R3 */
    @ext(0x57, 0x01, 0x0B)
    model USER_R3 is Memory<UCH>;

    /** RAM 0x000C USER_R4 */
    @ext(0x50, 0x01, 0x0C)
    model USER_R4 is Memory<UCH>;

    /** RAM 0x000D USER_R5 */
    @ext(0x51, 0x01, 0x0D)
    model USER_R5 is Memory<UCH>;

    /** RAM 0x000E USER_R6 */
    @ext(0x52, 0x01, 0x0E)
    model USER_R6 is Memory<UCH>;

    /** RAM 0x000F USER_R7 */
    @ext(0x53, 0x01, 0x0F)
    model USER_R7 is Memory<UCH>;

    /** RAM 0x0010 RB2_R0 */
    @ext(0x4c, 0x01, 0x10)
    model RB2_R0 is Memory<UCH>;

    /** RAM 0x0011 RB2_R1 */
    @ext(0x4d, 0x01, 0x11)
    model RB2_R1 is Memory<UCH>;

    /** RAM 0x0012 RB2_R2 */
    @ext(0x4e, 0x01, 0x12)
    model RB2_R2 is Memory<UCH>;

    /** RAM 0x0013 RB2_R3 */
    @ext(0x4f, 0x01, 0x13)
    model RB2_R3 is Memory<UCH>;

    /** RAM 0x0014 RB2_R4 */
    @ext(0x48, 0x01, 0x14)
    model RB2_R4 is Memory<UCH>;

    /** RAM 0x0015 RB2_R5 */
    @ext(0x49, 0x01, 0x15)
    model RB2_R5 is Memory<UCH>;

    /** RAM 0x0016 RB2_R6 */
    @ext(0x4a, 0x01, 0x16)
    model RB2_R6 is Memory<UCH>;

    /** RAM 0x0017 RB2_R7 */
    @ext(0x4b, 0x01, 0x17)
    model RB2_R7 is Memory<UCH>;

    /** RAM 0x0018 TIRP_R0 */
    @ext(0x44, 0x01, 0x18)
    model TIRP_R0 is Memory<UCH>;

    /** RAM 0x0019 TIRP_R1 */
    @ext(0x45, 0x01, 0x19)
    model TIRP_R1 is Memory<UCH>;

    /** RAM 0x001A TIRP_R2 */
    @ext(0x46, 0x01, 0x1A)
    model TIRP_R2 is Memory<UCH>;

    /** RAM 0x001B TIRP_R3 */
    @ext(0x47, 0x01, 0x1B)
    model TIRP_R3 is Memory<UCH>;

    /** RAM 0x001C REGIONHIGH */
    @ext(0x40, 0x01, 0x1C)
    model REGIONHIGH is Memory<UCH>;

    // Alias of REGIONHIGH
    // /** RAM 0x001C TIRP_R4 */
    // @ext(0x40, 0x01, 0x1C)
    // model TIRP_R4 is Memory<UCH>;

    /** RAM 0x001D REGIONLOW */
    @ext(0x41, 0x01, 0x1D)
    model REGIONLOW is Memory<UCH>;

    // Alias of REGIONLOW
    // /** RAM 0x001D TIRP_R5 */
    // @ext(0x41, 0x01, 0x1D)
    // model TIRP_R5 is Memory<UCH>;

    /** RAM 0x001E TIRP_R6 */
    @ext(0x42, 0x01, 0x1E)
    model TIRP_R6 is Memory<UCH>;

    /** RAM 0x001F TIRP_R7 */
    @ext(0x43, 0x01, 0x1F)
    model TIRP_R7 is Memory<UCH>;

    @ext(0x7c, 0x01, 0x20)
    /** RAM 0x0020 D20 */
    @inherit(memr, memw)
    model D20 {
        B_TIRP_WD: BI7,
        TST_RES_B_WD: BI6,
        TASK_1_TFLAG: BI5,
        FS_TASK_RDY: BI4,
        BXCHG: BI3,
        SYS_EVEN_TAKT: BI2,
        ESTANDBY: BI1,
        FREIES_BIT1: BI0
    }

    @ext(0x7d, 0x01, 0x21)
    /** RAM 0x0021 D21 */
    @inherit(memr, memw)
    model D21 {
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
    /** RAM 0x0022 D22 */
    @inherit(memr, memw)
    model D22 {
        FREIES_BIT2: BI7,
        ThFrS_WW: BI6,
        ThFrS_HZ: BI5,
        FrS_Anlage: BI4,
        AufHZ_dfluss: BI3,
        HZ_frei: BI2,
        PuFrSanf: BI1,
        BBCC: BI0
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
        CM_S5_CRC: BI1,
        CM_BAD_CNT: BI0
    }

    @ext(0x79, 0x01, 0x25)
    /** RAM 0x0025 D25 */
    @inherit(memr, memw)
    model D25 {
        RX_XRAM_BUSY: BI5,
        BlinkToggle: BI4,
        BIORANGEERR: BI3,
        BCNTIOCALIB_N_ZUE: BI2,
        QQ_FLAG: BI1,
        TX_RETRY_FLAG: BI0
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
        REF_OK: BI7,
        STBA: BI6,
        STB: BI5,
        DREHZ_OK: BI4,
        LDW: BI2,
        EH2: BI1,
        WW_STOP: BI1,
        EH1: BI0
    }

    @ext(0x74, 0x01, 0x28)
    /** RAM 0x0028 EB_0001 */
    @inherit(memr, memw)
    model EB_0001 {
        VA_ANF: BI7,
        MFA_ANF: BI6,
        TFE: BI5,
        PUHZANF: BI4,
        PUWWANF: BI3,
        E_S5_RESET: BI1,
        E_EPB_INCON: BI0
    }

    @ext(0x75, 0x01, 0x29)
    /** RAM 0x0029 T_0108 */
    @inherit(memr, memw)
    model T_0108 {
        M_LO_ION: BI7,
        TFLVERZZ: BI6,
        TNACHFACK: BI5,
        TNBL: BI4,
        TFLASTAB: BI3,
        TSZA: BI2,
        TVSZ: BI1,
        TIMEOUT: BI0
    }

    /** RAM 0x002A T_CALT_0108 */
    @ext(0x76, 0x01, 0x2A)
    model T_CALT_0108 is Memory<UCH>;

    @ext(0x77, 0x01, 0x2B)
    /** RAM 0x002B AB_0000 */
    @inherit(memr, memw)
    model AB_0000 {
        PUWW: BI7,
        PUHZ: BI6,
        GEBL: BI5,
        AFL_230V: BI4,
        MFA: BI2
    }

    @ext(0x70, 0x01, 0x2C)
    /** RAM 0x002C MB_0000 */
    @inherit(memr, memw)
    model MB_0000 {
        SNACHFACK: BI7,
        SREGFREI: BI6,
        SSZA: BI5,
        SZUEND_N: BI4,
        SVORSPUEL: BI3,
        SARBLDW: BI2,
        SRUHELDW: BI1,
        SSTANDBY: BI0
    }

    @ext(0x71, 0x01, 0x2D)
    /** RAM 0x002D MB_0001 */
    @inherit(memr, memw)
    model MB_0001 {
        LO_KFLB: BI7,
        MFLINSZA: BI6,
        DUMMY: BI5,
        MTHGDWSTB: BI4,
        MFE: BI3,
        MV1_LAST: BI2,
        SFAULT: BI1,
        SNBL: BI0
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
        OPT_BWZ: BI6,
        OPT_EXTZUEUVW: BI5,
        OPT_FREI: BI4,
        OPT_BCC: BI3,
        OPT_2ND_TVIST: BI2,
        OPTRCON: BI1,
        OPT_FREI_2: BI0
    }

    /** RAM 0x0030 TCVSP */
    @ext(0x6c, 0x01, 0x30)
    model TCVSP is Memory<UCH>;

    /** RAM 0x0031 TCSZA */
    @ext(0x6d, 0x01, 0x31)
    model TCSZA is Memory<UCH>;

    /** RAM 0x0032 NG_VSP */
    @ext(0x6e, 0x01, 0x32)
    model NG_VSP is Memory<UCH>;

    /** RAM 0x0033 NG_NSP */
    @ext(0x6f, 0x01, 0x33)
    model NG_NSP is Memory<UCH>;

    /** RAM 0x0034 NG_GR_MAX */
    @ext(0x68, 0x01, 0x34)
    model NG_GR_MAX is Memory<UCH>;

    /** RAM 0x0035 EPIONSOLLSTARTGRAD */
    @ext(0x69, 0x01, 0x35)
    model EPIONSOLLSTARTGRAD is Memory<UCH>;

    /** RAM 0x0036 MXSTW_K */
    @ext(0x6a, 0x01, 0x36)
    model MXSTW_K is Memory<UCH>;

    /** RAM 0x0037 EPIONSOLLSTARTDELTA */
    @ext(0x6b, 0x01, 0x37)
    model EPIONSOLLSTARTDELTA is Memory<UCH>;

    /** RAM 0x0038 EPYGPVOFFS */
    @ext(0x64, 0x01, 0x38)
    model EPYGPVOFFS is Memory<UCH>;

    /** RAM 0x0039 EPYGPVLIN */
    @ext(0x65, 0x01, 0x39)
    model EPYGPVLIN is Memory<UCH>;

    /** RAM 0x003A EPYGPVQUAD */
    @ext(0x66, 0x01, 0x3A)
    model EPYGPVQUAD is Memory<UCH>;

    /** RAM 0x003B NG_KP */
    @ext(0x67, 0x01, 0x3B)
    model NG_KP is Memory<UCH>;

    /** RAM 0x003C NG_KTN */
    @ext(0x60, 0x01, 0x3C)
    model NG_KTN is Memory<UCH>;

    /** RAM 0x003D NG_REG_ANPASS */
    @ext(0x61, 0x01, 0x3D)
    model NG_REG_ANPASS is Memory<UCH>;

    /** RAM 0x003E ION_KP */
    @ext(0x62, 0x01, 0x3E)
    model ION_KP is Memory<UCH>;

    /** RAM 0x003F ION_KTN */
    @ext(0x63, 0x01, 0x3F)
    model ION_KTN is Memory<UCH>;

    /** RAM 0x0040 EPYGPV_TOL */
    @ext(0x1c, 0x01, 0x40)
    model EPYGPV_TOL is Memory<UCH>;

    /** RAM 0x0041 NG_BR_MIN */
    @ext(0x1d, 0x01, 0x41)
    model NG_BR_MIN is Memory<UCH>;

    /** RAM 0x0042 EE_CONST_CRC */
    @ext(0x1e, 0x01, 0x42)
    model EE_CONST_CRC is Memory<UCH>;

    /** RAM 0x0043 T_CNT_0001 */
    @ext(0x1f, 0x01, 0x43)
    model T_CNT_0001 is Memory<UCH>;

    /** RAM 0x0044 T_CNT_0002 */
    @ext(0x18, 0x01, 0x44)
    model T_CNT_0002 is Memory<UCH>;

    /** RAM 0x0045 T_CNT_0003 */
    @ext(0x19, 0x01, 0x45)
    model T_CNT_0003 is Memory<UCH>;

    /** RAM 0x0046 T_CNT_0004 */
    @ext(0x1a, 0x01, 0x46)
    model T_CNT_0004 is Memory<UCH>;

    /** RAM 0x0047 T_CNT_0005 */
    @ext(0x1b, 0x01, 0x47)
    model T_CNT_0005 is Memory<UCH>;

    /** RAM 0x0048 T_CNT_0006 */
    @ext(0x14, 0x01, 0x48)
    model T_CNT_0006 is Memory<UCH>;

    /** RAM 0x0049 T_CNT_0007 */
    @ext(0x15, 0x01, 0x49)
    model T_CNT_0007 is Memory<UCH>;

    /** RAM 0x004A T_CNT_0008 */
    @ext(0x16, 0x01, 0x4A)
    model T_CNT_0008 is Memory<UCH>;

    /** RAM 0x004B S5_DAT_CRC */
    @ext(0x17, 0x01, 0x4B)
    model S5_DAT_CRC is Memory<UCH>;

    /** RAM 0x004C MB_2_ALT */
    @ext(0x10, 0x01, 0x4C)
    model MB_2_ALT is Memory<UCH>;

    /** RAM 0x004D BE1_50HZ_CNT */
    @ext(0x11, 0x01, 0x4D)
    model BE1_50HZ_CNT is Memory<UCH>;

    /** RAM 0x004E BE2_50HZ_CNT */
    @ext(0x12, 0x01, 0x4E)
    model BE2_50HZ_CNT is Memory<UCH>;

    /** RAM 0x004F BE3_50HZ_CNT */
    @ext(0x13, 0x01, 0x4F)
    model BE3_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0050 BE4_50HZ_CNT */
    @ext(0x0c, 0x01, 0x50)
    model BE4_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0051 NGIST_CNT */
    @ext(0x0d, 0x01, 0x51)
    model NGIST_CNT is Memory<UCH>;

    /** RAM 0x0052 RES_CYCL_CNT */
    @ext(0x0e, 0x01, 0x52)
    model RES_CYCL_CNT is Memory<UCH>;

    /** RAM 0x0053 RES_CNT */
    @ext(0x0f, 0x01, 0x53)
    model RES_CNT is Memory<UCH>;

    /** RAM 0x0054 RES_CNT_INV */
    @ext(0x08, 0x01, 0x54)
    model RES_CNT_INV is Memory<UCH>;

    /** RAM 0x0055 ICL100MSEC */
    @ext(0x09, 0x01, 0x55)
    model ICL100MSEC is Memory<UCH>;

    /** RAM 0x0056 ICL20SEC */
    @ext(0x0a, 0x01, 0x56)
    model ICL20SEC is Memory<UCH>;

    /** RAM 0x0057 ICL1HRS */
    @ext(0x0b, 0x01, 0x57)
    model ICL1HRS is Memory<UCH>;

    /** RAM 0x0058 KEY_ACT */
    @ext(0x04, 0x01, 0x58)
    model KEY_ACT is Memory<UCH>;

    /** RAM 0x0059 KEY_PREV */
    @ext(0x05, 0x01, 0x59)
    model KEY_PREV is Memory<UCH>;

    /** RAM 0x005A KEY_CNT */
    @ext(0x06, 0x01, 0x5A)
    model KEY_CNT is Memory<UCH>;

    /** RAM 0x005B MENU_NR */
    @ext(0x07, 0x01, 0x5B)
    model MENU_NR is Memory<UCH>;

    // Alias of MENU_NR
    // /** RAM 0x005B TB11 */
    // @ext(0x07, 0x01, 0x5B)
    // model TB11 is Memory<UCH>;

    /** RAM 0x005C S5_ERR_CODE */
    @ext(0x00, 0x01, 0x5C)
    model S5_ERR_CODE is Memory<UCH>;

    /** RAM 0x005D TVISTAD */
    @ext(0x01, 0x01, 0x5D)
    model TVISTAD is Memory<UCH>;

    /** RAM 0x005E TWWISTAD */
    @ext(0x02, 0x01, 0x5E)
    model TWWISTAD is Memory<UCH>;

    /** RAM 0x005F TAUSSEN */
    @ext(0x03, 0x01, 0x5F)
    model TAUSSEN is Memory<UCH>;

    /** RAM 0x0060 TABGAS */
    @ext(0x3c, 0x01, 0x60)
    model TABGAS is Memory<UCH>;

    /** RAM 0x0061 IONIST */
    @ext(0x3d, 0x01, 0x61)
    model IONIST is Memory<UCH>;

    /** RAM 0x0062 CALIB_STATE */
    @ext(0x3e, 0x01, 0x62)
    model CALIB_STATE is Memory<UCH>;

    /** RAM 0x0063 ION_ERR_MASK */
    @ext(0x3f, 0x01, 0x63)
    model ION_ERR_MASK is Memory<UCH>;

    /** RAM 0x0064 ION_GET_HIHIBYTE */
    @ext(0x38, 0x01, 0x64)
    model ION_GET_HIHIBYTE is Memory<UCH>;

    /** RAM 0x0065 F_CODE */
    @ext(0x39, 0x01, 0x65)
    model F_CODE is Memory<UCH>;

    /** RAM 0x0066 ANAIN4 */
    @ext(0x3a, 0x01, 0x66)
    model ANAIN4 is Memory<UCH>;

    // Alias of ANAIN4
    // /** RAM 0x0066 TB10 */
    // @ext(0x3a, 0x01, 0x66)
    // model TB10 is Memory<UCH>;

    /** RAM 0x0067 SCHILF */
    @ext(0x3b, 0x01, 0x67)
    model SCHILF is Memory<UCH>;

    /** RAM 0x0068 TVIST */
    @ext(0x34, 0x01, 0x68)
    model TVIST is Memory<UCH>;

    /** RAM 0x0069 V24_CCMD */
    @ext(0x35, 0x01, 0x69)
    model V24_CCMD is Memory<UCH>;

    /** RAM 0x006A TWWIST */
    @ext(0x36, 0x01, 0x6A)
    model TWWIST is Memory<UCH>;

    /** RAM 0x006B V24_IADR */
    @ext(0x37, 0x01, 0x6B)
    model V24_IADR is Memory<UCH>;

    /** RAM 0x006C CLNGFLANKE */
    @ext(0x30, 0x01, 0x6C)
    model CLNGFLANKE is Memory<UCH>;

    /** RAM 0x006D V24_RXCNT1MS_ */
    @ext(0x31, 0x01, 0x6D)
    model V24_RXCNT1MS_ is Memory<UCH>;

    /** RAM 0x006E TVSOLL */
    @ext(0x32, 0x01, 0x6E)
    model TVSOLL is Memory<UCH>;

    /** RAM 0x006F TWWSOLL_HS */
    @ext(0x33, 0x01, 0x6F)
    model TWWSOLL_HS is Memory<UCH>;

    /** RAM 0x0070 NGSOLL */
    @ext(0x2c, 0x01, 0x70)
    model NGSOLL is Memory<UCH>;

    /** RAM 0x0071 NGIST */
    @ext(0x2d, 0x01, 0x71)
    model NGIST is Memory<UCH>;

    /** RAM 0x0072 HZZUSTBM */
    @ext(0x2e, 0x01, 0x72)
    model HZZUSTBM is Memory<UCH>;

    /** RAM 0x0073 V24_TXCNT */
    @ext(0x2f, 0x01, 0x73)
    model V24_TXCNT is Memory<UCH>;

    /** RAM 0x0074 WWZUSTBM */
    @ext(0x28, 0x01, 0x74)
    model WWZUSTBM is Memory<UCH>;

    /** RAM 0x0075 YTVREG */
    @ext(0x29, 0x01, 0x75)
    model YTVREG is Memory<UCH>;

    /** RAM 0x0077 PWMGEBL */
    @ext(0x2b, 0x01, 0x77)
    model PWMGEBL is Memory<UCH>;

    // Alias of PWMGEBL
    // /** RAM 0x0077 YPWM */
    // @ext(0x2b, 0x01, 0x77)
    // model YPWM is Memory<UCH>;

    /** RAM 0x0079 PWMGPV */
    @ext(0x25, 0x01, 0x79)
    model PWMGPV is Memory<UCH>;

    /** RAM 0x007B Menupunkt */
    @ext(0x27, 0x01, 0x7B)
    model Menupunkt is Memory<UCH>;

    /** RAM 0x007C Parameterwert */
    @ext(0x20, 0x01, 0x7C)
    model Parameterwert is Memory<UCH>;

    /** RAM 0x007D TVIST2 */
    @ext(0x21, 0x01, 0x7D)
    model TVIST2 is Memory<UCH>;

    /** RAM 0x0080 STACK */
    @ext(0xdc, 0x01, 0x80)
    model STACK is Memory<UCH>;

    /** RAM 0x00A9 IRAEPKANF */
    @ext(0xf5, 0x01, 0xA9)
    model IRAEPKANF is Memory<UCH>;

    // Alias of IRAEPKANF
    // /** RAM 0x00A9 IRA_SOFTREV */
    // @ext(0xf5, 0x01, 0xA9)
    // model IRA_SOFTREV is Memory<UCH>;

    // Alias of IRAEPKANF
    // /** RAM 0x00A9 MAXTVSOLL */
    // @ext(0xf5, 0x01, 0xA9)
    // model MAXTVSOLL is Memory<UCH>;

    /** RAM 0x00AA HZ_HYS */
    @ext(0xf6, 0x01, 0xAA)
    model HZ_HYS is Memory<UCH>;

    /** RAM 0x00AB IRA_BCC_IDF */
    @ext(0xf7, 0x01, 0xAB)
    model IRA_BCC_IDF is Memory<UCH>;

    // Alias of IRA_BCC_IDF
    // /** RAM 0x00AB TBRMINOFF */
    // @ext(0xf7, 0x01, 0xAB)
    // model TBRMINOFF is Memory<UCH>;

    /** RAM 0x00AC HZ_KP */
    @ext(0xf0, 0x01, 0xAC)
    model HZ_KP is Memory<UCH>;

    /** RAM 0x00AD HZ_KTND */
    @ext(0xf1, 0x01, 0xAD)
    model HZ_KTND is Memory<UCH>;

    /** RAM 0x00AE IRA_GFATYP */
    @ext(0xf2, 0x01, 0xAE)
    model IRA_GFATYP is Memory<UCH>;

    // Alias of IRA_GFATYP
    // /** RAM 0x00AE NG_KESSEL_MIN */
    // @ext(0xf2, 0x01, 0xAE)
    // model NG_KESSEL_MIN is Memory<UCH>;

    /** RAM 0x00AF IRA_VARIANTE */
    @ext(0xf3, 0x01, 0xAF)
    model IRA_VARIANTE is Memory<UCH>;

    // Alias of IRA_VARIANTE
    // /** RAM 0x00AF NG_HZ_FREI */
    // @ext(0xf3, 0x01, 0xAF)
    // model NG_HZ_FREI is Memory<UCH>;

    /** RAM 0x00B0 NG_HZ_MAX */
    @ext(0xec, 0x01, 0xB0)
    model NG_HZ_MAX is Memory<UCH>;

    /** RAM 0x00B1 PNL_HZ */
    @ext(0xed, 0x01, 0xB1)
    model PNL_HZ is Memory<UCH>;

    /** RAM 0x00B2 PUHZOFFS */
    @ext(0xee, 0x01, 0xB2)
    model PUHZOFFS is Memory<UCH>;

    /** RAM 0x00B3 PUHZSTEIG */
    @ext(0xef, 0x01, 0xB3)
    model PUHZSTEIG is Memory<UCH>;

    /** RAM 0x00B4 WW_HYS */
    @ext(0xe8, 0x01, 0xB4)
    model WW_HYS is Memory<UCH>;

    /** RAM 0x00B5 IRA_GERAETETYP1 */
    @ext(0xe9, 0x01, 0xB5)
    model IRA_GERAETETYP1 is Memory<UCH>;

    // Alias of IRA_GERAETETYP1
    // /** RAM 0x00B5 TWWPLUS */
    // @ext(0xe9, 0x01, 0xB5)
    // model TWWPLUS is Memory<UCH>;

    /** RAM 0x00B6 IRA_GERAETETYP2 */
    @ext(0xea, 0x01, 0xB6)
    model IRA_GERAETETYP2 is Memory<UCH>;

    // Alias of IRA_GERAETETYP2
    // /** RAM 0x00B6 NG_WW_MAX */
    // @ext(0xea, 0x01, 0xB6)
    // model NG_WW_MAX is Memory<UCH>;

    /** RAM 0x00B7 IO_KORR */
    @ext(0xeb, 0x01, 0xB7)
    model IO_KORR is Memory<UCH>;

    // Alias of IO_KORR
    // /** RAM 0x00B7 IRA_GERAET_CRC */
    // @ext(0xeb, 0x01, 0xB7)
    // model IRA_GERAET_CRC is Memory<UCH>;

    /** RAM 0x00B8 V24_KM_ADR */
    @ext(0xe4, 0x01, 0xB8)
    model V24_KM_ADR is Memory<UCH>;

    /** RAM 0x00B9 MAXBWLADEZEIT */
    @ext(0xe5, 0x01, 0xB9)
    model MAXBWLADEZEIT is Memory<UCH>;

    /** RAM 0x00BA NFS_RESERVE_2 */
    @ext(0xe6, 0x01, 0xBA)
    model NFS_RESERVE_2 is Memory<UCH>;

    /** RAM 0x00BB NFS_RESERVE_1 */
    @ext(0xe7, 0x01, 0xBB)
    model NFS_RESERVE_1 is Memory<UCH>;

    /** RAM 0x00BC DL_NORMAL */
    @ext(0xe0, 0x01, 0xBC)
    model DL_NORMAL is Memory<UCH>;

    // Alias of DL_NORMAL
    // /** RAM 0x00BC EP_DTREGPUPWM */
    // @ext(0xe0, 0x01, 0xBC)
    // model EP_DTREGPUPWM is Memory<UCH>;

    /** RAM 0x00BD WW_ABSENK */
    @ext(0xe1, 0x01, 0xBD)
    model WW_ABSENK is Memory<UCH>;

    /** RAM 0x00BE DL_COMF_HYS */
    @ext(0xe2, 0x01, 0xBE)
    model DL_COMF_HYS is Memory<UCH>;

    /** RAM 0x00BF HK_S */
    @ext(0xe3, 0x01, 0xBF)
    model HK_S is Memory<UCH>;

    /** RAM 0x00C0 TAUSSEN_KORR */
    @ext(0x9c, 0x01, 0xC0)
    model TAUSSEN_KORR is Memory<UCH>;

    /** RAM 0x00C1 NG_KESSEL_MAX */
    @ext(0x9d, 0x01, 0xC1)
    model NG_KESSEL_MAX is Memory<UCH>;

    /** RAM 0x00C2 YGPVSTART */
    @ext(0x9e, 0x01, 0xC2)
    model YGPVSTART is Memory<UCH>;

    /** RAM 0x00C3 TFRS_ANLAGE */
    @ext(0x9f, 0x01, 0xC3)
    model TFRS_ANLAGE is Memory<UCH>;

    /** RAM 0x00C4 EP15RTHZEIT */
    @ext(0x98, 0x01, 0xC4)
    model EP15RTHZEIT is Memory<UCH>;

    /** RAM 0x00C5 EP17HZSONDER */
    @ext(0x99, 0x01, 0xC5)
    model EP17HZSONDER is Memory<UCH>;

    // Alias of EP17HZSONDER
    // /** RAM 0x00C5 THZSONDER */
    // @ext(0x99, 0x01, 0xC5)
    // model THZSONDER is Memory<UCH>;

    /** RAM 0x00C6 EPWARTINTHBON */
    @ext(0x9a, 0x01, 0xC6)
    model EPWARTINTHBON is Memory<UCH>;

    /** RAM 0x00C7 EP33ABGASSTB */
    @ext(0x9b, 0x01, 0xC7)
    model EP33ABGASSTB is Memory<UCH>;

    /** RAM 0x00C8 NG_ZUEND */
    @ext(0x94, 0x01, 0xC8)
    model NG_ZUEND is Memory<UCH>;

    /** RAM 0x00C9 MINTVSOLL */
    @ext(0x95, 0x01, 0xC9)
    model MINTVSOLL is Memory<UCH>;

    /** RAM 0x00CA DTMAXWT */
    @ext(0x96, 0x01, 0xCA)
    model DTMAXWT is Memory<UCH>;

    /** RAM 0x00CB MXGRADTVIST */
    @ext(0x97, 0x01, 0xCB)
    model MXGRADTVIST is Memory<UCH>;

    /** RAM 0x00CC EPWARNMAN */
    @ext(0x90, 0x01, 0xCC)
    model EPWARNMAN is Memory<UCH>;

    /** RAM 0x00CD KESS_OPT */
    @ext(0x91, 0x01, 0xCD)
    model KESS_OPT is Memory<UCH>;

    /** RAM 0x00CE KES_DAT_CRC */
    @ext(0x92, 0x01, 0xCE)
    model KES_DAT_CRC is Memory<UCH>;

    /** RAM 0x00CF IRAEPMANF */
    @ext(0x93, 0x01, 0xCF)
    model IRAEPMANF is Memory<UCH>;

    // Alias of IRAEPMANF
    // /** RAM 0x00CF TVSOLL_EPM */
    // @ext(0x93, 0x01, 0xCF)
    // model TVSOLL_EPM is Memory<UCH>;

    /** RAM 0x00D0 TVABSENK */
    @ext(0x8c, 0x01, 0xD0)
    model TVABSENK is Memory<UCH>;

    /** RAM 0x00D1 SOMMERTEMP */
    @ext(0x8d, 0x01, 0xD1)
    model SOMMERTEMP is Memory<UCH>;

    /** RAM 0x00D2 TWWSOLL_EPM */
    @ext(0x8e, 0x01, 0xD2)
    model TWWSOLL_EPM is Memory<UCH>;

    /** RAM 0x00D3 TRAUMTAG */
    @ext(0x8f, 0x01, 0xD3)
    model TRAUMTAG is Memory<UCH>;

    /** RAM 0x00D4 TRAUMABSENK */
    @ext(0x88, 0x01, 0xD4)
    model TRAUMABSENK is Memory<UCH>;

    /** RAM 0x00D5 MAINPARACRC */
    @ext(0x89, 0x01, 0xD5)
    model MAINPARACRC is Memory<UCH>;

    /** RAM 0x00D6 ION_SOLL */
    @ext(0x8a, 0x01, 0xD6)
    model ION_SOLL is Memory<UCH>;

    /** RAM 0x00D7 PNL_HZCNT */
    @ext(0x8b, 0x01, 0xD7)
    model PNL_HZCNT is Memory<UCH>;

    /** RAM 0x00D9 PNL_WWCNT */
    @ext(0x85, 0x01, 0xD9)
    model PNL_WWCNT is Memory<UCH>;

    /** RAM 0x00DB NGXW1 */
    @ext(0x87, 0x01, 0xDB)
    model NGXW1 is Memory<UCH>;

    /** RAM 0x00DC PUHZPWM */
    @ext(0x80, 0x01, 0xDC)
    model PUHZPWM is Memory<UCH>;

    /** RAM 0x00DD AIN_ERR_MASK */
    @ext(0x81, 0x01, 0xDD)
    model AIN_ERR_MASK is Memory<UCH>;

    /** RAM 0x00DE TAUSSAD */
    @ext(0x82, 0x01, 0xDE)
    model TAUSSAD is Memory<UCH>;

    /** RAM 0x00DF TABGAD */
    @ext(0x83, 0x01, 0xDF)
    model TABGAD is Memory<UCH>;

    /** RAM 0x00E0 AIN_FS_ERR_MASK */
    @ext(0xbc, 0x01, 0xE0)
    model AIN_FS_ERR_MASK is Memory<UCH>;

    /** RAM 0x00E1 ERR_MERK_ALT */
    @ext(0xbd, 0x01, 0xE1)
    model ERR_MERK_ALT is Memory<UCH>;

    /** RAM 0x00E2 F_CODE_ALT */
    @ext(0xbe, 0x01, 0xE2)
    model F_CODE_ALT is Memory<UCH>;

    /** RAM 0x00E3 ROM_DPH */
    @ext(0xbf, 0x01, 0xE3)
    model ROM_DPH is Memory<UCH>;

    /** RAM 0x00E4 ROM_DPL */
    @ext(0xb8, 0x01, 0xE4)
    model ROM_DPL is Memory<UCH>;

    /** RAM 0x00E5 ROM_H */
    @ext(0xb9, 0x01, 0xE5)
    model ROM_H is Memory<UCH>;

    /** RAM 0x00E6 ROM_L */
    @ext(0xba, 0x01, 0xE6)
    model ROM_L is Memory<UCH>;

    /** RAM 0x00E7 V24_SCOM_ADR */
    @ext(0xbb, 0x01, 0xE7)
    model V24_SCOM_ADR is Memory<UCH>;

    /** RAM 0x00E8 YIONREG */
    @ext(0xb4, 0x01, 0xE8)
    model YIONREG is Memory<UCH>;

    /** RAM 0x00EA YGPVOPT */
    @ext(0xb6, 0x01, 0xEA)
    model YGPVOPT is Memory<UCH>;

    /** RAM 0x00EC DYGPVREL */
    @ext(0xb0, 0x01, 0xEC)
    model DYGPVREL is Memory<UCH>;

    /** RAM 0x00ED ION_SOLL_AKT */
    @ext(0xb1, 0x01, 0xED)
    model ION_SOLL_AKT is Memory<UCH>;

    /** RAM 0x00EE ION_SOLL_AKTLOW */
    @ext(0xb2, 0x01, 0xEE)
    model ION_SOLL_AKTLOW is Memory<UCH>;

    /** RAM 0x00EF ION_SOLL_START */
    @ext(0xb3, 0x01, 0xEF)
    model ION_SOLL_START is Memory<UCH>;

    /** RAM 0x00F0 ION_SOLL_KURVE */
    @ext(0xac, 0x01, 0xF0)
    model ION_SOLL_KURVE is Memory<UCH>;

    /** RAM 0x00F1 ION_ERR_TIME */
    @ext(0xad, 0x01, 0xF1)
    model ION_ERR_TIME is Memory<UCH>;

    /** RAM 0x00F2 ION_XW */
    @ext(0xae, 0x01, 0xF2)
    model ION_XW is Memory<UCH>;

    /** RAM 0x00F3 ihilf */
    @ext(0xaf, 0x01, 0xF3)
    model ihilf is Memory<UCH>;

    /** RAM 0x00F5 uk1 */
    @ext(0xa9, 0x01, 0xF5)
    model uk1 is Memory<UCH>;

    /** RAM 0x00F6 kes_state */
    @ext(0xaa, 0x01, 0xF6)
    model kes_state is Memory<UCH>;

    /** RAM 0x00F7 dTreg_y */
    @ext(0xab, 0x01, 0xF7)
    model dTreg_y is Memory<UCH>;

    /** RAM 0x00F8 TVIST2AD */
    @ext(0xa4, 0x01, 0xF8)
    model TVIST2AD is Memory<UCH>;

    /** RAM 0x00F9 AIN2_ERR_MASK */
    @ext(0xa5, 0x01, 0xF9)
    model AIN2_ERR_MASK is Memory<UCH>;

    /** RAM 0x00FA ICL1HRS_ALT */
    @ext(0xa6, 0x01, 0xFA)
    model ICL1HRS_ALT is Memory<UCH>;

    /** RAM 0x00FB RES_CNT_ALT */
    @ext(0xa7, 0x01, 0xFB)
    model RES_CNT_ALT is Memory<UCH>;


    // ====================================
    // --- SFR ---
    // ====================================

    /** SFR 0x0080 P0_ALTSEL0 */
    @ext(0xac, 0x04, 0x80)
    model P0_ALTSEL0 is Memory<UCH>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_DATA */
    // @ext(0xac, 0x04, 0x80)
    // model P0_DATA is Memory<UCH>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_OD */
    // @ext(0xac, 0x04, 0x80)
    // model P0_OD is Memory<UCH>;

    // Alias of P0_ALTSEL0
    // /** SFR 0x0080 P0_PUDSEL */
    // @ext(0xac, 0x04, 0x80)
    // model P0_PUDSEL is Memory<UCH>;

    /** SFR 0x0082 DPL */
    @ext(0xae, 0x04, 0x82)
    model DPL is Memory<UCH>;

    /** SFR 0x0083 DPH */
    @ext(0xaf, 0x04, 0x83)
    model DPH is Memory<UCH>;

    /** SFR 0x0086 EE_SDA_DIR_PORT */
    @ext(0xaa, 0x04, 0x86)
    model EE_SDA_DIR_PORT is Memory<UCH>;

    // Alias of EE_SDA_DIR_PORT
    // /** SFR 0x0086 P0_ALTSEL1 */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_ALTSEL1 is Memory<UCH>;

    // Alias of EE_SDA_DIR_PORT
    // /** SFR 0x0086 P0_DIR */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_DIR is Memory<UCH>;

    // Alias of EE_SDA_DIR_PORT
    // /** SFR 0x0086 P0_DS */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_DS is Memory<UCH>;

    // Alias of EE_SDA_DIR_PORT
    // /** SFR 0x0086 P0_PUDEN */
    // @ext(0xaa, 0x04, 0x86)
    // model P0_PUDEN is Memory<UCH>;

    /** SFR 0x0087 PCON */
    @ext(0xab, 0x04, 0x87)
    model PCON is Memory<UCH>;

    /** SFR 0x0088 TCON */
    @ext(0xa4, 0x04, 0x88)
    model TCON is Memory<UCH>;

    /** SFR 0x0089 TMOD */
    @ext(0xa5, 0x04, 0x89)
    model TMOD is Memory<UCH>;

    /** SFR 0x008A TL0 */
    @ext(0xa6, 0x04, 0x8A)
    model TL0 is Memory<UCH>;

    /** SFR 0x008B ION_TIMER_LOW */
    @ext(0xa7, 0x04, 0x8B)
    model ION_TIMER_LOW is Memory<UCH>;

    // Alias of ION_TIMER_LOW
    // /** SFR 0x008B TL1 */
    // @ext(0xa7, 0x04, 0x8B)
    // model TL1 is Memory<UCH>;

    /** SFR 0x008C TH0 */
    @ext(0xa0, 0x04, 0x8C)
    model TH0 is Memory<UCH>;

    /** SFR 0x008D ION_TIMER_HIGH */
    @ext(0xa1, 0x04, 0x8D)
    model ION_TIMER_HIGH is Memory<UCH>;

    // Alias of ION_TIMER_HIGH
    // /** SFR 0x008D TH1 */
    // @ext(0xa1, 0x04, 0x8D)
    // model TH1 is Memory<UCH>;

    /** SFR 0x008F SYSCON0 */
    @ext(0xa3, 0x04, 0x8F)
    model SYSCON0 is Memory<UCH>;

    /** SFR 0x0090 DO_PORT */
    @ext(0xbc, 0x04, 0x90)
    model DO_PORT is Memory<UCH>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_ALTSEL0 */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_ALTSEL0 is Memory<UCH>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_DATA */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_DATA is Memory<UCH>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_OD */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_OD is Memory<UCH>;

    // Alias of DO_PORT
    // /** SFR 0x0090 P1_PUDSEL */
    // @ext(0xbc, 0x04, 0x90)
    // model P1_PUDSEL is Memory<UCH>;

    /** SFR 0x0091 DO_PORT_DIR */
    @ext(0xbd, 0x04, 0x91)
    model DO_PORT_DIR is Memory<UCH>;

    // Alias of DO_PORT_DIR
    // /** SFR 0x0091 P1_ALTSEL1 */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_ALTSEL1 is Memory<UCH>;

    // Alias of DO_PORT_DIR
    // /** SFR 0x0091 P1_DIR */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_DIR is Memory<UCH>;

    // Alias of DO_PORT_DIR
    // /** SFR 0x0091 P1_DS */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_DS is Memory<UCH>;

    // Alias of DO_PORT_DIR
    // /** SFR 0x0091 P1_PUDEN */
    // @ext(0xbd, 0x04, 0x91)
    // model P1_PUDEN is Memory<UCH>;

    /** SFR 0x0092 LCD_PORT */
    @ext(0xbe, 0x04, 0x92)
    model LCD_PORT is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 MCB_P5 */
    // @ext(0xbe, 0x04, 0x92)
    // model MCB_P5 is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 P5_ALTSEL0 */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_ALTSEL0 is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 P5_DATA */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_DATA is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 P5_OD */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_OD is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 P5_PUDSEL */
    // @ext(0xbe, 0x04, 0x92)
    // model P5_PUDSEL is Memory<UCH>;

    // Alias of LCD_PORT
    // /** SFR 0x0092 SWITCH_MUX_PORT */
    // @ext(0xbe, 0x04, 0x92)
    // model SWITCH_MUX_PORT is Memory<UCH>;

    /** SFR 0x0093 P5_ALTSEL1 */
    @ext(0xbf, 0x04, 0x93)
    model P5_ALTSEL1 is Memory<UCH>;

    // Alias of P5_ALTSEL1
    // /** SFR 0x0093 P5_DIR */
    // @ext(0xbf, 0x04, 0x93)
    // model P5_DIR is Memory<UCH>;

    // Alias of P5_ALTSEL1
    // /** SFR 0x0093 P5_DS */
    // @ext(0xbf, 0x04, 0x93)
    // model P5_DS is Memory<UCH>;

    // Alias of P5_ALTSEL1
    // /** SFR 0x0093 P5_PUDEN */
    // @ext(0xbf, 0x04, 0x93)
    // model P5_PUDEN is Memory<UCH>;

    /** SFR 0x0094 MEX1 */
    @ext(0xb8, 0x04, 0x94)
    model MEX1 is Memory<UCH>;

    /** SFR 0x0095 MEX2 */
    @ext(0xb9, 0x04, 0x95)
    model MEX2 is Memory<UCH>;

    /** SFR 0x0096 MEX3 */
    @ext(0xba, 0x04, 0x96)
    model MEX3 is Memory<UCH>;

    /** SFR 0x0097 MEXSP */
    @ext(0xbb, 0x04, 0x97)
    model MEXSP is Memory<UCH>;

    /** SFR 0x0098 SCON */
    @ext(0xb4, 0x04, 0x98)
    model SCON is Memory<UCH>;

    /** SFR 0x0099 SBUF */
    @ext(0xb5, 0x04, 0x99)
    model SBUF is Memory<UCH>;

    /** SFR 0x009A CCU6_CC63RL */
    @ext(0xb6, 0x04, 0x9A)
    model CCU6_CC63RL is Memory<UCH>;

    // Alias of CCU6_CC63RL
    // /** SFR 0x009A CCU6_CC63SRL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_CC63SRL is Memory<UCH>;

    // Alias of CCU6_CC63RL
    // /** SFR 0x009A CCU6_MCMOUTL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_MCMOUTL is Memory<UCH>;

    // Alias of CCU6_CC63RL
    // /** SFR 0x009A CCU6_T12MSELL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CCU6_T12MSELL is Memory<UCH>;

    // Alias of CCU6_CC63RL
    // /** SFR 0x009A CD_CORDXL */
    // @ext(0xb6, 0x04, 0x9A)
    // model CD_CORDXL is Memory<UCH>;

    /** SFR 0x009B CCU6_CC63RH */
    @ext(0xb7, 0x04, 0x9B)
    model CCU6_CC63RH is Memory<UCH>;

    // Alias of CCU6_CC63RH
    // /** SFR 0x009B CCU6_CC63SRH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_CC63SRH is Memory<UCH>;

    // Alias of CCU6_CC63RH
    // /** SFR 0x009B CCU6_MCMOUTH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_MCMOUTH is Memory<UCH>;

    // Alias of CCU6_CC63RH
    // /** SFR 0x009B CCU6_T12MSELH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CCU6_T12MSELH is Memory<UCH>;

    // Alias of CCU6_CC63RH
    // /** SFR 0x009B CD_CORDXH */
    // @ext(0xb7, 0x04, 0x9B)
    // model CD_CORDXH is Memory<UCH>;

    /** SFR 0x009C CCU6_IENL */
    @ext(0xb0, 0x04, 0x9C)
    model CCU6_IENL is Memory<UCH>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_ISL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_ISL is Memory<UCH>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_T12PRL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_T12PRL is Memory<UCH>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CCU6_TCTR4L */
    // @ext(0xb0, 0x04, 0x9C)
    // model CCU6_TCTR4L is Memory<UCH>;

    // Alias of CCU6_IENL
    // /** SFR 0x009C CD_CORDYL */
    // @ext(0xb0, 0x04, 0x9C)
    // model CD_CORDYL is Memory<UCH>;

    /** SFR 0x009D CCU6_IENH */
    @ext(0xb1, 0x04, 0x9D)
    model CCU6_IENH is Memory<UCH>;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_ISH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_ISH is Memory<UCH>;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_T12PRH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_T12PRH is Memory<UCH>;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CCU6_TCTR4H */
    // @ext(0xb1, 0x04, 0x9D)
    // model CCU6_TCTR4H is Memory<UCH>;

    // Alias of CCU6_IENH
    // /** SFR 0x009D CD_CORDYH */
    // @ext(0xb1, 0x04, 0x9D)
    // model CD_CORDYH is Memory<UCH>;

    /** SFR 0x009E CCU6_INPL */
    @ext(0xb2, 0x04, 0x9E)
    model CCU6_INPL is Memory<UCH>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_MCMOUTSL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_MCMOUTSL is Memory<UCH>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_PISEL0L */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_PISEL0L is Memory<UCH>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CCU6_T13PRL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CCU6_T13PRL is Memory<UCH>;

    // Alias of CCU6_INPL
    // /** SFR 0x009E CD_CORDZL */
    // @ext(0xb2, 0x04, 0x9E)
    // model CD_CORDZL is Memory<UCH>;

    /** SFR 0x009F CCU6_INPH */
    @ext(0xb3, 0x04, 0x9F)
    model CCU6_INPH is Memory<UCH>;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_MCMOUTSH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_MCMOUTSH is Memory<UCH>;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_PISEL0H */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_PISEL0H is Memory<UCH>;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CCU6_T13PRH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CCU6_T13PRH is Memory<UCH>;

    // Alias of CCU6_INPH
    // /** SFR 0x009F CD_CORDZH */
    // @ext(0xb3, 0x04, 0x9F)
    // model CD_CORDZH is Memory<UCH>;

    /** SFR 0x00A0 CD_STATC */
    @ext(0x8c, 0x04, 0xA0)
    model CD_STATC is Memory<UCH>;

    /** SFR 0x00A1 CD_CON */
    @ext(0x8d, 0x04, 0xA1)
    model CD_CON is Memory<UCH>;

    /** SFR 0x00A3 CCU6_PAGE */
    @ext(0x8f, 0x04, 0xA3)
    model CCU6_PAGE is Memory<UCH>;

    /** SFR 0x00A4 CCU6_ISRL */
    @ext(0x88, 0x04, 0xA4)
    model CCU6_ISRL is Memory<UCH>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_ISSL */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_ISSL is Memory<UCH>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_PISEL2 */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_PISEL2 is Memory<UCH>;

    // Alias of CCU6_ISRL
    // /** SFR 0x00A4 CCU6_T12DTCL */
    // @ext(0x88, 0x04, 0xA4)
    // model CCU6_T12DTCL is Memory<UCH>;

    /** SFR 0x00A5 CCU6_ISRH */
    @ext(0x89, 0x04, 0xA5)
    model CCU6_ISRH is Memory<UCH>;

    // Alias of CCU6_ISRH
    // /** SFR 0x00A5 CCU6_ISSH */
    // @ext(0x89, 0x04, 0xA5)
    // model CCU6_ISSH is Memory<UCH>;

    // Alias of CCU6_ISRH
    // /** SFR 0x00A5 CCU6_T12DTCH */
    // @ext(0x89, 0x04, 0xA5)
    // model CCU6_T12DTCH is Memory<UCH>;

    /** SFR 0x00A6 CCU6_CMPMODIFL */
    @ext(0x8a, 0x04, 0xA6)
    model CCU6_CMPMODIFL is Memory<UCH>;

    // Alias of CCU6_CMPMODIFL
    // /** SFR 0x00A6 CCU6_PSLR */
    // @ext(0x8a, 0x04, 0xA6)
    // model CCU6_PSLR is Memory<UCH>;

    // Alias of CCU6_CMPMODIFL
    // /** SFR 0x00A6 CCU6_TCTR0L */
    // @ext(0x8a, 0x04, 0xA6)
    // model CCU6_TCTR0L is Memory<UCH>;

    /** SFR 0x00A7 CCU6_CMPMODIFH */
    @ext(0x8b, 0x04, 0xA7)
    model CCU6_CMPMODIFH is Memory<UCH>;

    // Alias of CCU6_CMPMODIFH
    // /** SFR 0x00A7 CCU6_MCMCTR */
    // @ext(0x8b, 0x04, 0xA7)
    // model CCU6_MCMCTR is Memory<UCH>;

    // Alias of CCU6_CMPMODIFH
    // /** SFR 0x00A7 CCU6_TCTR0H */
    // @ext(0x8b, 0x04, 0xA7)
    // model CCU6_TCTR0H is Memory<UCH>;

    /** SFR 0x00A8 IEN0 */
    @ext(0x84, 0x04, 0xA8)
    model IEN0 is Memory<UCH>;

    /** SFR 0x00AA SSC_CONL_O */
    @ext(0x86, 0x04, 0xAA)
    model SSC_CONL_O is Memory<UCH>;

    // Alias of SSC_CONL_O
    // /** SFR 0x00AA SSC_CONL_P */
    // @ext(0x86, 0x04, 0xAA)
    // model SSC_CONL_P is Memory<UCH>;

    /** SFR 0x00AB SSC_CONH_O */
    @ext(0x87, 0x04, 0xAB)
    model SSC_CONH_O is Memory<UCH>;

    // Alias of SSC_CONH_O
    // /** SFR 0x00AB SSC_CONH_P */
    // @ext(0x87, 0x04, 0xAB)
    // model SSC_CONH_P is Memory<UCH>;

    /** SFR 0x00AC SSC_TBL */
    @ext(0x80, 0x04, 0xAC)
    model SSC_TBL is Memory<UCH>;

    /** SFR 0x00AD SSC_RBL */
    @ext(0x81, 0x04, 0xAD)
    model SSC_RBL is Memory<UCH>;

    /** SFR 0x00AE SSC_BRL */
    @ext(0x82, 0x04, 0xAE)
    model SSC_BRL is Memory<UCH>;

    /** SFR 0x00AF SSC_BRH */
    @ext(0x83, 0x04, 0xAF)
    model SSC_BRH is Memory<UCH>;

    /** SFR 0x00B0 DE_F_PORT */
    @ext(0x9c, 0x04, 0xB0)
    model DE_F_PORT is Memory<UCH>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 MDU_MDUSTAT */
    // @ext(0x9c, 0x04, 0xB0)
    // model MDU_MDUSTAT is Memory<UCH>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_ALTSEL0 */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_ALTSEL0 is Memory<UCH>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_DATA */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_DATA is Memory<UCH>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_OD */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_OD is Memory<UCH>;

    // Alias of DE_F_PORT
    // /** SFR 0x00B0 P3_PUDSEL */
    // @ext(0x9c, 0x04, 0xB0)
    // model P3_PUDSEL is Memory<UCH>;

    /** SFR 0x00B1 DIR_DE_PORT */
    @ext(0x9d, 0x04, 0xB1)
    model DIR_DE_PORT is Memory<UCH>;

    // Alias of DIR_DE_PORT
    // /** SFR 0x00B1 MDU_MDUCON */
    // @ext(0x9d, 0x04, 0xB1)
    // model MDU_MDUCON is Memory<UCH>;

    // Alias of DIR_DE_PORT
    // /** SFR 0x00B1 P3_ALTSEL1 */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_ALTSEL1 is Memory<UCH>;

    // Alias of DIR_DE_PORT
    // /** SFR 0x00B1 P3_DIR */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_DIR is Memory<UCH>;

    // Alias of DIR_DE_PORT
    // /** SFR 0x00B1 P3_DS */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_DS is Memory<UCH>;

    // Alias of DIR_DE_PORT
    // /** SFR 0x00B1 P3_PUDEN */
    // @ext(0x9d, 0x04, 0xB1)
    // model P3_PUDEN is Memory<UCH>;

    /** SFR 0x00B2 MDU_MD0 */
    @ext(0x9e, 0x04, 0xB2)
    model MDU_MD0 is Memory<UCH>;

    // Alias of MDU_MD0
    // /** SFR 0x00B2 MDU_MR0 */
    // @ext(0x9e, 0x04, 0xB2)
    // model MDU_MR0 is Memory<UCH>;

    // Alias of MDU_MD0
    // /** SFR 0x00B2 PORT_PAGE */
    // @ext(0x9e, 0x04, 0xB2)
    // model PORT_PAGE is Memory<UCH>;

    /** SFR 0x00B3 MDU_MD1 */
    @ext(0x9f, 0x04, 0xB3)
    model MDU_MD1 is Memory<UCH>;

    // Alias of MDU_MD1
    // /** SFR 0x00B3 MDU_MR1 */
    // @ext(0x9f, 0x04, 0xB3)
    // model MDU_MR1 is Memory<UCH>;

    // Alias of MDU_MD1
    // /** SFR 0x00B3 MODPISEL */
    // @ext(0x9f, 0x04, 0xB3)
    // model MODPISEL is Memory<UCH>;

    // Alias of MDU_MD1
    // /** SFR 0x00B3 XADDRH */
    // @ext(0x9f, 0x04, 0xB3)
    // model XADDRH is Memory<UCH>;

    /** SFR 0x00B4 IRCON0 */
    @ext(0x98, 0x04, 0xB4)
    model IRCON0 is Memory<UCH>;

    // Alias of IRCON0
    // /** SFR 0x00B4 IRCON3 */
    // @ext(0x98, 0x04, 0xB4)
    // model IRCON3 is Memory<UCH>;

    // Alias of IRCON0
    // /** SFR 0x00B4 MDU_MD2 */
    // @ext(0x98, 0x04, 0xB4)
    // model MDU_MD2 is Memory<UCH>;

    // Alias of IRCON0
    // /** SFR 0x00B4 MDU_MR2 */
    // @ext(0x98, 0x04, 0xB4)
    // model MDU_MR2 is Memory<UCH>;

    // Alias of IRCON0
    // /** SFR 0x00B4 PMCON0 */
    // @ext(0x98, 0x04, 0xB4)
    // model PMCON0 is Memory<UCH>;

    /** SFR 0x00B5 IRCON1 */
    @ext(0x99, 0x04, 0xB5)
    model IRCON1 is Memory<UCH>;

    // Alias of IRCON1
    // /** SFR 0x00B5 IRCON4 */
    // @ext(0x99, 0x04, 0xB5)
    // model IRCON4 is Memory<UCH>;

    // Alias of IRCON1
    // /** SFR 0x00B5 MDU_MD3 */
    // @ext(0x99, 0x04, 0xB5)
    // model MDU_MD3 is Memory<UCH>;

    // Alias of IRCON1
    // /** SFR 0x00B5 MDU_MR3 */
    // @ext(0x99, 0x04, 0xB5)
    // model MDU_MR3 is Memory<UCH>;

    // Alias of IRCON1
    // /** SFR 0x00B5 PMCON1 */
    // @ext(0x99, 0x04, 0xB5)
    // model PMCON1 is Memory<UCH>;

    /** SFR 0x00B6 IRCON2 */
    @ext(0x9a, 0x04, 0xB6)
    model IRCON2 is Memory<UCH>;

    // Alias of IRCON2
    // /** SFR 0x00B6 MDU_MD4 */
    // @ext(0x9a, 0x04, 0xB6)
    // model MDU_MD4 is Memory<UCH>;

    // Alias of IRCON2
    // /** SFR 0x00B6 MDU_MR4 */
    // @ext(0x9a, 0x04, 0xB6)
    // model MDU_MR4 is Memory<UCH>;

    // Alias of IRCON2
    // /** SFR 0x00B6 MODIEN */
    // @ext(0x9a, 0x04, 0xB6)
    // model MODIEN is Memory<UCH>;

    // Alias of IRCON2
    // /** SFR 0x00B6 OSC_CON */
    // @ext(0x9a, 0x04, 0xB6)
    // model OSC_CON is Memory<UCH>;

    /** SFR 0x00B7 EXICON0 */
    @ext(0x9b, 0x04, 0xB7)
    model EXICON0 is Memory<UCH>;

    // Alias of EXICON0
    // /** SFR 0x00B7 MDU_MD5 */
    // @ext(0x9b, 0x04, 0xB7)
    // model MDU_MD5 is Memory<UCH>;

    // Alias of EXICON0
    // /** SFR 0x00B7 MDU_MR5 */
    // @ext(0x9b, 0x04, 0xB7)
    // model MDU_MR5 is Memory<UCH>;

    // Alias of EXICON0
    // /** SFR 0x00B7 MODPISEL1 */
    // @ext(0x9b, 0x04, 0xB7)
    // model MODPISEL1 is Memory<UCH>;

    // Alias of EXICON0
    // /** SFR 0x00B7 PLL_CON */
    // @ext(0x9b, 0x04, 0xB7)
    // model PLL_CON is Memory<UCH>;

    /** SFR 0x00B9 IPH */
    @ext(0x95, 0x04, 0xB9)
    model IPH is Memory<UCH>;

    /** SFR 0x00BA CMCON */
    @ext(0x96, 0x04, 0xBA)
    model CMCON is Memory<UCH>;

    // Alias of CMCON
    // /** SFR 0x00BA EXICON1 */
    // @ext(0x96, 0x04, 0xBA)
    // model EXICON1 is Memory<UCH>;

    // Alias of CMCON
    // /** SFR 0x00BA MODPISEL2 */
    // @ext(0x96, 0x04, 0xBA)
    // model MODPISEL2 is Memory<UCH>;

    /** SFR 0x00BB NMICON */
    @ext(0x97, 0x04, 0xBB)
    model NMICON is Memory<UCH>;

    // Alias of NMICON
    // /** SFR 0x00BB PASSWD */
    // @ext(0x97, 0x04, 0xBB)
    // model PASSWD is Memory<UCH>;

    // Alias of NMICON
    // /** SFR 0x00BB PMCON2 */
    // @ext(0x97, 0x04, 0xBB)
    // model PMCON2 is Memory<UCH>;

    // Alias of NMICON
    // /** SFR 0x00BB WDTCON */
    // @ext(0x97, 0x04, 0xBB)
    // model WDTCON is Memory<UCH>;

    /** SFR 0x00BC NMISR */
    @ext(0x90, 0x04, 0xBC)
    model NMISR is Memory<UCH>;

    // Alias of NMISR
    // /** SFR 0x00BC WDTREL */
    // @ext(0x90, 0x04, 0xBC)
    // model WDTREL is Memory<UCH>;

    /** SFR 0x00BD BCON */
    @ext(0x91, 0x04, 0xBD)
    model BCON is Memory<UCH>;

    // Alias of BCON
    // /** SFR 0x00BD MODSUSP */
    // @ext(0x91, 0x04, 0xBD)
    // model MODSUSP is Memory<UCH>;

    // Alias of BCON
    // /** SFR 0x00BD WDTWINB */
    // @ext(0x91, 0x04, 0xBD)
    // model WDTWINB is Memory<UCH>;

    /** SFR 0x00BE COCON */
    @ext(0x92, 0x04, 0xBE)
    model COCON is Memory<UCH>;

    // Alias of COCON
    // /** SFR 0x00BE MODPISEL3 */
    // @ext(0x92, 0x04, 0xBE)
    // model MODPISEL3 is Memory<UCH>;

    // Alias of COCON
    // /** SFR 0x00BE WDTL */
    // @ext(0x92, 0x04, 0xBE)
    // model WDTL is Memory<UCH>;

    /** SFR 0x00BF SCU_PAGE */
    @ext(0x93, 0x04, 0xBF)
    model SCU_PAGE is Memory<UCH>;

    // Alias of SCU_PAGE
    // /** SFR 0x00BF WDTH */
    // @ext(0x93, 0x04, 0xBF)
    // model WDTH is Memory<UCH>;

    /** SFR 0x00C0 T21_T2CON */
    @ext(0xec, 0x04, 0xC0)
    model T21_T2CON is Memory<UCH>;

    // Alias of T21_T2CON
    // /** SFR 0x00C0 T2CCU_CCEN */
    // @ext(0xec, 0x04, 0xC0)
    // model T2CCU_CCEN is Memory<UCH>;

    // Alias of T21_T2CON
    // /** SFR 0x00C0 T2CCU_COCON */
    // @ext(0xec, 0x04, 0xC0)
    // model T2CCU_COCON is Memory<UCH>;

    // Alias of T21_T2CON
    // /** SFR 0x00C0 T2CCU_COSHDW */
    // @ext(0xec, 0x04, 0xC0)
    // model T2CCU_COSHDW is Memory<UCH>;

    // Alias of T21_T2CON
    // /** SFR 0x00C0 T2_T2CON */
    // @ext(0xec, 0x04, 0xC0)
    // model T2_T2CON is Memory<UCH>;

    /** SFR 0x00C1 T21_T2MOD */
    @ext(0xed, 0x04, 0xC1)
    model T21_T2MOD is Memory<UCH>;

    // Alias of T21_T2MOD
    // /** SFR 0x00C1 T2CCU_CC0L */
    // @ext(0xed, 0x04, 0xC1)
    // model T2CCU_CC0L is Memory<UCH>;

    // Alias of T21_T2MOD
    // /** SFR 0x00C1 T2CCU_CC3L */
    // @ext(0xed, 0x04, 0xC1)
    // model T2CCU_CC3L is Memory<UCH>;

    // Alias of T21_T2MOD
    // /** SFR 0x00C1 T2CCU_CCTBSEL */
    // @ext(0xed, 0x04, 0xC1)
    // model T2CCU_CCTBSEL is Memory<UCH>;

    // Alias of T21_T2MOD
    // /** SFR 0x00C1 T2_T2MOD */
    // @ext(0xed, 0x04, 0xC1)
    // model T2_T2MOD is Memory<UCH>;

    /** SFR 0x00C2 SYS_TIMER_RELOAD_LOW */
    @ext(0xee, 0x04, 0xC2)
    model SYS_TIMER_RELOAD_LOW is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T21_RC2L */
    // @ext(0xee, 0x04, 0xC2)
    // model T21_RC2L is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T2CCU_CC0H */
    // @ext(0xee, 0x04, 0xC2)
    // model T2CCU_CC0H is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T2CCU_CC3H */
    // @ext(0xee, 0x04, 0xC2)
    // model T2CCU_CC3H is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T2CCU_CCTDTCL */
    // @ext(0xee, 0x04, 0xC2)
    // model T2CCU_CCTDTCL is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T2CCU_CCTRELL */
    // @ext(0xee, 0x04, 0xC2)
    // model T2CCU_CCTRELL is Memory<UCH>;

    // Alias of SYS_TIMER_RELOAD_LOW
    // /** SFR 0x00C2 T2_RC2L */
    // @ext(0xee, 0x04, 0xC2)
    // model T2_RC2L is Memory<UCH>;

    /** SFR 0x00C3 CCLO_GPV */
    @ext(0xef, 0x04, 0xC3)
    model CCLO_GPV is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 SYS_TIMER_RELOAD_HIGH */
    // @ext(0xef, 0x04, 0xC3)
    // model SYS_TIMER_RELOAD_HIGH is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T21_RC2H */
    // @ext(0xef, 0x04, 0xC3)
    // model T21_RC2H is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T2CCU_CC1L */
    // @ext(0xef, 0x04, 0xC3)
    // model T2CCU_CC1L is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T2CCU_CC4L */
    // @ext(0xef, 0x04, 0xC3)
    // model T2CCU_CC4L is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T2CCU_CCTDTCH */
    // @ext(0xef, 0x04, 0xC3)
    // model T2CCU_CCTDTCH is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T2CCU_CCTRELH */
    // @ext(0xef, 0x04, 0xC3)
    // model T2CCU_CCTRELH is Memory<UCH>;

    // Alias of CCLO_GPV
    // /** SFR 0x00C3 T2_RC2H */
    // @ext(0xef, 0x04, 0xC3)
    // model T2_RC2H is Memory<UCH>;

    /** SFR 0x00C4 CCHI_GPV */
    @ext(0xe8, 0x04, 0xC4)
    model CCHI_GPV is Memory<UCH>;

    // Alias of CCHI_GPV
    // /** SFR 0x00C4 T21_T2L */
    // @ext(0xe8, 0x04, 0xC4)
    // model T21_T2L is Memory<UCH>;

    // Alias of CCHI_GPV
    // /** SFR 0x00C4 T2CCU_CC1H */
    // @ext(0xe8, 0x04, 0xC4)
    // model T2CCU_CC1H is Memory<UCH>;

    // Alias of CCHI_GPV
    // /** SFR 0x00C4 T2CCU_CC4H */
    // @ext(0xe8, 0x04, 0xC4)
    // model T2CCU_CC4H is Memory<UCH>;

    // Alias of CCHI_GPV
    // /** SFR 0x00C4 T2CCU_CCTL */
    // @ext(0xe8, 0x04, 0xC4)
    // model T2CCU_CCTL is Memory<UCH>;

    // Alias of CCHI_GPV
    // /** SFR 0x00C4 T2_T2L */
    // @ext(0xe8, 0x04, 0xC4)
    // model T2_T2L is Memory<UCH>;

    /** SFR 0x00C5 CCLO_GEBL */
    @ext(0xe9, 0x04, 0xC5)
    model CCLO_GEBL is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 CCLO_PUHZ */
    // @ext(0xe9, 0x04, 0xC5)
    // model CCLO_PUHZ is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 T21_T2H */
    // @ext(0xe9, 0x04, 0xC5)
    // model T21_T2H is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 T2CCU_CC2L */
    // @ext(0xe9, 0x04, 0xC5)
    // model T2CCU_CC2L is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 T2CCU_CC5L */
    // @ext(0xe9, 0x04, 0xC5)
    // model T2CCU_CC5L is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 T2CCU_CCTH */
    // @ext(0xe9, 0x04, 0xC5)
    // model T2CCU_CCTH is Memory<UCH>;

    // Alias of CCLO_GEBL
    // /** SFR 0x00C5 T2_T2H */
    // @ext(0xe9, 0x04, 0xC5)
    // model T2_T2H is Memory<UCH>;

    /** SFR 0x00C6 CCHI_GEBL */
    @ext(0xea, 0x04, 0xC6)
    model CCHI_GEBL is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 CCHI_PUHZ */
    // @ext(0xea, 0x04, 0xC6)
    // model CCHI_PUHZ is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 T21_T2CON1 */
    // @ext(0xea, 0x04, 0xC6)
    // model T21_T2CON1 is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 T2CCU_CC2H */
    // @ext(0xea, 0x04, 0xC6)
    // model T2CCU_CC2H is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 T2CCU_CC5H */
    // @ext(0xea, 0x04, 0xC6)
    // model T2CCU_CC5H is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 T2CCU_CCTCON */
    // @ext(0xea, 0x04, 0xC6)
    // model T2CCU_CCTCON is Memory<UCH>;

    // Alias of CCHI_GEBL
    // /** SFR 0x00C6 T2_T2CON1 */
    // @ext(0xea, 0x04, 0xC6)
    // model T2_T2CON1 is Memory<UCH>;

    /** SFR 0x00C7 T2_PAGE */
    @ext(0xeb, 0x04, 0xC7)
    model T2_PAGE is Memory<UCH>;

    /** SFR 0x00C8 P4_ALTSEL0 */
    @ext(0xe4, 0x04, 0xC8)
    model P4_ALTSEL0 is Memory<UCH>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_DATA */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_DATA is Memory<UCH>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_OD */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_OD is Memory<UCH>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 P4_PUDSEL */
    // @ext(0xe4, 0x04, 0xC8)
    // model P4_PUDSEL is Memory<UCH>;

    // Alias of P4_ALTSEL0
    // /** SFR 0x00C8 UART1_SCON */
    // @ext(0xe4, 0x04, 0xC8)
    // model UART1_SCON is Memory<UCH>;

    /** SFR 0x00C9 P4_ALTSEL1 */
    @ext(0xe5, 0x04, 0xC9)
    model P4_ALTSEL1 is Memory<UCH>;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 P4_DIR */
    // @ext(0xe5, 0x04, 0xC9)
    // model P4_DIR is Memory<UCH>;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 P4_DS */
    // @ext(0xe5, 0x04, 0xC9)
    // model P4_DS is Memory<UCH>;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 P4_PUDEN */
    // @ext(0xe5, 0x04, 0xC9)
    // model P4_PUDEN is Memory<UCH>;

    // Alias of P4_ALTSEL1
    // /** SFR 0x00C9 UART1_SBUF */
    // @ext(0xe5, 0x04, 0xC9)
    // model UART1_SBUF is Memory<UCH>;

    /** SFR 0x00CA ADC_CHCTR0 */
    @ext(0xe6, 0x04, 0xCA)
    model ADC_CHCTR0 is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_CHINFR */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_CHINFR is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_CRCR1 */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_CRCR1 is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_GLOBCTR */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_GLOBCTR is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RCR0 */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RCR0 is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RESR0L */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RESR0L is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA ADC_RESRA0L */
    // @ext(0xe6, 0x04, 0xCA)
    // model ADC_RESRA0L is Memory<UCH>;

    // Alias of ADC_CHCTR0
    // /** SFR 0x00CA UART1_BCON */
    // @ext(0xe6, 0x04, 0xCA)
    // model UART1_BCON is Memory<UCH>;

    /** SFR 0x00CB ADC_CHCTR1 */
    @ext(0xe7, 0x04, 0xCB)
    model ADC_CHCTR1 is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_CHINCR */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_CHINCR is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_CRPR1 */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_CRPR1 is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_GLOBSTR */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_GLOBSTR is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RCR1 */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RCR1 is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RESR0H */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RESR0H is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB ADC_RESRA0H */
    // @ext(0xe7, 0x04, 0xCB)
    // model ADC_RESRA0H is Memory<UCH>;

    // Alias of ADC_CHCTR1
    // /** SFR 0x00CB UART1_BG */
    // @ext(0xe7, 0x04, 0xCB)
    // model UART1_BG is Memory<UCH>;

    /** SFR 0x00CC ADC_CHCTR2 */
    @ext(0xe0, 0x04, 0xCC)
    model ADC_CHCTR2 is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_CHINSR */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_CHINSR is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_CRMR1 */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_CRMR1 is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_PRAR */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_PRAR is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RCR2 */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RCR2 is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RESR1L */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RESR1L is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC ADC_RESRA1L */
    // @ext(0xe0, 0x04, 0xCC)
    // model ADC_RESRA1L is Memory<UCH>;

    // Alias of ADC_CHCTR2
    // /** SFR 0x00CC UART1_FDCON */
    // @ext(0xe0, 0x04, 0xCC)
    // model UART1_FDCON is Memory<UCH>;

    /** SFR 0x00CD ADC_CHCTR3 */
    @ext(0xe1, 0x04, 0xCD)
    model ADC_CHCTR3 is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_CHINPR */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_CHINPR is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_LCBR */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_LCBR is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_QMR0 */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_QMR0 is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RCR3 */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RCR3 is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RESR1H */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RESR1H is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD ADC_RESRA1H */
    // @ext(0xe1, 0x04, 0xCD)
    // model ADC_RESRA1H is Memory<UCH>;

    // Alias of ADC_CHCTR3
    // /** SFR 0x00CD UART1_FDSTEP */
    // @ext(0xe1, 0x04, 0xCD)
    // model UART1_FDSTEP is Memory<UCH>;

    /** SFR 0x00CE ADC_CHCTR4 */
    @ext(0xe2, 0x04, 0xCE)
    model ADC_CHCTR4 is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_EVINFR */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_EVINFR is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_INPCR0 */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_INPCR0 is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_QSR0 */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_QSR0 is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_RESR2L */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_RESR2L is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_RESRA2L */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_RESRA2L is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE ADC_VFCR */
    // @ext(0xe2, 0x04, 0xCE)
    // model ADC_VFCR is Memory<UCH>;

    // Alias of ADC_CHCTR4
    // /** SFR 0x00CE UART1_FDRES */
    // @ext(0xe2, 0x04, 0xCE)
    // model UART1_FDRES is Memory<UCH>;

    /** SFR 0x00CF ADC_CHCTR5 */
    @ext(0xe3, 0x04, 0xCF)
    model ADC_CHCTR5 is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_ETRCR */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_ETRCR is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_EVINCR */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_EVINCR is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_Q0R0 */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_Q0R0 is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_RESR2H */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_RESR2H is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF ADC_RESRA2H */
    // @ext(0xe3, 0x04, 0xCF)
    // model ADC_RESRA2H is Memory<UCH>;

    // Alias of ADC_CHCTR5
    // /** SFR 0x00CF UART1_SCON1 */
    // @ext(0xe3, 0x04, 0xCF)
    // model UART1_SCON1 is Memory<UCH>;

    /** SFR 0x00D0 PSW */
    @ext(0xfc, 0x04, 0xD0)
    model PSW is Memory<UCH>;

    /** SFR 0x00D1 ADC_PAGE */
    @ext(0xfd, 0x04, 0xD1)
    model ADC_PAGE is Memory<UCH>;

    /** SFR 0x00D2 ADC_CHCTR6 */
    @ext(0xfe, 0x04, 0xD2)
    model ADC_CHCTR6 is Memory<UCH>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_EVINSR */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_EVINSR is Memory<UCH>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_QBUR0 */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_QBUR0 is Memory<UCH>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_QINR0 */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_QINR0 is Memory<UCH>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_RESR3L */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_RESR3L is Memory<UCH>;

    // Alias of ADC_CHCTR6
    // /** SFR 0x00D2 ADC_RESRA3L */
    // @ext(0xfe, 0x04, 0xD2)
    // model ADC_RESRA3L is Memory<UCH>;

    /** SFR 0x00D3 ADC_CHCTR7 */
    @ext(0xff, 0x04, 0xD3)
    model ADC_CHCTR7 is Memory<UCH>;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_EVINPR */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_EVINPR is Memory<UCH>;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_RESR3H */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_RESR3H is Memory<UCH>;

    // Alias of ADC_CHCTR7
    // /** SFR 0x00D3 ADC_RESRA3H */
    // @ext(0xff, 0x04, 0xD3)
    // model ADC_RESRA3H is Memory<UCH>;

    /** SFR 0x00D8 CAN_ADCON */
    @ext(0xf4, 0x04, 0xD8)
    model CAN_ADCON is Memory<UCH>;

    /** SFR 0x00D9 CAN_ADL */
    @ext(0xf5, 0x04, 0xD9)
    model CAN_ADL is Memory<UCH>;

    /** SFR 0x00DA CAN_ADH */
    @ext(0xf6, 0x04, 0xDA)
    model CAN_ADH is Memory<UCH>;

    /** SFR 0x00DB CAN_DATA0 */
    @ext(0xf7, 0x04, 0xDB)
    model CAN_DATA0 is Memory<UCH>;

    /** SFR 0x00DC CAN_DATA1 */
    @ext(0xf0, 0x04, 0xDC)
    model CAN_DATA1 is Memory<UCH>;

    /** SFR 0x00DD CAN_DATA2 */
    @ext(0xf1, 0x04, 0xDD)
    model CAN_DATA2 is Memory<UCH>;

    /** SFR 0x00DE CAN_DATA3 */
    @ext(0xf2, 0x04, 0xDE)
    model CAN_DATA3 is Memory<UCH>;

    /** SFR 0x00E0 ACC */
    @ext(0xcc, 0x04, 0xE0)
    model ACC is Memory<UCH>;

    /** SFR 0x00E8 IEN1 */
    @ext(0xc4, 0x04, 0xE8)
    model IEN1 is Memory<UCH>;

    /** SFR 0x00E9 FDCON */
    @ext(0xc5, 0x04, 0xE9)
    model FDCON is Memory<UCH>;

    // Alias of FDCON
    // /** SFR 0x00E9 MISC_CON */
    // @ext(0xc5, 0x04, 0xE9)
    // model MISC_CON is Memory<UCH>;

    // Alias of FDCON
    // /** SFR 0x00E9 MMCR2 */
    // @ext(0xc5, 0x04, 0xE9)
    // model MMCR2 is Memory<UCH>;

    /** SFR 0x00EA FDSTEP */
    @ext(0xc6, 0x04, 0xEA)
    model FDSTEP is Memory<UCH>;

    // Alias of FDSTEP
    // /** SFR 0x00EA MEXTCR */
    // @ext(0xc6, 0x04, 0xEA)
    // model MEXTCR is Memory<UCH>;

    // Alias of FDSTEP
    // /** SFR 0x00EA MODPISEL4 */
    // @ext(0xc6, 0x04, 0xEA)
    // model MODPISEL4 is Memory<UCH>;

    // Alias of FDSTEP
    // /** SFR 0x00EA PLL_CON1 */
    // @ext(0xc6, 0x04, 0xEA)
    // model PLL_CON1 is Memory<UCH>;

    /** SFR 0x00EB CR_MISC */
    @ext(0xc7, 0x04, 0xEB)
    model CR_MISC is Memory<UCH>;

    // Alias of CR_MISC
    // /** SFR 0x00EB FDRES */
    // @ext(0xc7, 0x04, 0xEB)
    // model FDRES is Memory<UCH>;

    // Alias of CR_MISC
    // /** SFR 0x00EB MMWR1 */
    // @ext(0xc7, 0x04, 0xEB)
    // model MMWR1 is Memory<UCH>;

    /** SFR 0x00EC MMWR2 */
    @ext(0xc0, 0x04, 0xEC)
    model MMWR2 is Memory<UCH>;

    /** SFR 0x00F1 MMCR */
    @ext(0xdd, 0x04, 0xF1)
    model MMCR is Memory<UCH>;

    /** SFR 0x00F2 MMSR */
    @ext(0xde, 0x04, 0xF2)
    model MMSR is Memory<UCH>;

    /** SFR 0x00F3 MMBPCR */
    @ext(0xdf, 0x04, 0xF3)
    model MMBPCR is Memory<UCH>;

    /** SFR 0x00F4 MMICR */
    @ext(0xd8, 0x04, 0xF4)
    model MMICR is Memory<UCH>;

    /** SFR 0x00F5 MMDR */
    @ext(0xd9, 0x04, 0xF5)
    model MMDR is Memory<UCH>;

    /** SFR 0x00F6 HWBPSR */
    @ext(0xda, 0x04, 0xF6)
    model HWBPSR is Memory<UCH>;

    /** SFR 0x00F7 HWBPDR */
    @ext(0xdb, 0x04, 0xF7)
    model HWBPDR is Memory<UCH>;

    /** SFR 0x00F8 IP1 */
    @ext(0xd4, 0x04, 0xF8)
    model IP1 is Memory<UCH>;

    /** SFR 0x00F9 IPH1 */
    @ext(0xd5, 0x04, 0xF9)
    model IPH1 is Memory<UCH>;

    /** SFR 0x00FA CCU6_CC60RL */
    @ext(0xd6, 0x04, 0xFA)
    model CCU6_CC60RL is Memory<UCH>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_CC60SRL */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_CC60SRL is Memory<UCH>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_T12L */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_T12L is Memory<UCH>;

    // Alias of CCU6_CC60RL
    // /** SFR 0x00FA CCU6_TCTR2L */
    // @ext(0xd6, 0x04, 0xFA)
    // model CCU6_TCTR2L is Memory<UCH>;

    /** SFR 0x00FB CCU6_CC60RH */
    @ext(0xd7, 0x04, 0xFB)
    model CCU6_CC60RH is Memory<UCH>;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_CC60SRH */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_CC60SRH is Memory<UCH>;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_T12H */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_T12H is Memory<UCH>;

    // Alias of CCU6_CC60RH
    // /** SFR 0x00FB CCU6_TCTR2H */
    // @ext(0xd7, 0x04, 0xFB)
    // model CCU6_TCTR2H is Memory<UCH>;

    /** SFR 0x00FC CCU6_CC61RL */
    @ext(0xd0, 0x04, 0xFC)
    model CCU6_CC61RL is Memory<UCH>;

    // Alias of CCU6_CC61RL
    // /** SFR 0x00FC CCU6_CC61SRL */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_CC61SRL is Memory<UCH>;

    // Alias of CCU6_CC61RL
    // /** SFR 0x00FC CCU6_MODCTRL */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_MODCTRL is Memory<UCH>;

    // Alias of CCU6_CC61RL
    // /** SFR 0x00FC CCU6_T13L */
    // @ext(0xd0, 0x04, 0xFC)
    // model CCU6_T13L is Memory<UCH>;

    /** SFR 0x00FD CCU6_CC61RH */
    @ext(0xd1, 0x04, 0xFD)
    model CCU6_CC61RH is Memory<UCH>;

    // Alias of CCU6_CC61RH
    // /** SFR 0x00FD CCU6_CC61SRH */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_CC61SRH is Memory<UCH>;

    // Alias of CCU6_CC61RH
    // /** SFR 0x00FD CCU6_MODCTRH */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_MODCTRH is Memory<UCH>;

    // Alias of CCU6_CC61RH
    // /** SFR 0x00FD CCU6_T13H */
    // @ext(0xd1, 0x04, 0xFD)
    // model CCU6_T13H is Memory<UCH>;

    /** SFR 0x00FE CCU6_CC62RL */
    @ext(0xd2, 0x04, 0xFE)
    model CCU6_CC62RL is Memory<UCH>;

    // Alias of CCU6_CC62RL
    // /** SFR 0x00FE CCU6_CC62SRL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_CC62SRL is Memory<UCH>;

    // Alias of CCU6_CC62RL
    // /** SFR 0x00FE CCU6_CMPSTATL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_CMPSTATL is Memory<UCH>;

    // Alias of CCU6_CC62RL
    // /** SFR 0x00FE CCU6_TRPCTRL */
    // @ext(0xd2, 0x04, 0xFE)
    // model CCU6_TRPCTRL is Memory<UCH>;

    /** SFR 0x00FF CCU6_CC62RH */
    @ext(0xd3, 0x04, 0xFF)
    model CCU6_CC62RH is Memory<UCH>;

    // Alias of CCU6_CC62RH
    // /** SFR 0x00FF CCU6_CC62SRH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_CC62SRH is Memory<UCH>;

    // Alias of CCU6_CC62RH
    // /** SFR 0x00FF CCU6_CMPSTATH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_CMPSTATH is Memory<UCH>;

    // Alias of CCU6_CC62RH
    // /** SFR 0x00FF CCU6_TRPCTRH */
    // @ext(0xd3, 0x04, 0xFF)
    // model CCU6_TRPCTRH is Memory<UCH>;


    // ====================================
    // --- Konstanten ---
    // ====================================

    /** Konstanten 0x0000 ACK_5002_BIT */
    @ext(0xb8, 0x02, 0x00)
    model ACK_5002_BIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ACK_REG_STOP_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_REG_STOP_BIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ADC_PAGE0 */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_PAGE0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ADC_SHORT */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_SHORT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AIN2_ERR_VL3 */
    // @ext(0xb8, 0x02, 0x00)
    // model AIN2_ERR_VL3 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AIN_VL3_ERRORS */
    // @ext(0xb8, 0x02, 0x00)
    // model AIN_VL3_ERRORS is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AI_REF */
    // @ext(0xb8, 0x02, 0x00)
    // model AI_REF is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ALL_PINS_IN */
    // @ext(0xb8, 0x02, 0x00)
    // model ALL_PINS_IN is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 BCC */
    // @ext(0xb8, 0x02, 0x00)
    // model BCC is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 BSDI */
    // @ext(0xb8, 0x02, 0x00)
    // model BSDI is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 BUSY */
    // @ext(0xb8, 0x02, 0x00)
    // model BUSY is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 CCU6_PAGE0 */
    // @ext(0xb8, 0x02, 0x00)
    // model CCU6_PAGE0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 DIAG_SL */
    // @ext(0xb8, 0x02, 0x00)
    // model DIAG_SL is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EBUS_S7 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_S7 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EBUS_SCHICHT_2 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_SCHICHT_2 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EEA_PAGE_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_PAGE_DEFAULT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EE_PARAS */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_PARAS is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EM_DE_OVFLOW_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model EM_DE_OVFLOW_BIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EPK */
    // @ext(0xb8, 0x02, 0x00)
    // model EPK is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 FASTINIT */
    // @ext(0xb8, 0x02, 0x00)
    // model FASTINIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 GERAETETYP2_WCM3 */
    // @ext(0xb8, 0x02, 0x00)
    // model GERAETETYP2_WCM3 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 GERAETETYP2_WCM3C */
    // @ext(0xb8, 0x02, 0x00)
    // model GERAETETYP2_WCM3C is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 GERAETETYP2_WCM4 */
    // @ext(0xb8, 0x02, 0x00)
    // model GERAETETYP2_WCM4 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 GFA */
    // @ext(0xb8, 0x02, 0x00)
    // model GFA is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 HARD */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ICSBEDARFBIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ICSBEDARFBIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IDLE */
    // @ext(0xb8, 0x02, 0x00)
    // model IDLE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 INTMATH */
    // @ext(0xb8, 0x02, 0x00)
    // model INTMATH is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONCALHI */
    // @ext(0xb8, 0x02, 0x00)
    // model IONCALHI is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONCHK */
    // @ext(0xb8, 0x02, 0x00)
    // model IONCHK is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONGET */
    // @ext(0xb8, 0x02, 0x00)
    // model IONGET is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONGET_WCM3 */
    // @ext(0xb8, 0x02, 0x00)
    // model IONGET_WCM3 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONGPV */
    // @ext(0xb8, 0x02, 0x00)
    // model IONGPV is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONPARA */
    // @ext(0xb8, 0x02, 0x00)
    // model IONPARA is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONSET */
    // @ext(0xb8, 0x02, 0x00)
    // model IONSET is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONSOLL */
    // @ext(0xb8, 0x02, 0x00)
    // model IONSOLL is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONVAR */
    // @ext(0xb8, 0x02, 0x00)
    // model IONVAR is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONXCHG */
    // @ext(0xb8, 0x02, 0x00)
    // model IONXCHG is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ION_FILT */
    // @ext(0xb8, 0x02, 0x00)
    // model ION_FILT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ION_REG */
    // @ext(0xb8, 0x02, 0x00)
    // model ION_REG is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 KMOISSAVED_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model KMOISSAVED_BIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 KM_OPT_KONFI_UNDEFINED */
    // @ext(0xb8, 0x02, 0x00)
    // model KM_OPT_KONFI_UNDEFINED is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 LCD */
    // @ext(0xb8, 0x02, 0x00)
    // model LCD is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 LCD_HT1621 */
    // @ext(0xb8, 0x02, 0x00)
    // model LCD_HT1621 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_KAMINKEHRE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_KAMINKEHRE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_SONNE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NDIV_XC878_PLL_CON1 */
    // @ext(0xb8, 0x02, 0x00)
    // model NDIV_XC878_PLL_CON1 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NGDELTAT */
    // @ext(0xb8, 0x02, 0x00)
    // model NGDELTAT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NG_REG_UPM */
    // @ext(0xb8, 0x02, 0x00)
    // model NG_REG_UPM is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NR_XC878 */
    // @ext(0xb8, 0x02, 0x00)
    // model NR_XC878 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 OD_XC878 */
    // @ext(0xb8, 0x02, 0x00)
    // model OD_XC878 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 PORT_PAGE0 */
    // @ext(0xb8, 0x02, 0x00)
    // model PORT_PAGE0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 RAMROM */
    // @ext(0xb8, 0x02, 0x00)
    // model RAMROM is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 SCU_PAGE0 */
    // @ext(0xb8, 0x02, 0x00)
    // model SCU_PAGE0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ST_L_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model ST_L_SONNE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 SWITCH_MUX_Y0 */
    // @ext(0xb8, 0x02, 0x00)
    // model SWITCH_MUX_Y0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 SYS_DIS */
    // @ext(0xb8, 0x02, 0x00)
    // model SYS_DIS is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 T2_PAGE0 */
    // @ext(0xb8, 0x02, 0x00)
    // model T2_PAGE0 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 USER */
    // @ext(0xb8, 0x02, 0x00)
    // model USER is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 V24_KM_ADR_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model V24_KM_ADR_DEFAULT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 VAR */
    // @ext(0xb8, 0x02, 0x00)
    // model VAR is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 VHI_PARA */
    // @ext(0xb8, 0x02, 0x00)
    // model VHI_PARA is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 VL3_SHORT_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model VL3_SHORT_BIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 WAU_SHORT_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model WAU_SHORT_BIT is Memory<UCH>;

    /** Konstanten 0x0001 ACK_5002 */
    @ext(0xb9, 0x02, 0x01)
    model ACK_5002 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ACK_500A_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_500A_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ACK_REG_STOP */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_REG_STOP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ADC_PAGE1 */
    // @ext(0xb9, 0x02, 0x01)
    // model ADC_PAGE1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 AIN_ERR_WAU */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_ERR_WAU is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 CB_QQ_M1 */
    // @ext(0xb9, 0x02, 0x01)
    // model CB_QQ_M1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 CCU6_PAGE1 */
    // @ext(0xb9, 0x02, 0x01)
    // model CCU6_PAGE1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 EEA_CONST_ANF */
    // @ext(0xb9, 0x02, 0x01)
    // model EEA_CONST_ANF is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 EM_DA_CROSS_TALK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model EM_DA_CROSS_TALK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 FW_GFATYP */
    // @ext(0xb9, 0x02, 0x01)
    // model FW_GFATYP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ICSBEDARF */
    // @ext(0xb9, 0x02, 0x01)
    // model ICSBEDARF is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ICSPREPAREBIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ICSPREPAREBIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 IEM_ION_XW */
    // @ext(0xb9, 0x02, 0x01)
    // model IEM_ION_XW is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KMOHASCHANGED_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model KMOHASCHANGED_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KMOISSAVED */
    // @ext(0xb9, 0x02, 0x01)
    // model KMOISSAVED is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MASK_RECHTS */
    // @ext(0xb9, 0x02, 0x01)
    // model MASK_RECHTS is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MAX_OK */
    // @ext(0xb9, 0x02, 0x01)
    // model MAX_OK is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MENU_L_I */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_L_I is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MENU_U_KAMINKEHRER */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_U_KAMINKEHRER is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 PI_ESCMAXP1_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model PI_ESCMAXP1_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 PORT_PAGE1 */
    // @ext(0xb9, 0x02, 0x01)
    // model PORT_PAGE1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 REGSTOPP */
    // @ext(0xb9, 0x02, 0x01)
    // model REGSTOPP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SCU_PAGE1 */
    // @ext(0xb9, 0x02, 0x01)
    // model SCU_PAGE1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SEG_F */
    // @ext(0xb9, 0x02, 0x01)
    // model SEG_F is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SET_CS_PIN */
    // @ext(0xb9, 0x02, 0x01)
    // model SET_CS_PIN is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SET_RMAP_MASK */
    // @ext(0xb9, 0x02, 0x01)
    // model SET_RMAP_MASK is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ST_R_FLAMME */
    // @ext(0xb9, 0x02, 0x01)
    // model ST_R_FLAMME is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SYS_EN */
    // @ext(0xb9, 0x02, 0x01)
    // model SYS_EN is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 T2_PAGE1 */
    // @ext(0xb9, 0x02, 0x01)
    // model T2_PAGE1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 TCVSP_CONST_WCM3 */
    // @ext(0xb9, 0x02, 0x01)
    // model TCVSP_CONST_WCM3 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 TVIST_SHORT_MASK */
    // @ext(0xb9, 0x02, 0x01)
    // model TVIST_SHORT_MASK is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 VALID_WCM3C_SOFTREV */
    // @ext(0xb9, 0x02, 0x01)
    // model VALID_WCM3C_SOFTREV is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 VL3_BREAK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model VL3_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 WAU_BREAK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model WAU_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 WC_CALIBABW */
    // @ext(0xb9, 0x02, 0x01)
    // model WC_CALIBABW is Memory<UCH>;

    /** Konstanten 0x0002 ACK_500A */
    @ext(0xba, 0x02, 0x02)
    model ACK_500A is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ADC_PAGE2 */
    // @ext(0xba, 0x02, 0x02)
    // model ADC_PAGE2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 AF_SHORT_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model AF_SHORT_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 AI_TVL3 */
    // @ext(0xba, 0x02, 0x02)
    // model AI_TVL3 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ASCII_B10 */
    // @ext(0xba, 0x02, 0x02)
    // model ASCII_B10 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 CB_QQ_ANY */
    // @ext(0xba, 0x02, 0x02)
    // model CB_QQ_ANY is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 CCU6_PAGE2 */
    // @ext(0xba, 0x02, 0x02)
    // model CCU6_PAGE2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 CYC_PER_NOP */
    // @ext(0xba, 0x02, 0x02)
    // model CYC_PER_NOP is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 EM_SYNC_RES_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model EM_SYNC_RES_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 EPWARNMAN__GDW_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model EPWARNMAN__GDW_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 GAKASKADE */
    // @ext(0xba, 0x02, 0x02)
    // model GAKASKADE is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 HKS_FAKT */
    // @ext(0xba, 0x02, 0x02)
    // model HKS_FAKT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 HZZVV2BIT */
    // @ext(0xba, 0x02, 0x02)
    // model HZZVV2BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 I12_GED_TAUSSEN */
    // @ext(0xba, 0x02, 0x02)
    // model I12_GED_TAUSSEN is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ICSPREPARE */
    // @ext(0xba, 0x02, 0x02)
    // model ICSPREPARE is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ICSRUNBIT */
    // @ext(0xba, 0x02, 0x02)
    // model ICSRUNBIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 IEM_DYGPVTOL */
    // @ext(0xba, 0x02, 0x02)
    // model IEM_DYGPVTOL is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KMOB11_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model KMOB11_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KMOHASCHANGED */
    // @ext(0xba, 0x02, 0x02)
    // model KMOHASCHANGED is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 LCD_OFF */
    // @ext(0xba, 0x02, 0x02)
    // model LCD_OFF is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MASK_LINKS */
    // @ext(0xba, 0x02, 0x02)
    // model MASK_LINKS is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MB_2_INIT */
    // @ext(0xba, 0x02, 0x02)
    // model MB_2_INIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MENU_L_CURSER_I */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_L_CURSER_I is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MENU_U_WASSERHAHN */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_U_WASSERHAHN is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 M_SET_REGSTOPP */
    // @ext(0xba, 0x02, 0x02)
    // model M_SET_REGSTOPP is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 NIMPSPERUMD */
    // @ext(0xba, 0x02, 0x02)
    // model NIMPSPERUMD is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 PI_ESCMAXP1 */
    // @ext(0xba, 0x02, 0x02)
    // model PI_ESCMAXP1 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 PI_SIGNED_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model PI_SIGNED_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 PORT_PAGE2 */
    // @ext(0xba, 0x02, 0x02)
    // model PORT_PAGE2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SCU_PAGE2 */
    // @ext(0xba, 0x02, 0x02)
    // model SCU_PAGE2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SEG_A */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_A is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SET_RD_PIN */
    // @ext(0xba, 0x02, 0x02)
    // model SET_RD_PIN is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ST_R_RADIATOR */
    // @ext(0xba, 0x02, 0x02)
    // model ST_R_RADIATOR is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 T2_PAGE2 */
    // @ext(0xba, 0x02, 0x02)
    // model T2_PAGE2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TAUFLOES_INV */
    // @ext(0xba, 0x02, 0x02)
    // model TAUFLOES_INV is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TIDLE_R2 */
    // @ext(0xba, 0x02, 0x02)
    // model TIDLE_R2 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TI_05_07_PC */
    // @ext(0xba, 0x02, 0x02)
    // model TI_05_07_PC is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 VHI_MITKOMMA */
    // @ext(0xba, 0x02, 0x02)
    // model VHI_MITKOMMA is Memory<UCH>;

    /** Konstanten 0x0003 ADC_MXCODE */
    @ext(0xbb, 0x02, 0x03)
    model ADC_MXCODE is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ADC_PAGE3 */
    // @ext(0xbb, 0x02, 0x03)
    // model ADC_PAGE3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 AF_BREAK_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model AF_BREAK_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 AIN_WAU_ERRORS */
    // @ext(0xbb, 0x02, 0x03)
    // model AIN_WAU_ERRORS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 AI_TABG */
    // @ext(0xbb, 0x02, 0x03)
    // model AI_TABG is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ANZ_GERAETE_DATS */
    // @ext(0xbb, 0x02, 0x03)
    // model ANZ_GERAETE_DATS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CALIBERRMAX */
    // @ext(0xbb, 0x02, 0x03)
    // model CALIBERRMAX is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CALIBMXAUSREISS */
    // @ext(0xbb, 0x02, 0x03)
    // model CALIBMXAUSREISS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CCU6_PAGE3 */
    // @ext(0xbb, 0x02, 0x03)
    // model CCU6_PAGE3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EM_SYNC_IRPT_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model EM_SYNC_IRPT_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EP17_NOT_AUS */
    // @ext(0xbb, 0x02, 0x03)
    // model EP17_NOT_AUS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EPWARNMAN__AKTIV */
    // @ext(0xbb, 0x02, 0x03)
    // model EPWARNMAN__AKTIV is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 GERAETETYP_WCM3 */
    // @ext(0xbb, 0x02, 0x03)
    // model GERAETETYP_WCM3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ICSPOSTRUNBIT */
    // @ext(0xbb, 0x02, 0x03)
    // model ICSPOSTRUNBIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 IEM_WIND */
    // @ext(0xbb, 0x02, 0x03)
    // model IEM_WIND is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ION_KP__NGGRADUP */
    // @ext(0xbb, 0x02, 0x03)
    // model ION_KP__NGGRADUP is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ION_KTN__NGGRADDOWN */
    // @ext(0xbb, 0x02, 0x03)
    // model ION_KTN__NGGRADDOWN is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 KMOB10_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model KMOB10_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 LCD_ON */
    // @ext(0xbb, 0x02, 0x03)
    // model LCD_ON is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 M2_REQ_REGSTP */
    // @ext(0xbb, 0x02, 0x03)
    // model M2_REQ_REGSTP is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 MENU_U_CURSER_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_MOND is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 MENU_U_CURSER_WASSERHAHN */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_WASSERHAHN is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 MINIONREGFAKT */
    // @ext(0xbb, 0x02, 0x03)
    // model MINIONREGFAKT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY11 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY11 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 NSY12 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY12 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 N_50HZ_IN */
    // @ext(0xbb, 0x02, 0x03)
    // model N_50HZ_IN is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 PI_MITKOMMA_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model PI_MITKOMMA_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 PORT_PAGE3 */
    // @ext(0xbb, 0x02, 0x03)
    // model PORT_PAGE3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 QQ_M11 */
    // @ext(0xbb, 0x02, 0x03)
    // model QQ_M11 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 SCU_PAGE3 */
    // @ext(0xbb, 0x02, 0x03)
    // model SCU_PAGE3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ST_L_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model ST_L_MOND is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 T2_PAGE3 */
    // @ext(0xbb, 0x02, 0x03)
    // model T2_PAGE3 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 VALID_WCM3_SOFTREV */
    // @ext(0xbb, 0x02, 0x03)
    // model VALID_WCM3_SOFTREV is Memory<UCH>;

    /** Konstanten 0x0004 ADC_PAGE4 */
    @ext(0xbc, 0x02, 0x04)
    model ADC_PAGE4 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AIN_ERR_AF */
    // @ext(0xbc, 0x02, 0x04)
    // model AIN_ERR_AF is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_4_20MA */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_4_20MA is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_TAF */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TAF is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_TB10 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TB10 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_TB11 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TB11 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_TVL2 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TVL2 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 AI_TWAU */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TWAU is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 B11_SHORT_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model B11_SHORT_BIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 CALIBMINPLUS */
    // @ext(0xbc, 0x02, 0x04)
    // model CALIBMINPLUS is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 CALIBMULFAKTOR */
    // @ext(0xbc, 0x02, 0x04)
    // model CALIBMULFAKTOR is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 CNTIORANGEFILTABW_WCM4 */
    // @ext(0xbc, 0x02, 0x04)
    // model CNTIORANGEFILTABW_WCM4 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 EM_ACT_OVFLOW_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model EM_ACT_OVFLOW_BIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 EPWARNMAN__GDW */
    // @ext(0xbc, 0x02, 0x04)
    // model EPWARNMAN__GDW is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 GERAETETYP_WCM4 */
    // @ext(0xbc, 0x02, 0x04)
    // model GERAETETYP_WCM4 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 HZZVV2MASK */
    // @ext(0xbc, 0x02, 0x04)
    // model HZZVV2MASK is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 ICSRUN */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSRUN is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 ICSSTATISTIKBIT */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSSTATISTIKBIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 IEM_YGPVMIN */
    // @ext(0xbc, 0x02, 0x04)
    // model IEM_YGPVMIN is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 ION_SOLL_CRC_NOK */
    // @ext(0xbc, 0x02, 0x04)
    // model ION_SOLL_CRC_NOK is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 KMOB11 */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOB11 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 KMOPUPWM_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOPUPWM_BIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 MENU_L_P */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_L_P is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 MENU_U_SCHIRM */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_U_SCHIRM is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 NMVV2BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model NMVV2BIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 PC_REQ_REGSTP */
    // @ext(0xbc, 0x02, 0x04)
    // model PC_REQ_REGSTP is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 PI_MINVALPROC_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model PI_MINVALPROC_BIT is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 PI_SIGNED */
    // @ext(0xbc, 0x02, 0x04)
    // model PI_SIGNED is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 SEG_B */
    // @ext(0xbc, 0x02, 0x04)
    // model SEG_B is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 SET_WR_PIN */
    // @ext(0xbc, 0x02, 0x04)
    // model SET_WR_PIN is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 ST_R_WASSERHAHN */
    // @ext(0xbc, 0x02, 0x04)
    // model ST_R_WASSERHAHN is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 T2_PAGE4 */
    // @ext(0xbc, 0x02, 0x04)
    // model T2_PAGE4 is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 TA_AUFLOESUNG */
    // @ext(0xbc, 0x02, 0x04)
    // model TA_AUFLOESUNG is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 TIMER_DIS */
    // @ext(0xbc, 0x02, 0x04)
    // model TIMER_DIS is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 VALID_WCM4_SOFTREV */
    // @ext(0xbc, 0x02, 0x04)
    // model VALID_WCM4_SOFTREV is Memory<UCH>;

    // Alias of ADC_PAGE4
    // /** Konstanten 0x0004 VL2_SHORT_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model VL2_SHORT_BIT is Memory<UCH>;

    /** Konstanten 0x0005 ADC_PAGE5 */
    @ext(0xbd, 0x02, 0x05)
    model ADC_PAGE5 is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 AI_TVL */
    // @ext(0xbd, 0x02, 0x05)
    // model AI_TVL is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 B11_BREAK_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model B11_BREAK_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 BIT_SERVICE */
    // @ext(0xbd, 0x02, 0x05)
    // model BIT_SERVICE is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 CNTIORANGEFILTABW_WCM3 */
    // @ext(0xbd, 0x02, 0x05)
    // model CNTIORANGEFILTABW_WCM3 is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 EM_EE_RW_ERR_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model EM_EE_RW_ERR_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 ERDGAS_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ERDGAS_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 HZZVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model HZZVVBIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 ICSCALIBNEXTIOABWBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ICSCALIBNEXTIOABWBIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 IONSOLLKORRTLMAX */
    // @ext(0xbd, 0x02, 0x05)
    // model IONSOLLKORRTLMAX is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 KMOAF_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model KMOAF_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 LENPARAINFOITEM */
    // @ext(0xbd, 0x02, 0x05)
    // model LENPARAINFOITEM is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 MAXGFASTART */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXGFASTART is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 MAXIOISTABW */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXIOISTABW is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 MENU_U_CURSER_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_CURSER_SCHIRM is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 MENU_U_MOND */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_MOND is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 NMVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model NMVVBIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 PI_MAXVALPROC_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model PI_MAXVALPROC_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 REF_FUSE */
    // @ext(0xbd, 0x02, 0x05)
    // model REF_FUSE is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 ST_L_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model ST_L_SCHIRM is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 TCVSP_CONST_WCM4 */
    // @ext(0xbd, 0x02, 0x05)
    // model TCVSP_CONST_WCM4 is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 V24_KM_ADR_MAX */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 VL2_BREAK_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model VL2_BREAK_BIT is Memory<UCH>;

    // Alias of ADC_PAGE5
    // /** Konstanten 0x0005 WDT_DIS */
    // @ext(0xbd, 0x02, 0x05)
    // model WDT_DIS is Memory<UCH>;

    /** Konstanten 0x0006 ADC_PAGE6 */
    @ext(0xbe, 0x02, 0x06)
    model ADC_PAGE6 is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 B10_SHORT_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model B10_SHORT_BIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 BEEDITPARA */
    // @ext(0xbe, 0x02, 0x06)
    // model BEEDITPARA is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 DELAY_1US */
    // @ext(0xbe, 0x02, 0x06)
    // model DELAY_1US is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 EM_S5_DAT_CRC_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model EM_S5_DAT_CRC_BIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 EXTWST */
    // @ext(0xbe, 0x02, 0x06)
    // model EXTWST is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 ICSCALIBNEXTSTARTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model ICSCALIBNEXTSTARTBIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 IEM_DUMMYTESTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model IEM_DUMMYTESTBIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 IONSOLLFILT_T1 */
    // @ext(0xbe, 0x02, 0x06)
    // model IONSOLLFILT_T1 is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 ION_ON */
    // @ext(0xbe, 0x02, 0x06)
    // model ION_ON is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 ISP_X_SPLIT_2DX */
    // @ext(0xbe, 0x02, 0x06)
    // model ISP_X_SPLIT_2DX is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 KMO4_20MA_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model KMO4_20MA_BIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 LIMIOCALIB_N_ZUE */
    // @ext(0xbe, 0x02, 0x06)
    // model LIMIOCALIB_N_ZUE is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 LMAINPARACRC */
    // @ext(0xbe, 0x02, 0x06)
    // model LMAINPARACRC is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 MENU_L_CURSER_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_FLAMME_AUS is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 MENU_L_CURSER_P */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_P is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 MENU_L_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_FLAMME_AUS is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 MENU_U_SCHLUESSEL */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SCHLUESSEL is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 MENU_U_SONNE */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SONNE is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 NHISTERR */
    // @ext(0xbe, 0x02, 0x06)
    // model NHISTERR is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 NMHZBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model NMHZBIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 NOPS_PER_1US */
    // @ext(0xbe, 0x02, 0x06)
    // model NOPS_PER_1US is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 PI_OFFVAL_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model PI_OFFVAL_BIT is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 ST_R_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model ST_R_FLAMME_AUS is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 TIMER_EN */
    // @ext(0xbe, 0x02, 0x06)
    // model TIMER_EN is Memory<UCH>;

    // Alias of ADC_PAGE6
    // /** Konstanten 0x0006 V24_TECHOHW */
    // @ext(0xbe, 0x02, 0x06)
    // model V24_TECHOHW is Memory<UCH>;

    /** Konstanten 0x0007 ACK_FE01_BIT */
    @ext(0xbf, 0x02, 0x07)
    model ACK_FE01_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 AIN_FS_MIN_SATT */
    // @ext(0xbf, 0x02, 0x07)
    // model AIN_FS_MIN_SATT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 B10_BREAK_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model B10_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EE_PAGES */
    // @ext(0xbf, 0x02, 0x07)
    // model EE_PAGES is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EM_RAM_ROM_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model EM_RAM_ROM_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EP15RTHZEIT__BRFG */
    // @ext(0xbf, 0x02, 0x07)
    // model EP15RTHZEIT__BRFG is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EP15RTHZEIT__H1IN */
    // @ext(0xbf, 0x02, 0x07)
    // model EP15RTHZEIT__H1IN is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EPIONSOLLSTARTGRAD__SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model EPIONSOLLSTARTGRAD__SELF is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 HZ_KTND__I */
    // @ext(0xbf, 0x02, 0x07)
    // model HZ_KTND__I is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 ICSMITLUFTBIT */
    // @ext(0xbf, 0x02, 0x07)
    // model ICSMITLUFTBIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 IEM_TIMEOUTBIT */
    // @ext(0xbf, 0x02, 0x07)
    // model IEM_TIMEOUTBIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 KILL_WCM_WST */
    // @ext(0xbf, 0x02, 0x07)
    // model KILL_WCM_WST is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 KMOBWZ2_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model KMOBWZ2_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 KMOSPEICHER_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model KMOSPEICHER_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 MENU_U_CURSER_SCHLUESSEL */
    // @ext(0xbf, 0x02, 0x07)
    // model MENU_U_CURSER_SCHLUESSEL is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 PI_SHOWSONDER_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model PI_SHOWSONDER_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 ST_L_FROST */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_FROST is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 ST_L_STBY */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_STBY is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 TFRS_ANLAGE__H2IN */
    // @ext(0xbf, 0x02, 0x07)
    // model TFRS_ANLAGE__H2IN is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 TFRS_ANLAGE__WWFG */
    // @ext(0xbf, 0x02, 0x07)
    // model TFRS_ANLAGE__WWFG is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 VZBIT_TFRS_ANLAGE_SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model VZBIT_TFRS_ANLAGE_SELF is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 WDT_EN */
    // @ext(0xbf, 0x02, 0x07)
    // model WDT_EN is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 WW_HYS__SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model WW_HYS__SELF is Memory<UCH>;

    /** Konstanten 0x0008 ASCII_B11 */
    @ext(0xb0, 0x02, 0x08)
    model ASCII_B11 is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ASCII_MIN */
    // @ext(0xb0, 0x02, 0x08)
    // model ASCII_MIN is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 EP15RTHZEIT_DTVL_DIV */
    // @ext(0xb0, 0x02, 0x08)
    // model EP15RTHZEIT_DTVL_DIV is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ICSPOSTRUN */
    // @ext(0xb0, 0x02, 0x08)
    // model ICSPOSTRUN is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 IEM_YGPVMAX */
    // @ext(0xb0, 0x02, 0x08)
    // model IEM_YGPVMAX is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ION_HS_GAIN */
    // @ext(0xb0, 0x02, 0x08)
    // model ION_HS_GAIN is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ION_HS_GAIN__ */
    // @ext(0xb0, 0x02, 0x08)
    // model ION_HS_GAIN__ is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ION_OFF */
    // @ext(0xb0, 0x02, 0x08)
    // model ION_OFF is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 KMOB10 */
    // @ext(0xb0, 0x02, 0x08)
    // model KMOB10 is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 M_SET_M2_RQ_RS */
    // @ext(0xb0, 0x02, 0x08)
    // model M_SET_M2_RQ_RS is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 NGREGNORM */
    // @ext(0xb0, 0x02, 0x08)
    // model NGREGNORM is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 PI_MITKOMMA */
    // @ext(0xb0, 0x02, 0x08)
    // model PI_MITKOMMA is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 SEG_G */
    // @ext(0xb0, 0x02, 0x08)
    // model SEG_G is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 SET_SD_MASK */
    // @ext(0xb0, 0x02, 0x08)
    // model SET_SD_MASK is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 TEMP_6MA */
    // @ext(0xb0, 0x02, 0x08)
    // model TEMP_6MA is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 TFRS */
    // @ext(0xb0, 0x02, 0x08)
    // model TFRS is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 TONE_OFF */
    // @ext(0xb0, 0x02, 0x08)
    // model TONE_OFF is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ZZ_SADR_M11 */
    // @ext(0xb0, 0x02, 0x08)
    // model ZZ_SADR_M11 is Memory<UCH>;

    /** Konstanten 0x0009 ANZ_TEILN */
    @ext(0xb1, 0x02, 0x09)
    model ANZ_TEILN is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 TONE_ON */
    // @ext(0xb1, 0x02, 0x09)
    // model TONE_ON is Memory<UCH>;

    /** Konstanten 0x000A BYTEDIAGNOSE */
    @ext(0xb2, 0x02, 0x0A)
    model BYTEDIAGNOSE is Memory<UCH>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A CALIBIOABW_1 */
    // @ext(0xb2, 0x02, 0x0A)
    // model CALIBIOABW_1 is Memory<UCH>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A LCZ_A */
    // @ext(0xb2, 0x02, 0x0A)
    // model LCZ_A is Memory<UCH>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A MAXIOKORR */
    // @ext(0xb2, 0x02, 0x0A)
    // model MAXIOKORR is Memory<UCH>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A NG_DW_TOL */
    // @ext(0xb2, 0x02, 0x0A)
    // model NG_DW_TOL is Memory<UCH>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A NHISTDATA */
    // @ext(0xb2, 0x02, 0x0A)
    // model NHISTDATA is Memory<UCH>;

    /** Konstanten 0x000B L_PRUEF_DAT_CRC */
    @ext(0xb3, 0x02, 0x0B)
    model L_PRUEF_DAT_CRC is Memory<UCH>;

    /** Konstanten 0x000C AIN_AF_ERRORS */
    @ext(0xb4, 0x02, 0x0C)
    model AIN_AF_ERRORS is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C AIN_FS_SATT */
    // @ext(0xb4, 0x02, 0x0C)
    // model AIN_FS_SATT is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C CLR_TIMER */
    // @ext(0xb4, 0x02, 0x0C)
    // model CLR_TIMER is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C CYC_PER_1US */
    // @ext(0xb4, 0x02, 0x0C)
    // model CYC_PER_1US is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C DELAY_2US */
    // @ext(0xb4, 0x02, 0x0C)
    // model DELAY_2US is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C EP15RTHZEIT_DTVL_OFFS */
    // @ext(0xb4, 0x02, 0x0C)
    // model EP15RTHZEIT_DTVL_OFFS is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C FC_STW */
    // @ext(0xb4, 0x02, 0x0C)
    // model FC_STW is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C FW_SOFTREV */
    // @ext(0xb4, 0x02, 0x0C)
    // model FW_SOFTREV is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C IEM_IONFILTOSZ */
    // @ext(0xb4, 0x02, 0x0C)
    // model IEM_IONFILTOSZ is Memory<UCH>;

    // Alias of AIN_AF_ERRORS
    // /** Konstanten 0x000C LCZ_C */
    // @ext(0xb4, 0x02, 0x0C)
    // model LCZ_C is Memory<UCH>;

    /** Konstanten 0x000D CALIBMINDUR */
    @ext(0xb5, 0x02, 0x0D)
    model CALIBMINDUR is Memory<UCH>;

    /** Konstanten 0x000E CLR_WDT */
    @ext(0xb6, 0x02, 0x0E)
    model CLR_WDT is Memory<UCH>;

    // Alias of CLR_WDT
    // /** Konstanten 0x000E FC_GRADTVIST */
    // @ext(0xb6, 0x02, 0x0E)
    // model FC_GRADTVIST is Memory<UCH>;

    // Alias of CLR_WDT
    // /** Konstanten 0x000E ISP_N_STEPS */
    // @ext(0xb6, 0x02, 0x0E)
    // model ISP_N_STEPS is Memory<UCH>;

    // Alias of CLR_WDT
    // /** Konstanten 0x000E LCZ_E */
    // @ext(0xb6, 0x02, 0x0E)
    // model LCZ_E is Memory<UCH>;

    // Alias of CLR_WDT
    // /** Konstanten 0x000E TVIST_BREAK_MASK */
    // @ext(0xb6, 0x02, 0x0E)
    // model TVIST_BREAK_MASK is Memory<UCH>;

    /** Konstanten 0x000F ANZ_PRUEF_GERAETE_DATS */
    @ext(0xb7, 0x02, 0x0F)
    model ANZ_PRUEF_GERAETE_DATS is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F EP_DTREGPUPWM__W */
    // @ext(0xb7, 0x02, 0x0F)
    // model EP_DTREGPUPWM__W is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F FC_DTMAXWT */
    // @ext(0xb7, 0x02, 0x0F)
    // model FC_DTMAXWT is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F ION_HS_GAIN_ */
    // @ext(0xb7, 0x02, 0x0F)
    // model ION_HS_GAIN_ is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F ISP_NG_STEP__IO50VSTABIL */
    // @ext(0xb7, 0x02, 0x0F)
    // model ISP_NG_STEP__IO50VSTABIL is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F ISP_NG_STEP__KICK2 */
    // @ext(0xb7, 0x02, 0x0F)
    // model ISP_NG_STEP__KICK2 is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F ISP_NG_STEP__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model ISP_NG_STEP__SELF is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F KESS_OPT__MFA */
    // @ext(0xb7, 0x02, 0x0F)
    // model KESS_OPT__MFA is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F KESS_OPT__VV */
    // @ext(0xb7, 0x02, 0x0F)
    // model KESS_OPT__VV is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F LCZ_F */
    // @ext(0xb7, 0x02, 0x0F)
    // model LCZ_F is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F NG_NSP__NGRELANHEB */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_NSP__NGRELANHEB is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F NG_REG_ANPASS__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_REG_ANPASS__SELF is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F NM_TI_MASK */
    // @ext(0xb7, 0x02, 0x0F)
    // model NM_TI_MASK is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F TBRMINOFF__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TBRMINOFF__SELF is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F TCSZA__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCSZA__SELF is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F TCVSP__ABSENK */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCVSP__ABSENK is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F TI_05_07MAX */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07MAX is Memory<UCH>;

    // Alias of ANZ_PRUEF_GERAETE_DATS
    // /** Konstanten 0x000F TI_05_07_BEKAS */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07_BEKAS is Memory<UCH>;

    /** Konstanten 0x0010 AIN2_ERR_VL2 */
    @ext(0xa8, 0x02, 0x10)
    model AIN2_ERR_VL2 is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 AIN_ERR_B11 */
    // @ext(0xa8, 0x02, 0x10)
    // model AIN_ERR_B11 is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 AIN_ERR_DL */
    // @ext(0xa8, 0x02, 0x10)
    // model AIN_ERR_DL is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 FC_ABGASSTB */
    // @ext(0xa8, 0x02, 0x10)
    // model FC_ABGASSTB is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 ICSSTATISTIK */
    // @ext(0xa8, 0x02, 0x10)
    // model ICSSTATISTIK is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 IEM_MC_A_B_ABW */
    // @ext(0xa8, 0x02, 0x10)
    // model IEM_MC_A_B_ABW is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 ISP_DX_TEILUNG */
    // @ext(0xa8, 0x02, 0x10)
    // model ISP_DX_TEILUNG is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 KMOPUPWM */
    // @ext(0xa8, 0x02, 0x10)
    // model KMOPUPWM is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 L_IOFSPARA */
    // @ext(0xa8, 0x02, 0x10)
    // model L_IOFSPARA is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 L_IONFSPARA_CRC */
    // @ext(0xa8, 0x02, 0x10)
    // model L_IONFSPARA_CRC is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 M_SET_PC_RQ_RS */
    // @ext(0xa8, 0x02, 0x10)
    // model M_SET_PC_RQ_RS is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 PI_MINVALPROC */
    // @ext(0xa8, 0x02, 0x10)
    // model PI_MINVALPROC is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 QQ_M2 */
    // @ext(0xa8, 0x02, 0x10)
    // model QQ_M2 is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 REGBANK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBANK_TASK_2 is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 SEG_C */
    // @ext(0xa8, 0x02, 0x10)
    // model SEG_C is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 SET_DAT_PIN */
    // @ext(0xa8, 0x02, 0x10)
    // model SET_DAT_PIN is Memory<UCH>;

    // Alias of AIN2_ERR_VL2
    // /** Konstanten 0x0010 TABGAS_SHORT_MASK */
    // @ext(0xa8, 0x02, 0x10)
    // model TABGAS_SHORT_MASK is Memory<UCH>;

    /** Konstanten 0x0011 AIN_FS_MAX_SATT */
    @ext(0xa9, 0x02, 0x11)
    model AIN_FS_MAX_SATT is Memory<UCH>;

    // Alias of AIN_FS_MAX_SATT
    // /** Konstanten 0x0011 CALIBIOABW_2 */
    // @ext(0xa9, 0x02, 0x11)
    // model CALIBIOABW_2 is Memory<UCH>;

    // Alias of AIN_FS_MAX_SATT
    // /** Konstanten 0x0011 DE_MIN_CNT */
    // @ext(0xa9, 0x02, 0x11)
    // model DE_MIN_CNT is Memory<UCH>;

    // Alias of AIN_FS_MAX_SATT
    // /** Konstanten 0x0011 LCZ_H */
    // @ext(0xa9, 0x02, 0x11)
    // model LCZ_H is Memory<UCH>;

    /** Konstanten 0x0012 DDSPERRZAEHLER */
    @ext(0xaa, 0x02, 0x12)
    model DDSPERRZAEHLER is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 DELAY_3US */
    // @ext(0xaa, 0x02, 0x12)
    // model DELAY_3US is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 FC_DTVIST_2 */
    // @ext(0xaa, 0x02, 0x12)
    // model FC_DTVIST_2 is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 LCZ_I */
    // @ext(0xaa, 0x02, 0x12)
    // model LCZ_I is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 ROM_END_L */
    // @ext(0xaa, 0x02, 0x12)
    // model ROM_END_L is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 T2_RELOAD_LO */
    // @ext(0xaa, 0x02, 0x12)
    // model T2_RELOAD_LO is Memory<UCH>;

    /** Konstanten 0x0013 DDRX_OFFSET_S1 */
    @ext(0xab, 0x02, 0x13)
    model DDRX_OFFSET_S1 is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 QQ_M12 */
    // @ext(0xab, 0x02, 0x13)
    // model QQ_M12 is Memory<UCH>;

    /** Konstanten 0x0014 ASCII_1 */
    @ext(0xac, 0x02, 0x14)
    model ASCII_1 is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 CALIB_PREPARE_WAIT */
    // @ext(0xac, 0x02, 0x14)
    // model CALIB_PREPARE_WAIT is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 DDTX_OFFSET_CNT */
    // @ext(0xac, 0x02, 0x14)
    // model DDTX_OFFSET_CNT is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 EEA_CONST_CRC */
    // @ext(0xac, 0x02, 0x14)
    // model EEA_CONST_CRC is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 I40_NZUEND_TAG */
    // @ext(0xac, 0x02, 0x14)
    // model I40_NZUEND_TAG is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 LIMABGASSTB */
    // @ext(0xac, 0x02, 0x14)
    // model LIMABGASSTB is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 MAXIOSOLLABW */
    // @ext(0xac, 0x02, 0x14)
    // model MAXIOSOLLABW is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 NIT_SHORT */
    // @ext(0xac, 0x02, 0x14)
    // model NIT_SHORT is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 NNETZPERIODE */
    // @ext(0xac, 0x02, 0x14)
    // model NNETZPERIODE is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 XTAL_32K */
    // @ext(0xac, 0x02, 0x14)
    // model XTAL_32K is Memory<UCH>;

    /** Konstanten 0x0015 ASCII_1X */
    @ext(0xad, 0x02, 0x15)
    model ASCII_1X is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 EE_RAM_ANF */
    // @ext(0xad, 0x02, 0x15)
    // model EE_RAM_ANF is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 I41_HBRON_TAG */
    // @ext(0xad, 0x02, 0x15)
    // model I41_HBRON_TAG is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 NIT_MIN */
    // @ext(0xad, 0x02, 0x15)
    // model NIT_MIN is Memory<UCH>;

    /** Konstanten 0x0017 EEAEPKANF */
    @ext(0xaf, 0x02, 0x17)
    model EEAEPKANF is Memory<UCH>;

    // Alias of EEAEPKANF
    // /** Konstanten 0x0017 QQ_M17 */
    // @ext(0xaf, 0x02, 0x17)
    // model QQ_M17 is Memory<UCH>;

    /** Konstanten 0x0018 DELAY_4US */
    @ext(0xa0, 0x02, 0x18)
    model DELAY_4US is Memory<UCH>;

    // Alias of DELAY_4US
    // /** Konstanten 0x0018 FC_NOT_AUS */
    // @ext(0xa0, 0x02, 0x18)
    // model FC_NOT_AUS is Memory<UCH>;

    // Alias of DELAY_4US
    // /** Konstanten 0x0018 GEBL_FAKT_NENN */
    // @ext(0xa0, 0x02, 0x18)
    // model GEBL_FAKT_NENN is Memory<UCH>;

    // Alias of DELAY_4US
    // /** Konstanten 0x0018 MAXIMPS */
    // @ext(0xa0, 0x02, 0x18)
    // model MAXIMPS is Memory<UCH>;

    // Alias of DELAY_4US
    // /** Konstanten 0x0018 RC_256K */
    // @ext(0xa0, 0x02, 0x18)
    // model RC_256K is Memory<UCH>;

    // Alias of DELAY_4US
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory<UCH>;

    /** Konstanten 0x0019 I45_WARTUNG */
    @ext(0xa1, 0x02, 0x19)
    model I45_WARTUNG is Memory<UCH>;

    // Alias of I45_WARTUNG
    // /** Konstanten 0x0019 LCZ_P */
    // @ext(0xa1, 0x02, 0x19)
    // model LCZ_P is Memory<UCH>;

    /** Konstanten 0x001B EXT_256K */
    @ext(0xa3, 0x02, 0x1B)
    model EXT_256K is Memory<UCH>;

    /** Konstanten 0x001C LCZ_S */
    @ext(0xa4, 0x02, 0x1C)
    model LCZ_S is Memory<UCH>;

    /** Konstanten 0x001D ASCII_4 */
    @ext(0xa5, 0x02, 0x1D)
    model ASCII_4 is Memory<UCH>;

    // Alias of ASCII_4
    // /** Konstanten 0x001D LCZ_T */
    // @ext(0xa5, 0x02, 0x1D)
    // model LCZ_T is Memory<UCH>;

    /** Konstanten 0x001E CALIBRELABW */
    @ext(0xa6, 0x02, 0x1E)
    model CALIBRELABW is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E DELAY_5US */
    // @ext(0xa6, 0x02, 0x1E)
    // model DELAY_5US is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E FAKT_NGISTTOUPM */
    // @ext(0xa6, 0x02, 0x1E)
    // model FAKT_NGISTTOUPM is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E FAKT_TO_NGMAX */
    // @ext(0xa6, 0x02, 0x1E)
    // model FAKT_TO_NGMAX is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E FC_TVIST_FS */
    // @ext(0xa6, 0x02, 0x1E)
    // model FC_TVIST_FS is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E LCZ_U */
    // @ext(0xa6, 0x02, 0x1E)
    // model LCZ_U is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E LIMDTMAXWT */
    // @ext(0xa6, 0x02, 0x1E)
    // model LIMDTMAXWT is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E MINDURVORANHEB */
    // @ext(0xa6, 0x02, 0x1E)
    // model MINDURVORANHEB is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E MINDURVORCALIB */
    // @ext(0xa6, 0x02, 0x1E)
    // model MINDURVORCALIB is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E NGLIMITIOFILT */
    // @ext(0xa6, 0x02, 0x1E)
    // model NGLIMITIOFILT is Memory<UCH>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E NTC_MIN */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTC_MIN is Memory<UCH>;

    /** Konstanten 0x001F DO_PORT_INIT */
    @ext(0xa7, 0x02, 0x1F)
    model DO_PORT_INIT is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F EPGPVSTART__RAMPE */
    // @ext(0xa7, 0x02, 0x1F)
    // model EPGPVSTART__RAMPE is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F EPYGPVOFFS__NGPLUSEA */
    // @ext(0xa7, 0x02, 0x1F)
    // model EPYGPVOFFS__NGPLUSEA is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F FC_TABGAS */
    // @ext(0xa7, 0x02, 0x1F)
    // model FC_TABGAS is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F QQ_M22 */
    // @ext(0xa7, 0x02, 0x1F)
    // model QQ_M22 is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F SOMMERTEMP__SELF */
    // @ext(0xa7, 0x02, 0x1F)
    // model SOMMERTEMP__SELF is Memory<UCH>;

    // Alias of DO_PORT_INIT
    // /** Konstanten 0x001F SWITCH_MUX_MASK */
    // @ext(0xa7, 0x02, 0x1F)
    // model SWITCH_MUX_MASK is Memory<UCH>;

    /** Konstanten 0x0020 BIAS_1_2_2 */
    @ext(0x98, 0x02, 0x20)
    model BIAS_1_2_2 is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 EE_SDA_MASK */
    // @ext(0x98, 0x02, 0x20)
    // model EE_SDA_MASK is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 HZZVVMASK */
    // @ext(0x98, 0x02, 0x20)
    // model HZZVVMASK is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 ICSCALIBNEXTIOABW */
    // @ext(0x98, 0x02, 0x20)
    // model ICSCALIBNEXTIOABW is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 IEM_NG_BR_MIN */
    // @ext(0x98, 0x02, 0x20)
    // model IEM_NG_BR_MIN is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 KMOAF */
    // @ext(0x98, 0x02, 0x20)
    // model KMOAF is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 LCZ_W */
    // @ext(0x98, 0x02, 0x20)
    // model LCZ_W is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 MASK_SERVICE */
    // @ext(0x98, 0x02, 0x20)
    // model MASK_SERVICE is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 MAX_HS_VAL */
    // @ext(0x98, 0x02, 0x20)
    // model MAX_HS_VAL is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 MAX_HS_VAL_ */
    // @ext(0x98, 0x02, 0x20)
    // model MAX_HS_VAL_ is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 PI_MAXVALPROC */
    // @ext(0x98, 0x02, 0x20)
    // model PI_MAXVALPROC is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 PWMSPIEL */
    // @ext(0x98, 0x02, 0x20)
    // model PWMSPIEL is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 REMOTE_YGPV_GESTEUERT */
    // @ext(0x98, 0x02, 0x20)
    // model REMOTE_YGPV_GESTEUERT is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 SEG_E */
    // @ext(0x98, 0x02, 0x20)
    // model SEG_E is Memory<UCH>;

    // Alias of BIAS_1_2_2
    // /** Konstanten 0x0020 SWITCH_MUX_Y1 */
    // @ext(0x98, 0x02, 0x20)
    // model SWITCH_MUX_Y1 is Memory<UCH>;

    /** Konstanten 0x0021 BIAS_1_3_2 */
    @ext(0x99, 0x02, 0x21)
    model BIAS_1_3_2 is Memory<UCH>;

    // Alias of BIAS_1_3_2
    // /** Konstanten 0x0021 FC_TAUSSEN */
    // @ext(0x99, 0x02, 0x21)
    // model FC_TAUSSEN is Memory<UCH>;

    // Alias of BIAS_1_3_2
    // /** Konstanten 0x0021 GENPOLY8SIG */
    // @ext(0x99, 0x02, 0x21)
    // model GENPOLY8SIG is Memory<UCH>;

    /** Konstanten 0x0022 FC_TWWIST */
    @ext(0x9a, 0x02, 0x22)
    model FC_TWWIST is Memory<UCH>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0022 L_S5_DAT_CRC */
    // @ext(0x9a, 0x02, 0x22)
    // model L_S5_DAT_CRC is Memory<UCH>;

    /** Konstanten 0x0023 FC_TVIST2 */
    @ext(0x9b, 0x02, 0x23)
    model FC_TVIST2 is Memory<UCH>;

    /** Konstanten 0x0024 BIAS_1_2_3 */
    @ext(0x9c, 0x02, 0x24)
    model BIAS_1_2_3 is Memory<UCH>;

    // Alias of BIAS_1_2_3
    // /** Konstanten 0x0024 DELAY_6US */
    // @ext(0x9c, 0x02, 0x24)
    // model DELAY_6US is Memory<UCH>;

    // Alias of BIAS_1_2_3
    // /** Konstanten 0x0024 FC_GDW */
    // @ext(0x9c, 0x02, 0x24)
    // model FC_GDW is Memory<UCH>;

    // Alias of BIAS_1_2_3
    // /** Konstanten 0x0024 LCZBLANK */
    // @ext(0x9c, 0x02, 0x24)
    // model LCZBLANK is Memory<UCH>;

    /** Konstanten 0x0025 BIAS_1_3_3 */
    @ext(0x9d, 0x02, 0x25)
    model BIAS_1_3_3 is Memory<UCH>;

    // Alias of BIAS_1_3_3
    // /** Konstanten 0x0025 FC_TVIST3 */
    // @ext(0x9d, 0x02, 0x25)
    // model FC_TVIST3 is Memory<UCH>;

    // Alias of BIAS_1_3_3
    // /** Konstanten 0x0025 LCZGRAD */
    // @ext(0x9d, 0x02, 0x25)
    // model LCZGRAD is Memory<UCH>;

    // Alias of BIAS_1_3_3
    // /** Konstanten 0x0025 L_KES_DAT_CRC */
    // @ext(0x9d, 0x02, 0x25)
    // model L_KES_DAT_CRC is Memory<UCH>;

    // Alias of BIAS_1_3_3
    // /** Konstanten 0x0025 MAXIONREGCNT */
    // @ext(0x9d, 0x02, 0x25)
    // model MAXIONREGCNT is Memory<UCH>;

    /** Konstanten 0x0026 FAKT_FOR_REST */
    @ext(0x9e, 0x02, 0x26)
    model FAKT_FOR_REST is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 FC_TB10 */
    // @ext(0x9e, 0x02, 0x26)
    // model FC_TB10 is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 LCZMINUS */
    // @ext(0x9e, 0x02, 0x26)
    // model LCZMINUS is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 RX_BUF_LEN */
    // @ext(0x9e, 0x02, 0x26)
    // model RX_BUF_LEN is Memory<UCH>;

    /** Konstanten 0x0027 FC_TB11 */
    @ext(0x9f, 0x02, 0x27)
    model FC_TB11 is Memory<UCH>;

    // Alias of FC_TB11
    // /** Konstanten 0x0027 NPARAITEM */
    // @ext(0x9f, 0x02, 0x27)
    // model NPARAITEM is Memory<UCH>;

    // Alias of FC_TB11
    // /** Konstanten 0x0027 REF_MIN */
    // @ext(0x9f, 0x02, 0x27)
    // model REF_MIN is Memory<UCH>;

    /** Konstanten 0x0028 BIAS_1_2_4 */
    @ext(0x90, 0x02, 0x28)
    model BIAS_1_2_4 is Memory<UCH>;

    /** Konstanten 0x0029 BIAS_1_3_4 */
    @ext(0x91, 0x02, 0x29)
    model BIAS_1_3_4 is Memory<UCH>;

    // Alias of BIAS_1_3_4
    // /** Konstanten 0x0029 FC_V1_V2 */
    // @ext(0x91, 0x02, 0x29)
    // model FC_V1_V2 is Memory<UCH>;

    // Alias of BIAS_1_3_4
    // /** Konstanten 0x0029 MIN_TAUTOSYN */
    // @ext(0x91, 0x02, 0x29)
    // model MIN_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x002A DELAY_7US */
    @ext(0x92, 0x02, 0x2A)
    model DELAY_7US is Memory<UCH>;

    // Alias of DELAY_7US
    // /** Konstanten 0x002A FC_PWMPUMPE */
    // @ext(0x92, 0x02, 0x2A)
    // model FC_PWMPUMPE is Memory<UCH>;

    /** Konstanten 0x002B ASCII_F */
    @ext(0x93, 0x02, 0x2B)
    model ASCII_F is Memory<UCH>;

    // Alias of ASCII_F
    // /** Konstanten 0x002B FC_N_NOK_ZUE_N */
    // @ext(0x93, 0x02, 0x2B)
    // model FC_N_NOK_ZUE_N is Memory<UCH>;

    /** Konstanten 0x002C FC_N_NOK_RUHE */
    @ext(0x94, 0x02, 0x2C)
    model FC_N_NOK_RUHE is Memory<UCH>;

    /** Konstanten 0x002E AF_MIN */
    @ext(0x96, 0x02, 0x2E)
    model AF_MIN is Memory<UCH>;

    /** Konstanten 0x002F AF_SHORT */
    @ext(0x97, 0x02, 0x2F)
    model AF_SHORT is Memory<UCH>;

    // Alias of AF_SHORT
    // /** Konstanten 0x002F ASCII_P */
    // @ext(0x97, 0x02, 0x2F)
    // model ASCII_P is Memory<UCH>;

    /** Konstanten 0x0030 AIN_B11_ERRORS */
    @ext(0x88, 0x02, 0x30)
    model AIN_B11_ERRORS is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 AIN_DL_ERRORS */
    // @ext(0x88, 0x02, 0x30)
    // model AIN_DL_ERRORS is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 AIN_VL2_ERRORS */
    // @ext(0x88, 0x02, 0x30)
    // model AIN_VL2_ERRORS is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 DELAY_8US */
    // @ext(0x88, 0x02, 0x30)
    // model DELAY_8US is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 GPV_FAKT_NENN */
    // @ext(0x88, 0x02, 0x30)
    // model GPV_FAKT_NENN is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 QQ_M3 */
    // @ext(0x88, 0x02, 0x30)
    // model QQ_M3 is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 TBRMINOFF__ERDGAS */
    // @ext(0x88, 0x02, 0x30)
    // model TBRMINOFF__ERDGAS is Memory<UCH>;

    // Alias of AIN_B11_ERRORS
    // /** Konstanten 0x0030 TBRMINOFF__GASART */
    // @ext(0x88, 0x02, 0x30)
    // model TBRMINOFF__GASART is Memory<UCH>;

    /** Konstanten 0x0031 TSZACONST */
    @ext(0x89, 0x02, 0x31)
    model TSZACONST is Memory<UCH>;

    /** Konstanten 0x0032 RES_MAX_TIME */
    @ext(0x8a, 0x02, 0x32)
    model RES_MAX_TIME is Memory<UCH>;

    /** Konstanten 0x0033 AD_4MA */
    @ext(0x8b, 0x02, 0x33)
    model AD_4MA is Memory<UCH>;

    // Alias of AD_4MA
    // /** Konstanten 0x0033 AIN_DL_WAU_ERRORS */
    // @ext(0x8b, 0x02, 0x33)
    // model AIN_DL_WAU_ERRORS is Memory<UCH>;

    /** Konstanten 0x0035 FC_AIN_REF_OK */
    @ext(0x8d, 0x02, 0x35)
    model FC_AIN_REF_OK is Memory<UCH>;

    /** Konstanten 0x0036 DELAY_9US */
    @ext(0x8e, 0x02, 0x36)
    model DELAY_9US is Memory<UCH>;

    // Alias of DELAY_9US
    // /** Konstanten 0x0036 FC_SYSFEHLER */
    // @ext(0x8e, 0x02, 0x36)
    // model FC_SYSFEHLER is Memory<UCH>;

    /** Konstanten 0x0037 FC_IONNETZ_OK */
    @ext(0x8f, 0x02, 0x37)
    model FC_IONNETZ_OK is Memory<UCH>;

    // Alias of FC_IONNETZ_OK
    // /** Konstanten 0x0037 QQ_M18 */
    // @ext(0x8f, 0x02, 0x37)
    // model QQ_M18 is Memory<UCH>;

    /** Konstanten 0x0038 ASCII_N */
    @ext(0x80, 0x02, 0x38)
    model ASCII_N is Memory<UCH>;

    // Alias of ASCII_N
    // /** Konstanten 0x0038 FC_IEM_MC_A_B_ABW */
    // @ext(0x80, 0x02, 0x38)
    // model FC_IEM_MC_A_B_ABW is Memory<UCH>;

    /** Konstanten 0x003B NXCL1SEC */
    @ext(0x83, 0x02, 0x3B)
    model NXCL1SEC is Memory<UCH>;

    /** Konstanten 0x003C EEAEPKCRC */
    @ext(0x84, 0x02, 0x3C)
    model EEAEPKCRC is Memory<UCH>;

    // Alias of EEAEPKCRC
    // /** Konstanten 0x003C FCODE_NOT */
    // @ext(0x84, 0x02, 0x3C)
    // model FCODE_NOT is Memory<UCH>;

    // Alias of EEAEPKCRC
    // /** Konstanten 0x003C GERAETETYP_WCM3C */
    // @ext(0x84, 0x02, 0x3C)
    // model GERAETETYP_WCM3C is Memory<UCH>;

    // Alias of EEAEPKCRC
    // /** Konstanten 0x003C PUHZ_FAKTOR */
    // @ext(0x84, 0x02, 0x3C)
    // model PUHZ_FAKTOR is Memory<UCH>;

    /** Konstanten 0x003D ASCII_H */
    @ext(0x85, 0x02, 0x3D)
    model ASCII_H is Memory<UCH>;

    // Alias of ASCII_H
    // /** Konstanten 0x003D EEAEPMANF */
    // @ext(0x85, 0x02, 0x3D)
    // model EEAEPMANF is Memory<UCH>;

    // Alias of ASCII_H
    // /** Konstanten 0x003D FC_ION_XW_TOL */
    // @ext(0x85, 0x02, 0x3D)
    // model FC_ION_XW_TOL is Memory<UCH>;

    // Alias of ASCII_H
    // /** Konstanten 0x003D MAX_TAUTOSYN */
    // @ext(0x85, 0x02, 0x3D)
    // model MAX_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x003E FC_ION_DYGPVTOL */
    @ext(0x86, 0x02, 0x3E)
    model FC_ION_DYGPVTOL is Memory<UCH>;

    /** Konstanten 0x003F ASCII_A */
    @ext(0x87, 0x02, 0x3F)
    model ASCII_A is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F PNL_HZ__SELF */
    // @ext(0x87, 0x02, 0x3F)
    // model PNL_HZ__SELF is Memory<UCH>;

    /** Konstanten 0x0040 AIN_ERR_B10 */
    @ext(0xf8, 0x02, 0x40)
    model AIN_ERR_B10 is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 ESC_ON */
    // @ext(0xf8, 0x02, 0x40)
    // model ESC_ON is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 FC_CALIBWERKSGRENZEN */
    // @ext(0xf8, 0x02, 0x40)
    // model FC_CALIBWERKSGRENZEN is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 ICSCALIBNEXTSTART */
    // @ext(0xf8, 0x02, 0x40)
    // model ICSCALIBNEXTSTART is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 IEM_DUMMYTEST */
    // @ext(0xf8, 0x02, 0x40)
    // model IEM_DUMMYTEST is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 KMO4_20MA */
    // @ext(0xf8, 0x02, 0x40)
    // model KMO4_20MA is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 LCDMASK_SCHLUESSEL */
    // @ext(0xf8, 0x02, 0x40)
    // model LCDMASK_SCHLUESSEL is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 MASK_RESET */
    // @ext(0xf8, 0x02, 0x40)
    // model MASK_RESET is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 M_SET_EXTWST */
    // @ext(0xf8, 0x02, 0x40)
    // model M_SET_EXTWST is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 NIOCALIBHISTREC */
    // @ext(0xf8, 0x02, 0x40)
    // model NIOCALIBHISTREC is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 PI_OFFVAL */
    // @ext(0xf8, 0x02, 0x40)
    // model PI_OFFVAL is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 PNL_HZ__HAUS */
    // @ext(0xf8, 0x02, 0x40)
    // model PNL_HZ__HAUS is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 REMOTE_YGPV_NEW */
    // @ext(0xf8, 0x02, 0x40)
    // model REMOTE_YGPV_NEW is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 SEG_W */
    // @ext(0xf8, 0x02, 0x40)
    // model SEG_W is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 SWITCH_MUX_Y2 */
    // @ext(0xf8, 0x02, 0x40)
    // model SWITCH_MUX_Y2 is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 TBRMINOFF__EBUSSPEISUNG */
    // @ext(0xf8, 0x02, 0x40)
    // model TBRMINOFF__EBUSSPEISUNG is Memory<UCH>;

    // Alias of AIN_ERR_B10
    // /** Konstanten 0x0040 TONE_4K */
    // @ext(0xf8, 0x02, 0x40)
    // model TONE_4K is Memory<UCH>;

    /** Konstanten 0x0041 FC_CALIBIOCHG2BIG */
    @ext(0xf9, 0x02, 0x41)
    model FC_CALIBIOCHG2BIG is Memory<UCH>;

    /** Konstanten 0x0042 FC_CALIBNOTDONE */
    @ext(0xfa, 0x02, 0x42)
    model FC_CALIBNOTDONE is Memory<UCH>;

    // Alias of FC_CALIBNOTDONE
    // /** Konstanten 0x0042 REF_MAX */
    // @ext(0xfa, 0x02, 0x42)
    // model REF_MAX is Memory<UCH>;

    /** Konstanten 0x0043 EEAEPMCRC */
    @ext(0xfb, 0x02, 0x43)
    model EEAEPMCRC is Memory<UCH>;

    // Alias of EEAEPMCRC
    // /** Konstanten 0x0043 FC_IONSOLLINVALID */
    // @ext(0xfb, 0x02, 0x43)
    // model FC_IONSOLLINVALID is Memory<UCH>;

    // Alias of EEAEPMCRC
    // /** Konstanten 0x0043 FC_ION_SOLL_EEPROM */
    // @ext(0xfb, 0x02, 0x43)
    // model FC_ION_SOLL_EEPROM is Memory<UCH>;

    /** Konstanten 0x0044 EEA_KM_OPT */
    @ext(0xfc, 0x02, 0x44)
    model EEA_KM_OPT is Memory<UCH>;

    // Alias of EEA_KM_OPT
    // /** Konstanten 0x0044 FCODE_MAX */
    // @ext(0xfc, 0x02, 0x44)
    // model FCODE_MAX is Memory<UCH>;

    // Alias of EEA_KM_OPT
    // /** Konstanten 0x0044 NGMINANHEB */
    // @ext(0xfc, 0x02, 0x44)
    // model NGMINANHEB is Memory<UCH>;

    /** Konstanten 0x0045 EEAIONSOLL */
    @ext(0xfd, 0x02, 0x45)
    model EEAIONSOLL is Memory<UCH>;

    /** Konstanten 0x0048 EEAEPIANF */
    @ext(0xf0, 0x02, 0x48)
    model EEAEPIANF is Memory<UCH>;

    /** Konstanten 0x0049 AD_6MA */
    @ext(0xf1, 0x02, 0x49)
    model AD_6MA is Memory<UCH>;

    /** Konstanten 0x004A DE_PORT_INIT */
    @ext(0xf2, 0x02, 0x4A)
    model DE_PORT_INIT is Memory<UCH>;

    /** Konstanten 0x0050 DE_MAX_CNT */
    @ext(0xe8, 0x02, 0x50)
    model DE_MAX_CNT is Memory<UCH>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 K_ID */
    // @ext(0xe8, 0x02, 0x50)
    // model K_ID is Memory<UCH>;

    /** Konstanten 0x0058 EEAEPICRC */
    @ext(0xe0, 0x02, 0x58)
    model EEAEPICRC is Memory<UCH>;

    // Alias of EEAEPICRC
    // /** Konstanten 0x0058 NDIV_XC878_PLL_CON */
    // @ext(0xe0, 0x02, 0x58)
    // model NDIV_XC878_PLL_CON is Memory<UCH>;

    /** Konstanten 0x0059 EEAEPIFANF */
    @ext(0xe1, 0x02, 0x59)
    model EEAEPIFANF is Memory<UCH>;

    /** Konstanten 0x0060 EPGPVSTART__IONLIMIT */
    @ext(0xd8, 0x02, 0x60)
    model EPGPVSTART__IONLIMIT is Memory<UCH>;

    // Alias of EPGPVSTART__IONLIMIT
    // /** Konstanten 0x0060 MASK_SERV_RESET */
    // @ext(0xd8, 0x02, 0x60)
    // model MASK_SERV_RESET is Memory<UCH>;

    // Alias of EPGPVSTART__IONLIMIT
    // /** Konstanten 0x0060 SOMMERTEMP__TBD */
    // @ext(0xd8, 0x02, 0x60)
    // model SOMMERTEMP__TBD is Memory<UCH>;

    // Alias of EPGPVSTART__IONLIMIT
    // /** Konstanten 0x0060 SWITCH_MUX_Y3 */
    // @ext(0xd8, 0x02, 0x60)
    // model SWITCH_MUX_Y3 is Memory<UCH>;

    // Alias of EPGPVSTART__IONLIMIT
    // /** Konstanten 0x0060 TONE_2K */
    // @ext(0xd8, 0x02, 0x60)
    // model TONE_2K is Memory<UCH>;

    /** Konstanten 0x0064 CALIB_H_BON */
    @ext(0xdc, 0x02, 0x64)
    model CALIB_H_BON is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 EPWARTINTHBON_GAIN */
    // @ext(0xdc, 0x02, 0x64)
    // model EPWARTINTHBON_GAIN is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 IONSOLLFILT_P */
    // @ext(0xdc, 0x02, 0x64)
    // model IONSOLLFILT_P is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 MAX_ION_ERR_TIME */
    // @ext(0xdc, 0x02, 0x64)
    // model MAX_ION_ERR_TIME is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 PUHZPWM_MAX */
    // @ext(0xdc, 0x02, 0x64)
    // model PUHZPWM_MAX is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 SCHEDULE_TAKT */
    // @ext(0xdc, 0x02, 0x64)
    // model SCHEDULE_TAKT is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 TAUSWERT_MSEC */
    // @ext(0xdc, 0x02, 0x64)
    // model TAUSWERT_MSEC is Memory<UCH>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 TEMP_20MA */
    // @ext(0xdc, 0x02, 0x64)
    // model TEMP_20MA is Memory<UCH>;

    /** Konstanten 0x0069 EEAEPIFCRC */
    @ext(0xd1, 0x02, 0x69)
    model EEAEPIFCRC is Memory<UCH>;

    // Alias of EEAEPIFCRC
    // /** Konstanten 0x0069 MXSTB_K_CONST */
    // @ext(0xd1, 0x02, 0x69)
    // model MXSTB_K_CONST is Memory<UCH>;

    /** Konstanten 0x006A EEAEPIKANF */
    @ext(0xd2, 0x02, 0x6A)
    model EEAEPIKANF is Memory<UCH>;

    /** Konstanten 0x006D ION_HS_50HZ_RUHE */
    @ext(0xd5, 0x02, 0x6D)
    model ION_HS_50HZ_RUHE is Memory<UCH>;

    /** Konstanten 0x006E NXCL1SEC_COLD */
    @ext(0xd6, 0x02, 0x6E)
    model NXCL1SEC_COLD is Memory<UCH>;

    // Alias of NXCL1SEC_COLD
    // /** Konstanten 0x006E TCVSP_CONST_WCM4_EA */
    // @ext(0xd6, 0x02, 0x6E)
    // model TCVSP_CONST_WCM4_EA is Memory<UCH>;

    /** Konstanten 0x0070 QQ_M4 */
    @ext(0xc8, 0x02, 0x70)
    model QQ_M4 is Memory<UCH>;

    /** Konstanten 0x0075 ASCII_W */
    @ext(0xcd, 0x02, 0x75)
    model ASCII_W is Memory<UCH>;

    /** Konstanten 0x0077 QQ_M19 */
    @ext(0xcf, 0x02, 0x77)
    model QQ_M19 is Memory<UCH>;

    /** Konstanten 0x0078 MXSTB_A_CONST */
    @ext(0xc0, 0x02, 0x78)
    model MXSTB_A_CONST is Memory<UCH>;

    /** Konstanten 0x007A EEAEPIKCRC */
    @ext(0xc2, 0x02, 0x7A)
    model EEAEPIKCRC is Memory<UCH>;

    /** Konstanten 0x007B EEA_W_CODE */
    @ext(0xc3, 0x02, 0x7B)
    model EEA_W_CODE is Memory<UCH>;

    /** Konstanten 0x007C ADX_TEST */
    @ext(0xc4, 0x02, 0x7C)
    model ADX_TEST is Memory<UCH>;

    // Alias of ADX_TEST
    // /** Konstanten 0x007C EEA_PRUEF_ANF */
    // @ext(0xc4, 0x02, 0x7C)
    // model EEA_PRUEF_ANF is Memory<UCH>;

    // Alias of ADX_TEST
    // /** Konstanten 0x007C EEA_PRUEF_LOW */
    // @ext(0xc4, 0x02, 0x7C)
    // model EEA_PRUEF_LOW is Memory<UCH>;

    // Alias of ADX_TEST
    // /** Konstanten 0x007C EEA_SOFTREV */
    // @ext(0xc4, 0x02, 0x7C)
    // model EEA_SOFTREV is Memory<UCH>;

    /** Konstanten 0x007E EEA_BCC_IDF */
    @ext(0xc6, 0x02, 0x7E)
    model EEA_BCC_IDF is Memory<UCH>;

    /** Konstanten 0x007F EEA_BAUSTAND */
    @ext(0xc7, 0x02, 0x7F)
    model EEA_BAUSTAND is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x007F MAX_ION_SOLL_AKT */
    // @ext(0xc7, 0x02, 0x7F)
    // model MAX_ION_SOLL_AKT is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x007F M_CLR_KILL_WWST */
    // @ext(0xc7, 0x02, 0x7F)
    // model M_CLR_KILL_WWST is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0080 ACK_FE01 */
    @ext(0x38, 0x02, 0x80)
    model ACK_FE01 is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 FAKT_GPVOFFS */
    // @ext(0x38, 0x02, 0x80)
    // model FAKT_GPVOFFS is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 ICSMITLUFTMASK */
    // @ext(0x38, 0x02, 0x80)
    // model ICSMITLUFTMASK is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 IEM_TIMEOUT */
    // @ext(0x38, 0x02, 0x80)
    // model IEM_TIMEOUT is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 IRQ_DIS */
    // @ext(0x38, 0x02, 0x80)
    // model IRQ_DIS is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 KMOBWZ2 */
    // @ext(0x38, 0x02, 0x80)
    // model KMOBWZ2 is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 KMOSPEICHER */
    // @ext(0x38, 0x02, 0x80)
    // model KMOSPEICHER is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 M_SET_KILL_WWST */
    // @ext(0x38, 0x02, 0x80)
    // model M_SET_KILL_WWST is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PI_SHOWSONDER */
    // @ext(0x38, 0x02, 0x80)
    // model PI_SHOWSONDER is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PNL_HZ__PDL */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PWM_TEILER */
    // @ext(0x38, 0x02, 0x80)
    // model PWM_TEILER is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 REMOTE_YGPV_ON */
    // @ext(0x38, 0x02, 0x80)
    // model REMOTE_YGPV_ON is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SEG_D */
    // @ext(0x38, 0x02, 0x80)
    // model SEG_D is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SOMMERTEMP__BIT */
    // @ext(0x38, 0x02, 0x80)
    // model SOMMERTEMP__BIT is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SWITCH_MUX_Y4 */
    // @ext(0x38, 0x02, 0x80)
    // model SWITCH_MUX_Y4 is Memory<UCH>;

    /** Konstanten 0x0081 EEA_GFATYP */
    @ext(0x39, 0x02, 0x81)
    model EEA_GFATYP is Memory<UCH>;

    // Alias of EEA_GFATYP
    // /** Konstanten 0x0081 EEA_KUNDE */
    // @ext(0x39, 0x02, 0x81)
    // model EEA_KUNDE is Memory<UCH>;

    /** Konstanten 0x0082 ASCII_B10B11 */
    @ext(0x3a, 0x02, 0x82)
    model ASCII_B10B11 is Memory<UCH>;

    // Alias of ASCII_B10B11
    // /** Konstanten 0x0082 EEA_VARIANTE */
    // @ext(0x3a, 0x02, 0x82)
    // model EEA_VARIANTE is Memory<UCH>;

    // Alias of ASCII_B10B11
    // /** Konstanten 0x0082 EM_STACKOVFLOW */
    // @ext(0x3a, 0x02, 0x82)
    // model EM_STACKOVFLOW is Memory<UCH>;

    /** Konstanten 0x0084 EEA_SERIAL_NO */
    @ext(0x3c, 0x02, 0x84)
    model EEA_SERIAL_NO is Memory<UCH>;

    /** Konstanten 0x0087 EEA_PRUEF_CRC */
    @ext(0x3f, 0x02, 0x87)
    model EEA_PRUEF_CRC is Memory<UCH>;

    // Alias of EEA_PRUEF_CRC
    // /** Konstanten 0x0087 GERAETE_CRC_WCM3C */
    // @ext(0x3f, 0x02, 0x87)
    // model GERAETE_CRC_WCM3C is Memory<UCH>;

    /** Konstanten 0x0088 EEA_GERAETETYP1 */
    @ext(0x30, 0x02, 0x88)
    model EEA_GERAETETYP1 is Memory<UCH>;

    // Alias of EEA_GERAETETYP1
    // /** Konstanten 0x0088 EEA_GERAETE_ANF */
    // @ext(0x30, 0x02, 0x88)
    // model EEA_GERAETE_ANF is Memory<UCH>;

    // Alias of EEA_GERAETETYP1
    // /** Konstanten 0x0088 IRQ_EN */
    // @ext(0x30, 0x02, 0x88)
    // model IRQ_EN is Memory<UCH>;

    /** Konstanten 0x0089 EEA_GERAETETYP2 */
    @ext(0x31, 0x02, 0x89)
    model EEA_GERAETETYP2 is Memory<UCH>;

    /** Konstanten 0x008A EEA_GERAETE_CRC */
    @ext(0x32, 0x02, 0x8A)
    model EEA_GERAETE_CRC is Memory<UCH>;

    /** Konstanten 0x008F CCT_RELOAD_LO */
    @ext(0x37, 0x02, 0x8F)
    model CCT_RELOAD_LO is Memory<UCH>;

    // Alias of CCT_RELOAD_LO
    // /** Konstanten 0x008F ROM_PAGES */
    // @ext(0x37, 0x02, 0x8F)
    // model ROM_PAGES is Memory<UCH>;

    /** Konstanten 0x0090 DUR_NGMINANHEB */
    @ext(0x28, 0x02, 0x90)
    model DUR_NGMINANHEB is Memory<UCH>;

    /** Konstanten 0x0096 MAXFLASTAB */
    @ext(0x2e, 0x02, 0x96)
    model MAXFLASTAB is Memory<UCH>;

    /** Konstanten 0x009A EEA_HL_HIADR */
    @ext(0x22, 0x02, 0x9A)
    model EEA_HL_HIADR is Memory<UCH>;

    /** Konstanten 0x009B ASCII_5 */
    @ext(0x23, 0x02, 0x9B)
    model ASCII_5 is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B ASCII_S */
    // @ext(0x23, 0x02, 0x9B)
    // model ASCII_S is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B BG_RELOAD */
    // @ext(0x23, 0x02, 0x9B)
    // model BG_RELOAD is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B EEA_WRONG_ADR */
    // @ext(0x23, 0x02, 0x9B)
    // model EEA_WRONG_ADR is Memory<UCH>;

    /** Konstanten 0x009C EEA_WARTINTHBON */
    @ext(0x24, 0x02, 0x9C)
    model EEA_WARTINTHBON is Memory<UCH>;

    /** Konstanten 0x009E ASCII_3 */
    @ext(0x26, 0x02, 0x9E)
    model ASCII_3 is Memory<UCH>;

    // Alias of ASCII_3
    // /** Konstanten 0x009E EEA_FCODE_NOT */
    // @ext(0x26, 0x02, 0x9E)
    // model EEA_FCODE_NOT is Memory<UCH>;

    /** Konstanten 0x00A0 EEA_FC_68 */
    @ext(0x18, 0x02, 0xA0)
    model EEA_FC_68 is Memory<UCH>;

    // Alias of EEA_FC_68
    // /** Konstanten 0x00A0 IONIST_MAX */
    // @ext(0x18, 0x02, 0xA0)
    // model IONIST_MAX is Memory<UCH>;

    // Alias of EEA_FC_68
    // /** Konstanten 0x00A0 SWITCH_MUX_Y5 */
    // @ext(0x18, 0x02, 0xA0)
    // model SWITCH_MUX_Y5 is Memory<UCH>;

    /** Konstanten 0x00A1 ASCII_L */
    @ext(0x19, 0x02, 0xA1)
    model ASCII_L is Memory<UCH>;

    /** Konstanten 0x00A2 EEA_FC_66 */
    @ext(0x1a, 0x02, 0xA2)
    model EEA_FC_66 is Memory<UCH>;

    /** Konstanten 0x00A3 ASCII_C */
    @ext(0x1b, 0x02, 0xA3)
    model ASCII_C is Memory<UCH>;

    // Alias of ASCII_C
    // /** Konstanten 0x00A3 GAIN_4_20MA */
    // @ext(0x1b, 0x02, 0xA3)
    // model GAIN_4_20MA is Memory<UCH>;

    /** Konstanten 0x00A4 EEA_FC_65 */
    @ext(0x1c, 0x02, 0xA4)
    model EEA_FC_65 is Memory<UCH>;

    /** Konstanten 0x00A6 EEA_FC_64 */
    @ext(0x1e, 0x02, 0xA6)
    model EEA_FC_64 is Memory<UCH>;

    /** Konstanten 0x00A8 ASCII_CE */
    @ext(0x10, 0x02, 0xA8)
    model ASCII_CE is Memory<UCH>;

    // Alias of ASCII_CE
    // /** Konstanten 0x00A8 EEA_FC_62 */
    // @ext(0x10, 0x02, 0xA8)
    // model EEA_FC_62 is Memory<UCH>;

    // Alias of ASCII_CE
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory<UCH>;

    /** Konstanten 0x00A9 ASCII_T */
    @ext(0x11, 0x02, 0xA9)
    model ASCII_T is Memory<UCH>;

    /** Konstanten 0x00AA EEA_FC_61 */
    @ext(0x12, 0x02, 0xAA)
    model EEA_FC_61 is Memory<UCH>;

    /** Konstanten 0x00AB ASCII_E */
    @ext(0x13, 0x02, 0xAB)
    model ASCII_E is Memory<UCH>;

    /** Konstanten 0x00AC EEA_FC_53 */
    @ext(0x14, 0x02, 0xAC)
    model EEA_FC_53 is Memory<UCH>;

    /** Konstanten 0x00AE ASCII_2 */
    @ext(0x16, 0x02, 0xAE)
    model ASCII_2 is Memory<UCH>;

    // Alias of ASCII_2
    // /** Konstanten 0x00AE CS_BYTE_WR */
    // @ext(0x16, 0x02, 0xAE)
    // model CS_BYTE_WR is Memory<UCH>;

    // Alias of ASCII_2
    // /** Konstanten 0x00AE EEA_FC_52 */
    // @ext(0x16, 0x02, 0xAE)
    // model EEA_FC_52 is Memory<UCH>;

    /** Konstanten 0x00AF CS_BYTE_RD */
    @ext(0x17, 0x02, 0xAF)
    model CS_BYTE_RD is Memory<UCH>;

    /** Konstanten 0x00B0 EEA_FC_51 */
    @ext(0x08, 0x02, 0xB0)
    model EEA_FC_51 is Memory<UCH>;

    /** Konstanten 0x00B2 EEA_FC_44 */
    @ext(0x0a, 0x02, 0xB2)
    model EEA_FC_44 is Memory<UCH>;

    /** Konstanten 0x00B4 EEA_FC_43 */
    @ext(0x0c, 0x02, 0xB4)
    model EEA_FC_43 is Memory<UCH>;

    // Alias of EEA_FC_43
    // /** Konstanten 0x00B4 NCL20SEC */
    // @ext(0x0c, 0x02, 0xB4)
    // model NCL20SEC is Memory<UCH>;

    /** Konstanten 0x00B6 EEA_FC_42 */
    @ext(0x0e, 0x02, 0xB6)
    model EEA_FC_42 is Memory<UCH>;

    /** Konstanten 0x00B7 ASCII_0 */
    @ext(0x0f, 0x02, 0xB7)
    model ASCII_0 is Memory<UCH>;

    /** Konstanten 0x00B8 ASCII_O */
    @ext(0x00, 0x02, 0xB8)
    model ASCII_O is Memory<UCH>;

    // Alias of ASCII_O
    // /** Konstanten 0x00B8 EEA_FC_41 */
    // @ext(0x00, 0x02, 0xB8)
    // model EEA_FC_41 is Memory<UCH>;

    /** Konstanten 0x00B9 ASCII_B */
    @ext(0x01, 0x02, 0xB9)
    model ASCII_B is Memory<UCH>;

    /** Konstanten 0x00BA EEA_FC_39 */
    @ext(0x02, 0x02, 0xBA)
    model EEA_FC_39 is Memory<UCH>;

    /** Konstanten 0x00BC ASCII_D */
    @ext(0x04, 0x02, 0xBC)
    model ASCII_D is Memory<UCH>;

    // Alias of ASCII_D
    // /** Konstanten 0x00BC EEA_FC_38 */
    // @ext(0x04, 0x02, 0xBC)
    // model EEA_FC_38 is Memory<UCH>;

    /** Konstanten 0x00BE EEA_FC_36 */
    @ext(0x06, 0x02, 0xBE)
    model EEA_FC_36 is Memory<UCH>;

    /** Konstanten 0x00BF KMO4_20MA_INV */
    @ext(0x07, 0x02, 0xBF)
    model KMO4_20MA_INV is Memory<UCH>;

    // Alias of KMO4_20MA_INV
    // /** Konstanten 0x00BF M_CLR_EXTWST */
    // @ext(0x07, 0x02, 0xBF)
    // model M_CLR_EXTWST is Memory<UCH>;

    /** Konstanten 0x00C0 AIN_B10_ERRORS */
    @ext(0x78, 0x02, 0xC0)
    model AIN_B10_ERRORS is Memory<UCH>;

    // Alias of AIN_B10_ERRORS
    // /** Konstanten 0x00C0 EEA_FC_35 */
    // @ext(0x78, 0x02, 0xC0)
    // model EEA_FC_35 is Memory<UCH>;

    // Alias of AIN_B10_ERRORS
    // /** Konstanten 0x00C0 SWITCH_MUX_Y6 */
    // @ext(0x78, 0x02, 0xC0)
    // model SWITCH_MUX_Y6 is Memory<UCH>;

    /** Konstanten 0x00C2 EEA_FC_34 */
    @ext(0x7a, 0x02, 0xC2)
    model EEA_FC_34 is Memory<UCH>;

    /** Konstanten 0x00C4 EEA_FC_33 */
    @ext(0x7c, 0x02, 0xC4)
    model EEA_FC_33 is Memory<UCH>;

    /** Konstanten 0x00C6 EEA_FC_31 */
    @ext(0x7e, 0x02, 0xC6)
    model EEA_FC_31 is Memory<UCH>;

    /** Konstanten 0x00C8 EEA_FC_30 */
    @ext(0x70, 0x02, 0xC8)
    model EEA_FC_30 is Memory<UCH>;

    // Alias of EEA_FC_30
    // /** Konstanten 0x00C8 MAXDELTAT */
    // @ext(0x70, 0x02, 0xC8)
    // model MAXDELTAT is Memory<UCH>;

    // Alias of EEA_FC_30
    // /** Konstanten 0x00C8 NCL100MSEC */
    // @ext(0x70, 0x02, 0xC8)
    // model NCL100MSEC is Memory<UCH>;

    /** Konstanten 0x00CA EEA_FC_24 */
    @ext(0x72, 0x02, 0xCA)
    model EEA_FC_24 is Memory<UCH>;

    /** Konstanten 0x00CC EEA_FC_23 */
    @ext(0x74, 0x02, 0xCC)
    model EEA_FC_23 is Memory<UCH>;

    /** Konstanten 0x00CE EEA_FC_22 */
    @ext(0x76, 0x02, 0xCE)
    model EEA_FC_22 is Memory<UCH>;

    /** Konstanten 0x00D0 EEA_FC_21 */
    @ext(0x68, 0x02, 0xD0)
    model EEA_FC_21 is Memory<UCH>;

    /** Konstanten 0x00D2 EEA_FC_18 */
    @ext(0x6a, 0x02, 0xD2)
    model EEA_FC_18 is Memory<UCH>;

    /** Konstanten 0x00D3 AD_20MA_ */
    @ext(0x6b, 0x02, 0xD3)
    model AD_20MA_ is Memory<UCH>;

    /** Konstanten 0x00D4 EEA_FC_16 */
    @ext(0x6c, 0x02, 0xD4)
    model EEA_FC_16 is Memory<UCH>;

    /** Konstanten 0x00D5 AD8_OF_25GRDC */
    @ext(0x6d, 0x02, 0xD5)
    model AD8_OF_25GRDC is Memory<UCH>;

    /** Konstanten 0x00D6 AD_20MA */
    @ext(0x6e, 0x02, 0xD6)
    model AD_20MA is Memory<UCH>;

    // Alias of AD_20MA
    // /** Konstanten 0x00D6 EEA_FC_15 */
    // @ext(0x6e, 0x02, 0xD6)
    // model EEA_FC_15 is Memory<UCH>;

    /** Konstanten 0x00D8 EEA_FC_14 */
    @ext(0x60, 0x02, 0xD8)
    model EEA_FC_14 is Memory<UCH>;

    /** Konstanten 0x00DA EEA_FC_13 */
    @ext(0x62, 0x02, 0xDA)
    model EEA_FC_13 is Memory<UCH>;

    /** Konstanten 0x00DC EEA_FC_12 */
    @ext(0x64, 0x02, 0xDC)
    model EEA_FC_12 is Memory<UCH>;

    /** Konstanten 0x00DE EEA_FC_11 */
    @ext(0x66, 0x02, 0xDE)
    model EEA_FC_11 is Memory<UCH>;

    // Alias of EEA_FC_11
    // /** Konstanten 0x00DE LIMNETZPERIOD */
    // @ext(0x66, 0x02, 0xDE)
    // model LIMNETZPERIOD is Memory<UCH>;

    /** Konstanten 0x00E0 EEA_HBRONTAG */
    @ext(0x58, 0x02, 0xE0)
    model EEA_HBRONTAG is Memory<UCH>;

    // Alias of EEA_HBRONTAG
    // /** Konstanten 0x00E0 EPYGPVOFFS__XWTOL */
    // @ext(0x58, 0x02, 0xE0)
    // model EPYGPVOFFS__XWTOL is Memory<UCH>;

    // Alias of EEA_HBRONTAG
    // /** Konstanten 0x00E0 SWITCH_MUX_Y7 */
    // @ext(0x58, 0x02, 0xE0)
    // model SWITCH_MUX_Y7 is Memory<UCH>;

    // Alias of EEA_HBRONTAG
    // /** Konstanten 0x00E0 TABGAS_BREAK_MASK */
    // @ext(0x58, 0x02, 0xE0)
    // model TABGAS_BREAK_MASK is Memory<UCH>;

    /** Konstanten 0x00E1 EEA_NZUENDTAG */
    @ext(0x59, 0x02, 0xE1)
    model EEA_NZUENDTAG is Memory<UCH>;

    /** Konstanten 0x00E2 EEA_N_PON */
    @ext(0x5a, 0x02, 0xE2)
    model EEA_N_PON is Memory<UCH>;

    /** Konstanten 0x00E3 NORMAL */
    @ext(0x5b, 0x02, 0xE3)
    model NORMAL is Memory<UCH>;

    /** Konstanten 0x00E4 EEA_N_KON */
    @ext(0x5c, 0x02, 0xE4)
    model EEA_N_KON is Memory<UCH>;

    /** Konstanten 0x00E6 EEA_RES_CNT */
    @ext(0x5e, 0x02, 0xE6)
    model EEA_RES_CNT is Memory<UCH>;

    /** Konstanten 0x00E8 CCT_RELOAD_HI */
    @ext(0x50, 0x02, 0xE8)
    model CCT_RELOAD_HI is Memory<UCH>;

    // Alias of CCT_RELOAD_HI
    // /** Konstanten 0x00E8 KEY_PORT */
    // @ext(0x50, 0x02, 0xE8)
    // model KEY_PORT is Memory<UCH>;

    /** Konstanten 0x00E9 EEA_SHUT_OFF */
    @ext(0x51, 0x02, 0xE9)
    model EEA_SHUT_OFF is Memory<UCH>;

    /** Konstanten 0x00EB AF_MAX */
    @ext(0x53, 0x02, 0xEB)
    model AF_MAX is Memory<UCH>;

    // Alias of AF_MAX
    // /** Konstanten 0x00EB EEA_H_PON */
    // @ext(0x53, 0x02, 0xEB)
    // model EEA_H_PON is Memory<UCH>;

    /** Konstanten 0x00EC NIT_MAX */
    @ext(0x54, 0x02, 0xEC)
    model NIT_MAX is Memory<UCH>;

    /** Konstanten 0x00EE EEA_H_BON */
    @ext(0x56, 0x02, 0xEE)
    model EEA_H_BON is Memory<UCH>;

    /** Konstanten 0x00EF CLR_DAT_PIN */
    @ext(0x57, 0x02, 0xEF)
    model CLR_DAT_PIN is Memory<UCH>;

    // Alias of CLR_DAT_PIN
    // /** Konstanten 0x00EF M_CLR_PC_RQ_RS */
    // @ext(0x57, 0x02, 0xEF)
    // model M_CLR_PC_RQ_RS is Memory<UCH>;

    /** Konstanten 0x00F0 EEA_N_ZUE */
    @ext(0x48, 0x02, 0xF0)
    model EEA_N_ZUE is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 EPWARNMAN__IONSOLLKORRTL */
    // @ext(0x48, 0x02, 0xF0)
    // model EPWARNMAN__IONSOLLKORRTL is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 ISP_NG_STEP__KICK */
    // @ext(0x48, 0x02, 0xF0)
    // model ISP_NG_STEP__KICK is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 KESS_OPT__VA */
    // @ext(0x48, 0x02, 0xF0)
    // model KESS_OPT__VA is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 KESS_OPT__VM */
    // @ext(0x48, 0x02, 0xF0)
    // model KESS_OPT__VM is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 NGIST_MAX */
    // @ext(0x48, 0x02, 0xF0)
    // model NGIST_MAX is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 NG_NSP__TSZA */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_NSP__TSZA is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 NG_REG_ANPASS__START */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_REG_ANPASS__START is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 NM_TI_FG_MASK */
    // @ext(0x48, 0x02, 0xF0)
    // model NM_TI_FG_MASK is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 QQ_M5 */
    // @ext(0x48, 0x02, 0xF0)
    // model QQ_M5 is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 TCSZA__IOREGANPASS */
    // @ext(0x48, 0x02, 0xF0)
    // model TCSZA__IOREGANPASS is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 TCVSP__NSP */
    // @ext(0x48, 0x02, 0xF0)
    // model TCVSP__NSP is Memory<UCH>;

    // Alias of EEA_N_ZUE
    // /** Konstanten 0x00F0 XRAM_PAGE_DEFAULT */
    // @ext(0x48, 0x02, 0xF0)
    // model XRAM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x00F1 QQ_M10 */
    @ext(0x49, 0x02, 0xF1)
    model QQ_M10 is Memory<UCH>;

    /** Konstanten 0x00F5 CALIBOFF */
    @ext(0x4d, 0x02, 0xF5)
    model CALIBOFF is Memory<UCH>;

    /** Konstanten 0x00F6 ZZ_SADR_M10 */
    @ext(0x4e, 0x02, 0xF6)
    model ZZ_SADR_M10 is Memory<UCH>;

    /** Konstanten 0x00F7 GERAETE_CRC_WCM4 */
    @ext(0x4f, 0x02, 0xF7)
    model GERAETE_CRC_WCM4 is Memory<UCH>;

    // Alias of GERAETE_CRC_WCM4
    // /** Konstanten 0x00F7 M_CLR_M2_RQ_RS */
    // @ext(0x4f, 0x02, 0xF7)
    // model M_CLR_M2_RQ_RS is Memory<UCH>;

    // Alias of GERAETE_CRC_WCM4
    // /** Konstanten 0x00F7 QQ_M20 */
    // @ext(0x4f, 0x02, 0xF7)
    // model QQ_M20 is Memory<UCH>;

    /** Konstanten 0x00F8 EP15RTHZEIT__DTVL */
    @ext(0x40, 0x02, 0xF8)
    model EP15RTHZEIT__DTVL is Memory<UCH>;

    // Alias of EP15RTHZEIT__DTVL
    // /** Konstanten 0x00F8 EPIONSOLLSTARTGRAD__MINI */
    // @ext(0x40, 0x02, 0xF8)
    // model EPIONSOLLSTARTGRAD__MINI is Memory<UCH>;

    // Alias of EP15RTHZEIT__DTVL
    // /** Konstanten 0x00F8 HZ_KTND__D */
    // @ext(0x40, 0x02, 0xF8)
    // model HZ_KTND__D is Memory<UCH>;

    // Alias of EP15RTHZEIT__DTVL
    // /** Konstanten 0x00F8 NTC_MAX */
    // @ext(0x40, 0x02, 0xF8)
    // model NTC_MAX is Memory<UCH>;

    // Alias of EP15RTHZEIT__DTVL
    // /** Konstanten 0x00F8 TFRS_ANLAGE__SELF */
    // @ext(0x40, 0x02, 0xF8)
    // model TFRS_ANLAGE__SELF is Memory<UCH>;

    // Alias of EP15RTHZEIT__DTVL
    // /** Konstanten 0x00F8 WW_HYS__WWPWM */
    // @ext(0x40, 0x02, 0xF8)
    // model WW_HYS__WWPWM is Memory<UCH>;

    /** Konstanten 0x00F9 GERAETE_CRC_WCM3 */
    @ext(0x41, 0x02, 0xF9)
    model GERAETE_CRC_WCM3 is Memory<UCH>;

    /** Konstanten 0x00FA IOEE_MINCODE */
    @ext(0x42, 0x02, 0xFA)
    model IOEE_MINCODE is Memory<UCH>;

    // Alias of IOEE_MINCODE
    // /** Konstanten 0x00FA IOEE_OFFSMIN */
    // @ext(0x42, 0x02, 0xFA)
    // model IOEE_OFFSMIN is Memory<UCH>;

    // Alias of IOEE_MINCODE
    // /** Konstanten 0x00FA MX_RES_CYCL */
    // @ext(0x42, 0x02, 0xFA)
    // model MX_RES_CYCL is Memory<UCH>;

    /** Konstanten 0x00FB CLR_WR_PIN */
    @ext(0x43, 0x02, 0xFB)
    model CLR_WR_PIN is Memory<UCH>;

    // Alias of CLR_WR_PIN
    // /** Konstanten 0x00FB IOEE_OFFSMAX */
    // @ext(0x43, 0x02, 0xFB)
    // model IOEE_OFFSMAX is Memory<UCH>;

    /** Konstanten 0x00FC ION_KP__NGLIMUP */
    @ext(0x44, 0x02, 0xFC)
    model ION_KP__NGLIMUP is Memory<UCH>;

    // Alias of ION_KP__NGLIMUP
    // /** Konstanten 0x00FC ION_KTN__NGLIMDOWN */
    // @ext(0x44, 0x02, 0xFC)
    // model ION_KTN__NGLIMDOWN is Memory<UCH>;

    /** Konstanten 0x00FD CLR_RD_PIN */
    @ext(0x45, 0x02, 0xFD)
    model CLR_RD_PIN is Memory<UCH>;

    // Alias of CLR_RD_PIN
    // /** Konstanten 0x00FD IOEE_ED_LOW */
    // @ext(0x45, 0x02, 0xFD)
    // model IOEE_ED_LOW is Memory<UCH>;

    // Alias of CLR_RD_PIN
    // /** Konstanten 0x00FD IOEE_EMERGENCY */
    // @ext(0x45, 0x02, 0xFD)
    // model IOEE_EMERGENCY is Memory<UCH>;

    // Alias of CLR_RD_PIN
    // /** Konstanten 0x00FD KMOCLRCHANGEDMASK */
    // @ext(0x45, 0x02, 0xFD)
    // model KMOCLRCHANGEDMASK is Memory<UCH>;

    // Alias of CLR_RD_PIN
    // /** Konstanten 0x00FD M_CLR_REGSTOPP */
    // @ext(0x45, 0x02, 0xFD)
    // model M_CLR_REGSTOPP is Memory<UCH>;

    // Alias of CLR_RD_PIN
    // /** Konstanten 0x00FD T2_RELOAD_HI */
    // @ext(0x45, 0x02, 0xFD)
    // model T2_RELOAD_HI is Memory<UCH>;

    /** Konstanten 0x00FE CLR_CS_PIN */
    @ext(0x46, 0x02, 0xFE)
    model CLR_CS_PIN is Memory<UCH>;

    // Alias of CLR_CS_PIN
    // /** Konstanten 0x00FE CLR_RMAP_MASK */
    // @ext(0x46, 0x02, 0xFE)
    // model CLR_RMAP_MASK is Memory<UCH>;

    // Alias of CLR_CS_PIN
    // /** Konstanten 0x00FE IOEE_ED_HIGH */
    // @ext(0x46, 0x02, 0xFE)
    // model IOEE_ED_HIGH is Memory<UCH>;

    /** Konstanten 0x00FF ADC_BREAK */
    @ext(0x47, 0x02, 0xFF)
    model ADC_BREAK is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF ALL_PINS_OUT */
    // @ext(0x47, 0x02, 0xFF)
    // model ALL_PINS_OUT is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF CALIB_N_ZUE */
    // @ext(0x47, 0x02, 0xFF)
    // model CALIB_N_ZUE is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF EEACNTCALIB */
    // @ext(0x47, 0x02, 0xFF)
    // model EEACNTCALIB is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF IOEE_CNTIO230VERR */
    // @ext(0x47, 0x02, 0xFF)
    // model IOEE_CNTIO230VERR is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF IOEE_CNTNETZPERIODE */
    // @ext(0x47, 0x02, 0xFF)
    // model IOEE_CNTNETZPERIODE is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF IOEE_TOVFLOW */
    // @ext(0x47, 0x02, 0xFF)
    // model IOEE_TOVFLOW is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NCL100MSEC_COLD */
    // @ext(0x47, 0x02, 0xFF)
    // model NCL100MSEC_COLD is Memory<UCH>;

    /** Konstanten 0x0100 EEAEPHANF */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model EEAEPHANF is Memory<UCH>;

    // Alias of EEAEPHANF
    // /** Konstanten 0x0100 EEAHIST_FCODE */
    // @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    // model EEAHIST_FCODE is Memory<UCH>;

    /** Konstanten 0x0101 EEAHIST_S5STEP */
    @ext(0x35, 0x06, 0x01, 0x02, 0x01)
    model EEAHIST_S5STEP is Memory<UCH>;

    /** Konstanten 0x0102 EEAHIST_NGIST */
    @ext(0x36, 0x06, 0x01, 0x02, 0x02)
    model EEAHIST_NGIST is Memory<UCH>;

    /** Konstanten 0x0103 EEAHIST_CNTFLASTAB */
    @ext(0x37, 0x06, 0x01, 0x02, 0x03)
    model EEAHIST_CNTFLASTAB is Memory<UCH>;

    /** Konstanten 0x0104 EEAHIST_TVIST */
    @ext(0x30, 0x06, 0x01, 0x02, 0x04)
    model EEAHIST_TVIST is Memory<UCH>;

    /** Konstanten 0x0105 EEAHIST_TABGAS */
    @ext(0x31, 0x06, 0x01, 0x02, 0x05)
    model EEAHIST_TABGAS is Memory<UCH>;

    /** Konstanten 0x0106 EEAHIST_IONIST */
    @ext(0x32, 0x06, 0x01, 0x02, 0x06)
    model EEAHIST_IONIST is Memory<UCH>;

    /** Konstanten 0x0107 EEAHIST_TAUSSEN */
    @ext(0x33, 0x06, 0x01, 0x02, 0x07)
    model EEAHIST_TAUSSEN is Memory<UCH>;

    /** Konstanten 0x0108 EEAHIST_TWWIST */
    @ext(0x3c, 0x06, 0x01, 0x02, 0x08)
    model EEAHIST_TWWIST is Memory<UCH>;

    /** Konstanten 0x0109 EEAHIST_PWMGPV */
    @ext(0x3d, 0x06, 0x01, 0x02, 0x09)
    model EEAHIST_PWMGPV is Memory<UCH>;

    // Alias of EEAHIST_PWMGPV
    // /** Konstanten 0x0109 EEAHIST_TB11_AD */
    // @ext(0x3d, 0x06, 0x01, 0x02, 0x09)
    // model EEAHIST_TB11_AD is Memory<UCH>;

    /** Konstanten 0x010A EEAHIST_FCODE_2 */
    @ext(0x3e, 0x06, 0x01, 0x02, 0x0A)
    model EEAHIST_FCODE_2 is Memory<UCH>;

    /** Konstanten 0x0114 EEAHIST_FCODE_3 */
    @ext(0x20, 0x06, 0x01, 0x02, 0x14)
    model EEAHIST_FCODE_3 is Memory<UCH>;

    /** Konstanten 0x011D TWARTEQQ */
    @ext(0x29, 0x06, 0x01, 0x02, 0x1D)
    model TWARTEQQ is Memory<UCH>;

    /** Konstanten 0x011E EEAHIST_FCODE_4 */
    @ext(0x2a, 0x06, 0x01, 0x02, 0x1E)
    model EEAHIST_FCODE_4 is Memory<UCH>;

    /** Konstanten 0x0128 EEAHIST_FCODE_5 */
    @ext(0x1c, 0x06, 0x01, 0x02, 0x28)
    model EEAHIST_FCODE_5 is Memory<UCH>;

    /** Konstanten 0x0132 EEAHIST_FCODE_6 */
    @ext(0x06, 0x06, 0x01, 0x02, 0x32)
    model EEAHIST_FCODE_6 is Memory<UCH>;

    /** Konstanten 0x013B EEAEPHEND */
    @ext(0x0f, 0x06, 0x01, 0x02, 0x3B)
    model EEAEPHEND is Memory<UCH>;

    /** Konstanten 0x013C EEAEPHWRPNT */
    @ext(0x08, 0x06, 0x01, 0x02, 0x3C)
    model EEAEPHWRPNT is Memory<UCH>;

    /** Konstanten 0x013D EEAIOCALIBHISTPNT */
    @ext(0x09, 0x06, 0x01, 0x02, 0x3D)
    model EEAIOCALIBHISTPNT is Memory<UCH>;

    /** Konstanten 0x013E EEAIOCALIBHISTIONMAX */
    @ext(0x0a, 0x06, 0x01, 0x02, 0x3E)
    model EEAIOCALIBHISTIONMAX is Memory<UCH>;

    /** Konstanten 0x013F EEAIOCALIBHISTPWM */
    @ext(0x0b, 0x06, 0x01, 0x02, 0x3F)
    model EEAIOCALIBHISTPWM is Memory<UCH>;

    /** Konstanten 0x0140 EEAIOCALIBHIST_HPON */
    @ext(0x74, 0x06, 0x01, 0x02, 0x40)
    model EEAIOCALIBHIST_HPON is Memory<UCH>;

    /** Konstanten 0x01C7 FIKALTSTART */
    @ext(0xf3, 0x06, 0x01, 0x02, 0xC7)
    model FIKALTSTART is Memory<UCH>;

    /** Konstanten 0x01F4 PWMRANGE */
    @ext(0xc0, 0x06, 0x01, 0x02, 0xF4)
    model PWMRANGE is Memory<UCH>;

    // Alias of PWMRANGE
    // /** Konstanten 0x01F4 PWM_RANGE */
    // @ext(0xc0, 0x06, 0x01, 0x02, 0xF4)
    // model PWM_RANGE is Memory<UCH>;

    // Alias of PWMRANGE
    // /** Konstanten 0x01F4 SYS_TAKT */
    // @ext(0xc0, 0x06, 0x01, 0x02, 0xF4)
    // model SYS_TAKT is Memory<UCH>;

    /** Konstanten 0x01FD EEAIOCALIBHISTEND */
    @ext(0xc9, 0x06, 0x01, 0x02, 0xFD)
    model EEAIOCALIBHISTEND is Memory<UCH>;

    /** Konstanten 0x0200 EEA_PAGE_2 */
    @ext(0xac, 0x06, 0x02, 0x02, 0x00)
    model EEA_PAGE_2 is Memory<UCH>;

    /** Konstanten 0x0201 EEA_0201 */
    @ext(0xad, 0x06, 0x02, 0x02, 0x01)
    model EEA_0201 is Memory<UCH>;

    /** Konstanten 0x02EE T2_RELOAD */
    @ext(0x42, 0x06, 0x02, 0x02, 0xEE)
    model T2_RELOAD is Memory<UCH>;

    /** Konstanten 0x0300 EEA_PAGE_3 */
    @ext(0x10, 0x06, 0x03, 0x02, 0x00)
    model EEA_PAGE_3 is Memory<UCH>;

    /** Konstanten 0x0301 EEA_0301 */
    @ext(0x11, 0x06, 0x03, 0x02, 0x01)
    model EEA_0301 is Memory<UCH>;

    /** Konstanten 0x0302 EBUS_HARDWARE_WCM3 */
    @ext(0x12, 0x06, 0x03, 0x02, 0x02)
    model EBUS_HARDWARE_WCM3 is Memory<UCH>;

    // Alias of EBUS_HARDWARE_WCM3
    // /** Konstanten 0x0302 EBUS_HARDWARE_WCM3C */
    // @ext(0x12, 0x06, 0x03, 0x02, 0x02)
    // model EBUS_HARDWARE_WCM3C is Memory<UCH>;


    // ====================================
    // --- External RAM (XRAM) ---
    // ====================================

    /** External RAM (XRAM) 0xF000 TX_BUFFER_END */
    @ext(0xe4, 0x03, 0x00)
    model TX_BUFFER_END is Memory<UCH>;

    /** External RAM (XRAM) 0xF001 EBUS_ERROR */
    @ext(0xe5, 0x03, 0x01)
    model EBUS_ERROR is Memory<UCH>;

    /** External RAM (XRAM) 0xF002 TX_QQ */
    @ext(0xe6, 0x03, 0x02)
    model TX_QQ is Memory<UCH>;

    // Alias of TX_QQ
    // /** External RAM (XRAM) 0xF002 TX_XRAM */
    // @ext(0xe6, 0x03, 0x02)
    // model TX_XRAM is Memory<UCH>;

    /** External RAM (XRAM) 0xF003 TX_ZZ */
    @ext(0xe7, 0x03, 0x03)
    model TX_ZZ is Memory<UCH>;

    /** External RAM (XRAM) 0xF004 TX_PB */
    @ext(0xe0, 0x03, 0x04)
    model TX_PB is Memory<UCH>;

    /** External RAM (XRAM) 0xF005 TX_SB */
    @ext(0xe1, 0x03, 0x05)
    model TX_SB is Memory<UCH>;

    /** External RAM (XRAM) 0xF006 TX_NN */
    @ext(0xe2, 0x03, 0x06)
    model TX_NN is Memory<UCH>;

    /** External RAM (XRAM) 0xF007 TX_DB1 */
    @ext(0xe3, 0x03, 0x07)
    model TX_DB1 is Memory<UCH>;

    /** External RAM (XRAM) 0xF008 TX_DB2 */
    @ext(0xec, 0x03, 0x08)
    model TX_DB2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF009 TX_DB3 */
    @ext(0xed, 0x03, 0x09)
    model TX_DB3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF00A TX_DB4 */
    @ext(0xee, 0x03, 0x0A)
    model TX_DB4 is Memory<UCH>;

    /** External RAM (XRAM) 0xF00B TX_DB5 */
    @ext(0xef, 0x03, 0x0B)
    model TX_DB5 is Memory<UCH>;

    /** External RAM (XRAM) 0xF00C TX_DB6 */
    @ext(0xe8, 0x03, 0x0C)
    model TX_DB6 is Memory<UCH>;

    /** External RAM (XRAM) 0xF00D TX_DBX */
    @ext(0xe9, 0x03, 0x0D)
    model TX_DBX is Memory<UCH>;

    /** External RAM (XRAM) 0xF029 RX_OFFSET_CNT */
    @ext(0xcd, 0x03, 0x29)
    model RX_OFFSET_CNT is Memory<UCH>;

    /** External RAM (XRAM) 0xF02A RX_BUFFER_END */
    @ext(0xce, 0x03, 0x2A)
    model RX_BUFFER_END is Memory<UCH>;

    /** External RAM (XRAM) 0xF02B EBUS_ACK */
    @ext(0xcf, 0x03, 0x2B)
    model EBUS_ACK is Memory<UCH>;

    /** External RAM (XRAM) 0xF02C RX_QQ */
    @ext(0xc8, 0x03, 0x2C)
    model RX_QQ is Memory<UCH>;

    // Alias of RX_QQ
    // /** External RAM (XRAM) 0xF02C RX_XRAM */
    // @ext(0xc8, 0x03, 0x2C)
    // model RX_XRAM is Memory<UCH>;

    /** External RAM (XRAM) 0xF02D RX_ZZ */
    @ext(0xc9, 0x03, 0x2D)
    model RX_ZZ is Memory<UCH>;

    /** External RAM (XRAM) 0xF02E RX_PB */
    @ext(0xca, 0x03, 0x2E)
    model RX_PB is Memory<UCH>;

    /** External RAM (XRAM) 0xF02F RX_SB */
    @ext(0xcb, 0x03, 0x2F)
    model RX_SB is Memory<UCH>;

    /** External RAM (XRAM) 0xF030 RX_NN */
    @ext(0xd4, 0x03, 0x30)
    model RX_NN is Memory<UCH>;

    /** External RAM (XRAM) 0xF031 RX_DB1 */
    @ext(0xd5, 0x03, 0x31)
    model RX_DB1 is Memory<UCH>;

    /** External RAM (XRAM) 0xF032 RX_DB2 */
    @ext(0xd6, 0x03, 0x32)
    model RX_DB2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF033 RX_DB3 */
    @ext(0xd7, 0x03, 0x33)
    model RX_DB3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF034 RX_DB4 */
    @ext(0xd0, 0x03, 0x34)
    model RX_DB4 is Memory<UCH>;

    /** External RAM (XRAM) 0xF035 RX_DB5 */
    @ext(0xd1, 0x03, 0x35)
    model RX_DB5 is Memory<UCH>;

    /** External RAM (XRAM) 0xF036 RX_DB6 */
    @ext(0xd2, 0x03, 0x36)
    model RX_DB6 is Memory<UCH>;

    /** External RAM (XRAM) 0xF037 RX_DB7 */
    @ext(0xd3, 0x03, 0x37)
    model RX_DB7 is Memory<UCH>;

    /** External RAM (XRAM) 0xF038 RX_DB8 */
    @ext(0xdc, 0x03, 0x38)
    model RX_DB8 is Memory<UCH>;

    /** External RAM (XRAM) 0xF03A RX_DB10 */
    @ext(0xde, 0x03, 0x3A)
    model RX_DB10 is Memory<UCH>;

    /** External RAM (XRAM) 0xF03C RX_DB12 */
    @ext(0xd8, 0x03, 0x3C)
    model RX_DB12 is Memory<UCH>;

    /** External RAM (XRAM) 0xF03E RX_DB14 */
    @ext(0xda, 0x03, 0x3E)
    model RX_DB14 is Memory<UCH>;

    /** External RAM (XRAM) 0xF040 RX_DB16 */
    @ext(0xa4, 0x03, 0x40)
    model RX_DB16 is Memory<UCH>;

    /** External RAM (XRAM) 0xF042 RX_DB18 */
    @ext(0xa6, 0x03, 0x42)
    model RX_DB18 is Memory<UCH>;

    /** External RAM (XRAM) 0xF044 RX_DB20 */
    @ext(0xa0, 0x03, 0x44)
    model RX_DB20 is Memory<UCH>;

    /** External RAM (XRAM) 0xF046 RX_DB22 */
    @ext(0xa2, 0x03, 0x46)
    model RX_DB22 is Memory<UCH>;

    /** External RAM (XRAM) 0xF048 RX_DB24 */
    @ext(0xac, 0x03, 0x48)
    model RX_DB24 is Memory<UCH>;

    /** External RAM (XRAM) 0xF04A RX_DB26 */
    @ext(0xae, 0x03, 0x4A)
    model RX_DB26 is Memory<UCH>;

    /** External RAM (XRAM) 0xF04C RX_DB28 */
    @ext(0xa8, 0x03, 0x4C)
    model RX_DB28 is Memory<UCH>;

    /** External RAM (XRAM) 0xF04E RX_DB30 */
    @ext(0xaa, 0x03, 0x4E)
    model RX_DB30 is Memory<UCH>;

    /** External RAM (XRAM) 0xF050 RX_DB32 */
    @ext(0xb4, 0x03, 0x50)
    model RX_DB32 is Memory<UCH>;

    /** External RAM (XRAM) 0xF052 RX_DB34 */
    @ext(0xb6, 0x03, 0x52)
    model RX_DB34 is Memory<UCH>;

    /** External RAM (XRAM) 0xF053 FAKT_NGUPMTO12B */
    @ext(0xb7, 0x03, 0x53)
    model FAKT_NGUPMTO12B is Memory<UCH>;

    // Alias of FAKT_NGUPMTO12B
    // /** External RAM (XRAM) 0xF053 RX_XRAM_END */
    // @ext(0xb7, 0x03, 0x53)
    // model RX_XRAM_END is Memory<UCH>;

    // Alias of FAKT_NGUPMTO12B
    // /** External RAM (XRAM) 0xF053 TWWIST_2 */
    // @ext(0xb7, 0x03, 0x53)
    // model TWWIST_2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF054 TB11_AD */
    @ext(0xb0, 0x03, 0x54)
    model TB11_AD is Memory<UCH>;

    /** External RAM (XRAM) 0xF055 TA_FILTER */
    @ext(0xb1, 0x03, 0x55)
    model TA_FILTER is Memory<UCH>;

    /** External RAM (XRAM) 0xF057 TA_MITTEL */
    @ext(0xb3, 0x03, 0x57)
    model TA_MITTEL is Memory<UCH>;

    /** External RAM (XRAM) 0xF058 W_CODE */
    @ext(0xbc, 0x03, 0x58)
    model W_CODE is Memory<UCH>;

    /** External RAM (XRAM) 0xF059 MODULATIONSGRAD */
    @ext(0xbd, 0x03, 0x59)
    model MODULATIONSGRAD is Memory<UCH>;

    /** External RAM (XRAM) 0xF05A SECBROFF */
    @ext(0xbe, 0x03, 0x5A)
    model SECBROFF is Memory<UCH>;

    /** External RAM (XRAM) 0xF05C TABREGELSOLL */
    @ext(0xb8, 0x03, 0x5C)
    model TABREGELSOLL is Memory<UCH>;

    /** External RAM (XRAM) 0xF05D NGIST_UPM */
    @ext(0xb9, 0x03, 0x5D)
    model NGIST_UPM is Memory<UCH>;

    /** External RAM (XRAM) 0xF05F CNTIOCALIB_N_ZUE */
    @ext(0xbb, 0x03, 0x5F)
    model CNTIOCALIB_N_ZUE is Memory<UCH>;

    /** External RAM (XRAM) 0xF060 CNTIOCALIB_H_BON */
    @ext(0x84, 0x03, 0x60)
    model CNTIOCALIB_H_BON is Memory<UCH>;

    /** External RAM (XRAM) 0xF061 CALIBIONSOLL */
    @ext(0x85, 0x03, 0x61)
    model CALIBIONSOLL is Memory<UCH>;

    /** External RAM (XRAM) 0xF062 CALIBNEUSOLLWICHT */
    @ext(0x86, 0x03, 0x62)
    model CALIBNEUSOLLWICHT is Memory<UCH>;

    /** External RAM (XRAM) 0xF063 CALIBERRCNT */
    @ext(0x87, 0x03, 0x63)
    model CALIBERRCNT is Memory<UCH>;

    /** External RAM (XRAM) 0xF064 CALIB_TIMER */
    @ext(0x80, 0x03, 0x64)
    model CALIB_TIMER is Memory<UCH>;

    /** External RAM (XRAM) 0xF065 CALIBIONMAX */
    @ext(0x81, 0x03, 0x65)
    model CALIBIONMAX is Memory<UCH>;

    /** External RAM (XRAM) 0xF066 ION_SOLL_INV */
    @ext(0x82, 0x03, 0x66)
    model ION_SOLL_INV is Memory<UCH>;

    /** External RAM (XRAM) 0xF067 IO_KORR_TEMP */
    @ext(0x83, 0x03, 0x67)
    model IO_KORR_TEMP is Memory<UCH>;

    /** External RAM (XRAM) 0xF068 IONREGSTUCKCNT */
    @ext(0x8c, 0x03, 0x68)
    model IONREGSTUCKCNT is Memory<UCH>;

    /** External RAM (XRAM) 0xF069 S5STEPVORFEHLER */
    @ext(0x8d, 0x03, 0x69)
    model S5STEPVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06A NGISTVORFEHLER */
    @ext(0x8e, 0x03, 0x6A)
    model NGISTVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06B IONISTVORFEHLER */
    @ext(0x8f, 0x03, 0x6B)
    model IONISTVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06C TVISTVORFEHLER */
    @ext(0x88, 0x03, 0x6C)
    model TVISTVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06D TABGASVORFEHLER */
    @ext(0x89, 0x03, 0x6D)
    model TABGASVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06E TWWISTVORFEHLER */
    @ext(0x8a, 0x03, 0x6E)
    model TWWISTVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF06F PWMGPVVORFEHLER */
    @ext(0x8b, 0x03, 0x6F)
    model PWMGPVVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF070 TAUSSENVORFEHLER */
    @ext(0x94, 0x03, 0x70)
    model TAUSSENVORFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF071 TPUFFER_0507_M14 */
    @ext(0x95, 0x03, 0x71)
    model TPUFFER_0507_M14 is Memory<UCH>;

    /** External RAM (XRAM) 0xF072 PREVNGFLANKE */
    @ext(0x96, 0x03, 0x72)
    model PREVNGFLANKE is Memory<UCH>;

    /** External RAM (XRAM) 0xF073 NGIST_CNT_SUM */
    @ext(0x97, 0x03, 0x73)
    model NGIST_CNT_SUM is Memory<UCH>;

    /** External RAM (XRAM) 0xF074 NGKORR */
    @ext(0x90, 0x03, 0x74)
    model NGKORR is Memory<UCH>;

    /** External RAM (XRAM) 0xF075 NGXW_UPM */
    @ext(0x91, 0x03, 0x75)
    model NGXW_UPM is Memory<UCH>;

    /** External RAM (XRAM) 0xF077 REMOTE_YGEBL */
    @ext(0x93, 0x03, 0x77)
    model REMOTE_YGEBL is Memory<UCH>;

    /** External RAM (XRAM) 0xF079 AB_COPY */
    @ext(0x9d, 0x03, 0x79)
    model AB_COPY is Memory<UCH>;

    /** External RAM (XRAM) 0xF07A AB_CHECK */
    @ext(0x9e, 0x03, 0x7A)
    model AB_CHECK is Memory<UCH>;

    /** External RAM (XRAM) 0xF07B KEY_ACT_COPY */
    @ext(0x9f, 0x03, 0x7B)
    model KEY_ACT_COPY is Memory<UCH>;

    /** External RAM (XRAM) 0xF07C cntFlaStabHZ */
    @ext(0x98, 0x03, 0x7C)
    model cntFlaStabHZ is Memory<UCH>;

    /** External RAM (XRAM) 0xF07D CNTTW */
    @ext(0x99, 0x03, 0x7D)
    model CNTTW is Memory<UCH>;

    /** External RAM (XRAM) 0xF07E prev_nGsoll */
    @ext(0x9a, 0x03, 0x7E)
    model prev_nGsoll is Memory<UCH>;

    /** External RAM (XRAM) 0xF07F icl1HrsKick */
    @ext(0x9b, 0x03, 0x7F)
    model icl1HrsKick is Memory<UCH>;

    /** External RAM (XRAM) 0xF080 cntConfig */
    @ext(0x64, 0x03, 0x80)
    model cntConfig is Memory<UCH>;

    /** External RAM (XRAM) 0xF082 SA_Th */
    @ext(0x66, 0x03, 0x82)
    model SA_Th is Memory<UCH>;

    /** External RAM (XRAM) 0xF083 cntBWladezeit */
    @ext(0x67, 0x03, 0x83)
    model cntBWladezeit is Memory<UCH>;

    /** External RAM (XRAM) 0xF084 CntExpandTol */
    @ext(0x60, 0x03, 0x84)
    model CntExpandTol is Memory<UCH>;

    /** External RAM (XRAM) 0xF085 prevTVist */
    @ext(0x61, 0x03, 0x85)
    model prevTVist is Memory<UCH>;

    /** External RAM (XRAM) 0xF086 yDT1 */
    @ext(0x62, 0x03, 0x86)
    model yDT1 is Memory<UCH>;

    /** External RAM (XRAM) 0xF088 cnt_WW_AntiBlupp */
    @ext(0x6c, 0x03, 0x88)
    model cnt_WW_AntiBlupp is Memory<UCH>;

    /** External RAM (XRAM) 0xF089 PNL_HK1cnt */
    @ext(0x6d, 0x03, 0x89)
    model PNL_HK1cnt is Memory<UCH>;

    /** External RAM (XRAM) 0xF08B secFCodeW */
    @ext(0x6f, 0x03, 0x8B)
    model secFCodeW is Memory<UCH>;

    /** External RAM (XRAM) 0xF08C DTVIST */
    @ext(0x68, 0x03, 0x8C)
    model DTVIST is Memory<UCH>;

    /** External RAM (XRAM) 0xF08D CNTGradTVist */
    @ext(0x69, 0x03, 0x8D)
    model CNTGradTVist is Memory<UCH>;

    /** External RAM (XRAM) 0xF08E cntSoft */
    @ext(0x6a, 0x03, 0x8E)
    model cntSoft is Memory<UCH>;

    /** External RAM (XRAM) 0xF08F Min_nGsoll */
    @ext(0x6b, 0x03, 0x8F)
    model Min_nGsoll is Memory<UCH>;

    /** External RAM (XRAM) 0xF090 CALIBNEWSOLLOFMAX */
    @ext(0x74, 0x03, 0x90)
    model CALIBNEWSOLLOFMAX is Memory<UCH>;

    // Alias of CALIBNEWSOLLOFMAX
    // /** External RAM (XRAM) 0xF090 XRAEPIANF */
    // @ext(0x74, 0x03, 0x90)
    // model XRAEPIANF is Memory<UCH>;

    /** External RAM (XRAM) 0xF091 IONSOLLWERKMIN */
    @ext(0x75, 0x03, 0x91)
    model IONSOLLWERKMIN is Memory<UCH>;

    /** External RAM (XRAM) 0xF092 IONSOLLWERKMAX */
    @ext(0x76, 0x03, 0x92)
    model IONSOLLWERKMAX is Memory<UCH>;

    /** External RAM (XRAM) 0xF093 EPGPVSTART */
    @ext(0x77, 0x03, 0x93)
    model EPGPVSTART is Memory<UCH>;

    /** External RAM (XRAM) 0xF094 ISP_NG_STEP */
    @ext(0x70, 0x03, 0x94)
    model ISP_NG_STEP is Memory<UCH>;

    /** External RAM (XRAM) 0xF095 ISP_REL_SOLL */
    @ext(0x71, 0x03, 0x95)
    model ISP_REL_SOLL is Memory<UCH>;

    /** External RAM (XRAM) 0xF096 ISP_REL_SOLL_2 */
    @ext(0x72, 0x03, 0x96)
    model ISP_REL_SOLL_2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF097 ISP_REL_SOLL_3 */
    @ext(0x73, 0x03, 0x97)
    model ISP_REL_SOLL_3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF098 ISP_REL_SOLL_4 */
    @ext(0x7c, 0x03, 0x98)
    model ISP_REL_SOLL_4 is Memory<UCH>;

    /** External RAM (XRAM) 0xF099 ISP_REL_SOLL_5 */
    @ext(0x7d, 0x03, 0x99)
    model ISP_REL_SOLL_5 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09A ISP_REL_SOLL_6 */
    @ext(0x7e, 0x03, 0x9A)
    model ISP_REL_SOLL_6 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09B ISP_REL_SOLL_7 */
    @ext(0x7f, 0x03, 0x9B)
    model ISP_REL_SOLL_7 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09C ISP_REL_SOLL_8 */
    @ext(0x78, 0x03, 0x9C)
    model ISP_REL_SOLL_8 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09D ISP_REL_SOLL_9 */
    @ext(0x79, 0x03, 0x9D)
    model ISP_REL_SOLL_9 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09E ISP_REL_SOLL_10 */
    @ext(0x7a, 0x03, 0x9E)
    model ISP_REL_SOLL_10 is Memory<UCH>;

    /** External RAM (XRAM) 0xF09F EPG_NG_CALIB */
    @ext(0x7b, 0x03, 0x9F)
    model EPG_NG_CALIB is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A0 IONFSPARACRC */
    @ext(0x44, 0x03, 0xA0)
    model IONFSPARACRC is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A1 RELPOW_12B */
    @ext(0x45, 0x03, 0xA1)
    model RELPOW_12B is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A3 NM_TI_PC */
    @ext(0x47, 0x03, 0xA3)
    model NM_TI_PC is Memory<UCH>;

    // Alias of NM_TI_PC
    // /** External RAM (XRAM) 0xF0A3 NM_TI_XRAM */
    // @ext(0x47, 0x03, 0xA3)
    // model NM_TI_XRAM is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A4 NM_TI_M2 */
    @ext(0x40, 0x03, 0xA4)
    model NM_TI_M2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A5 NM_TI_M3 */
    @ext(0x41, 0x03, 0xA5)
    model NM_TI_M3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A6 NM_TI_M4 */
    @ext(0x42, 0x03, 0xA6)
    model NM_TI_M4 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A7 NM_TI_M5 */
    @ext(0x43, 0x03, 0xA7)
    model NM_TI_M5 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A8 NM_TI_M17 */
    @ext(0x4c, 0x03, 0xA8)
    model NM_TI_M17 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0A9 NM_TI_M18 */
    @ext(0x4d, 0x03, 0xA9)
    model NM_TI_M18 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AA NM_TI_M19 */
    @ext(0x4e, 0x03, 0xAA)
    model NM_TI_M19 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AB NM_TI_M20 */
    @ext(0x4f, 0x03, 0xAB)
    model NM_TI_M20 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AC NM_TI_M22 */
    @ext(0x48, 0x03, 0xAC)
    model NM_TI_M22 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AD EBUS_NM_FCODE */
    @ext(0x49, 0x03, 0xAD)
    model EBUS_NM_FCODE is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AE LB_TI_STAT */
    @ext(0x4a, 0x03, 0xAE)
    model LB_TI_STAT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0AF HB_TI_STAT */
    @ext(0x4b, 0x03, 0xAF)
    model HB_TI_STAT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B0 XCL1SEC */
    @ext(0x54, 0x03, 0xB0)
    model XCL1SEC is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B1 NM_TI_500A_TX */
    @ext(0x55, 0x03, 0xB1)
    model NM_TI_500A_TX is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B2 TVSOLL_BUF */
    @ext(0x56, 0x03, 0xB2)
    model TVSOLL_BUF is Memory<UCH>;

    // Alias of TVSOLL_BUF
    // /** External RAM (XRAM) 0xF0B2 TVSOLL_PC */
    // @ext(0x56, 0x03, 0xB2)
    // model TVSOLL_PC is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B3 TVSOLL_M2 */
    @ext(0x57, 0x03, 0xB3)
    model TVSOLL_M2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B4 TVSOLL_M3 */
    @ext(0x50, 0x03, 0xB4)
    model TVSOLL_M3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B5 TVSOLL_M4 */
    @ext(0x51, 0x03, 0xB5)
    model TVSOLL_M4 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B6 TVSOLL_M5 */
    @ext(0x52, 0x03, 0xB6)
    model TVSOLL_M5 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B7 TVSOLL_M17 */
    @ext(0x53, 0x03, 0xB7)
    model TVSOLL_M17 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B8 TVSOLL_M18 */
    @ext(0x5c, 0x03, 0xB8)
    model TVSOLL_M18 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0B9 TVSOLL_M19 */
    @ext(0x5d, 0x03, 0xB9)
    model TVSOLL_M19 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BA TVSOLL_M20 */
    @ext(0x5e, 0x03, 0xBA)
    model TVSOLL_M20 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BB TVSOLL_M22 */
    @ext(0x5f, 0x03, 0xBB)
    model TVSOLL_M22 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BC TVSOLL_EFF */
    @ext(0x58, 0x03, 0xBC)
    model TVSOLL_EFF is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BD HZ_WW_VV_FG */
    @ext(0x59, 0x03, 0xBD)
    model HZ_WW_VV_FG is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BE TVIST3 */
    @ext(0x5a, 0x03, 0xBE)
    model TVIST3 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0BF TVIST3AD */
    @ext(0x5b, 0x03, 0xBF)
    model TVIST3AD is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C0 BSDMON_IDATA_RES1 */
    @ext(0x24, 0x03, 0xC0)
    model BSDMON_IDATA_RES1 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C1 BSDMON_IDATA_RES2 */
    @ext(0x25, 0x03, 0xC1)
    model BSDMON_IDATA_RES2 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C2 BSDMON_XDATA_RES1_HI */
    @ext(0x26, 0x03, 0xC2)
    model BSDMON_XDATA_RES1_HI is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C3 BSDMON_XDATA_RES1_LO */
    @ext(0x27, 0x03, 0xC3)
    model BSDMON_XDATA_RES1_LO is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C4 BSDMON_XDATA_RES2_HI */
    @ext(0x20, 0x03, 0xC4)
    model BSDMON_XDATA_RES2_HI is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C5 BSDMON_XDATA_RES2_LO */
    @ext(0x21, 0x03, 0xC5)
    model BSDMON_XDATA_RES2_LO is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C6 ROM_CRC_H_MC_A */
    @ext(0x22, 0x03, 0xC6)
    model ROM_CRC_H_MC_A is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C7 ROM_CRC_L_MC_A */
    @ext(0x23, 0x03, 0xC7)
    model ROM_CRC_L_MC_A is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C8 CNTGFASTART */
    @ext(0x2c, 0x03, 0xC8)
    model CNTGFASTART is Memory<UCH>;

    /** External RAM (XRAM) 0xF0C9 CNTFLASTAB */
    @ext(0x2d, 0x03, 0xC9)
    model CNTFLASTAB is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CA ICL20SEC_BON */
    @ext(0x2e, 0x03, 0xCA)
    model ICL20SEC_BON is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CB CNTBRENNERBETRIEBSFEHLER */
    @ext(0x2f, 0x03, 0xCB)
    model CNTBRENNERBETRIEBSFEHLER is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CC CNTABGASSTB */
    @ext(0x28, 0x03, 0xCC)
    model CNTABGASSTB is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CD NABGASSTB */
    @ext(0x29, 0x03, 0xCD)
    model NABGASSTB is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CE CNTDTMAXWT */
    @ext(0x2a, 0x03, 0xCE)
    model CNTDTMAXWT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0CF NDTMAXWT */
    @ext(0x2b, 0x03, 0xCF)
    model NDTMAXWT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0D0 CNTIO230VERR */
    @ext(0x34, 0x03, 0xD0)
    model CNTIO230VERR is Memory<UCH>;

    /** External RAM (XRAM) 0xF0D1 LCD_BUFFER */
    @ext(0x35, 0x03, 0xD1)
    model LCD_BUFFER is Memory<UCH>;

    /** External RAM (XRAM) 0xF0D9 VHI_UCHAR */
    @ext(0x3d, 0x03, 0xD9)
    model VHI_UCHAR is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DA Pt_new_err */
    @ext(0x3e, 0x03, 0xDA)
    model Pt_new_err is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DB iCallBy */
    @ext(0x3f, 0x03, 0xDB)
    model iCallBy is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DC Menu_Pt */
    @ext(0x38, 0x03, 0xDC)
    model Menu_Pt is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DD Bedienebene */
    @ext(0x39, 0x03, 0xDD)
    model Bedienebene is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DE KKB_Soll */
    @ext(0x3a, 0x03, 0xDE)
    model KKB_Soll is Memory<UCH>;

    /** External RAM (XRAM) 0xF0DF cntKKB_Timeout */
    @ext(0x3b, 0x03, 0xDF)
    model cntKKB_Timeout is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E0 Edit_Status */
    @ext(0x04, 0x03, 0xE0)
    model Edit_Status is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E1 Fehlernummer */
    @ext(0x05, 0x03, 0xE1)
    model Fehlernummer is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E2 vhi_Menupunkt */
    @ext(0x06, 0x03, 0xE2)
    model vhi_Menupunkt is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E3 MAXIONISTSTART */
    @ext(0x07, 0x03, 0xE3)
    model MAXIONISTSTART is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E4 MINIONISTSTART */
    @ext(0x00, 0x03, 0xE4)
    model MINIONISTSTART is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E5 ION_REG_FAKT */
    @ext(0x01, 0x03, 0xE5)
    model ION_REG_FAKT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E6 REMOTE_YGPV */
    @ext(0x02, 0x03, 0xE6)
    model REMOTE_YGPV is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E8 PWMGPVKALIIOMAX */
    @ext(0x0c, 0x03, 0xE8)
    model PWMGPVKALIIOMAX is Memory<UCH>;

    /** External RAM (XRAM) 0xF0E9 IONSOLLKORRTL */
    @ext(0x0d, 0x03, 0xE9)
    model IONSOLLKORRTL is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EA IONSOLLKORRTL_FAKT */
    @ext(0x0e, 0x03, 0xEA)
    model IONSOLLKORRTL_FAKT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EB REGIONHIGHHIGH */
    @ext(0x0f, 0x03, 0xEB)
    model REGIONHIGHHIGH is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EC RX_XRAM_BUSY_BYTE */
    @ext(0x08, 0x03, 0xEC)
    model RX_XRAM_BUSY_BYTE is Memory<UCH>;

    /** External RAM (XRAM) 0xF0ED EE_ERR_STATUS */
    @ext(0x09, 0x03, 0xED)
    model EE_ERR_STATUS is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EE TX_ANF_05 */
    @ext(0x0a, 0x03, 0xEE)
    model TX_ANF_05 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EF TX_ANF_50 */
    @ext(0x0b, 0x03, 0xEF)
    model TX_ANF_50 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F0 NM_RX_QQ */
    @ext(0x14, 0x03, 0xF0)
    model NM_RX_QQ is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F1 BLOCK_NR_50_09 */
    @ext(0x15, 0x03, 0xF1)
    model BLOCK_NR_50_09 is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F2 TWWIST_ALT */
    @ext(0x16, 0x03, 0xF2)
    model TWWIST_ALT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F3 V24_HIADR */
    @ext(0x17, 0x03, 0xF3)
    model V24_HIADR is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F4 CNTIORANGEOKAY */
    @ext(0x10, 0x03, 0xF4)
    model CNTIORANGEOKAY is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F5 ION_MCA */
    @ext(0x11, 0x03, 0xF5)
    model ION_MCA is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F6 IONNETZKORR */
    @ext(0x12, 0x03, 0xF6)
    model IONNETZKORR is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F7 IONGETERR */
    @ext(0x13, 0x03, 0xF7)
    model IONGETERR is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F8 ION_HS */
    @ext(0x1c, 0x03, 0xF8)
    model ION_HS is Memory<UCH>;

    /** External RAM (XRAM) 0xF0F9 ION_HS_OFFS_FILT */
    @ext(0x1d, 0x03, 0xF9)
    model ION_HS_OFFS_FILT is Memory<UCH>;

    /** External RAM (XRAM) 0xF0FB TB10_AD */
    @ext(0x1f, 0x03, 0xFB)
    model TB10_AD is Memory<UCH>;

    /** External RAM (XRAM) 0xF0FC AIN_REF */
    @ext(0x18, 0x03, 0xFC)
    model AIN_REF is Memory<UCH>;

    /** External RAM (XRAM) 0xF0FD AIN_4_20MA_6S */
    @ext(0x19, 0x03, 0xFD)
    model AIN_4_20MA_6S is Memory<UCH>;

    /** External RAM (XRAM) 0xF0FE INIT_ORDER_BYTE */
    @ext(0x1a, 0x03, 0xFE)
    model INIT_ORDER_BYTE is Memory<UCH>;

}
