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

    // Alias of IDLE_R5
    // /** RAM 0x0005 Maximum */
    // @ext(0x59, 0x01, 0x05)
    // model Maximum is Memory<UCH>;

    /** RAM 0x0006 Bezeichnung_INr */
    @ext(0x5a, 0x01, 0x06)
    model Bezeichnung_INr is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 Bezeichnung_PNr */
    // @ext(0x5a, 0x01, 0x06)
    // model Bezeichnung_PNr is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 IDLE_R6 */
    // @ext(0x5a, 0x01, 0x06)
    // model IDLE_R6 is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 Value */
    // @ext(0x5a, 0x01, 0x06)
    // model Value is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 aParameterwert */
    // @ext(0x5a, 0x01, 0x06)
    // model aParameterwert is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 timeout */
    // @ext(0x5a, 0x01, 0x06)
    // model timeout is Memory<UCH>;

    /** RAM 0x0007 Drehzahl */
    @ext(0x5b, 0x01, 0x07)
    model Drehzahl is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 IDLE_R7 */
    // @ext(0x5b, 0x01, 0x07)
    // model IDLE_R7 is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Minimum */
    // @ext(0x5b, 0x01, 0x07)
    // model Minimum is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Multi */
    // @ext(0x5b, 0x01, 0x07)
    // model Multi is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Pt_History */
    // @ext(0x5b, 0x01, 0x07)
    // model Pt_History is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 aMenu_Pt */
    // @ext(0x5b, 0x01, 0x07)
    // model aMenu_Pt is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 aMenupunkt */
    // @ext(0x5b, 0x01, 0x07)
    // model aMenupunkt is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 aPara */
    // @ext(0x5b, 0x01, 0x07)
    // model aPara is Memory<UCH>;

    // Alias of Drehzahl
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
        RC_ON: BI7,
        NG_N_LEV: BI6,
        RTH: BI5,
        WW_FLOW_LEV: BI4,
        TKKB: BI3,
        WI_SO: BI2,
        WW_ANF: BI1,
        HZ_ANF: BI0
    }

    @ext(0x7e, 0x01, 0x22)
    /** RAM 0x0022 BYTE_22 */
    @inherit(memr, memw)
    model BYTE_22 {
        GPVBIT10: BI7,
        ThFrS_WW: BI6,
        ThFrS_HZ: BI5,
        FrS_Anlage: BI4,
        AufHZ_dfluss: BI3,
        HZ_frei: BI2,
        PuFrSanf: BI1,
        WW_TH: BI0
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
    /** RAM 0x0025 BYTE_25 */
    @inherit(memr, memw)
    model BYTE_25 {
        BCNTIOCALIB_N_ZUE: BI4,
        RX_XRAM_BUSY: BI3,
        BlinkToggle: BI2,
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
        WW_STOP: BI1,
        EH1: BI0
    }

    @ext(0x74, 0x01, 0x28)
    /** RAM 0x0028 EB_0001 */
    @inherit(memr, memw)
    model EB_0001 {
        FSREL4ANF: BI7,
        VV_ANF: BI6,
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
        NFREL3: BI4,
        NFREL4: BI4
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
        OPT_BWZ2: BI6,
        OPT_IOSOLLKALIB: BI5,
        OPT_NO_LDW: BI4,
        OPT_ADAPTGPVOFFS: BI3,
        OPT_2ND_TVIST: BI2,
        OPTRCON: BI1,
        OPT_EE2NDPAGE: BI0
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

    /** RAM 0x0051 BE5_50HZ_CNT */
    @ext(0x0d, 0x01, 0x51)
    model BE5_50HZ_CNT is Memory<UCH>;

    // Alias of BE5_50HZ_CNT
    // /** RAM 0x0051 NGIST_CNT */
    // @ext(0x0d, 0x01, 0x51)
    // model NGIST_CNT is Memory<UCH>;

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

    /** RAM 0x0062 PWMGPV */
    @ext(0x3e, 0x01, 0x62)
    model PWMGPV is Memory<UCH>;

    /** RAM 0x0064 TVIST2 */
    @ext(0x38, 0x01, 0x64)
    model TVIST2 is Memory<UCH>;

    /** RAM 0x0065 F_CODE */
    @ext(0x39, 0x01, 0x65)
    model F_CODE is Memory<UCH>;

    /** RAM 0x0066 ANAIN4 */
    @ext(0x3a, 0x01, 0x66)
    model ANAIN4 is Memory<UCH>;

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

    /** RAM 0x0079 Menupunkt */
    @ext(0x25, 0x01, 0x79)
    model Menupunkt is Memory<UCH>;

    /** RAM 0x007A Parameterwert */
    @ext(0x26, 0x01, 0x7A)
    model Parameterwert is Memory<UCH>;

    /** RAM 0x007B CALIB_STATE */
    @ext(0x27, 0x01, 0x7B)
    model CALIB_STATE is Memory<UCH>;

    /** RAM 0x007C ION_ERR_MASK */
    @ext(0x20, 0x01, 0x7C)
    model ION_ERR_MASK is Memory<UCH>;

    /** RAM 0x0080 IRAEPKANF */
    @ext(0xdc, 0x01, 0x80)
    model IRAEPKANF is Memory<UCH>;

    // Alias of IRAEPKANF
    // /** RAM 0x0080 MAXTVSOLL */
    // @ext(0xdc, 0x01, 0x80)
    // model MAXTVSOLL is Memory<UCH>;

    /** RAM 0x0081 HZ_HYS */
    @ext(0xdd, 0x01, 0x81)
    model HZ_HYS is Memory<UCH>;

    /** RAM 0x0082 TBRMINOFF */
    @ext(0xde, 0x01, 0x82)
    model TBRMINOFF is Memory<UCH>;

    /** RAM 0x0083 HZ_KP */
    @ext(0xdf, 0x01, 0x83)
    model HZ_KP is Memory<UCH>;

    /** RAM 0x0084 HZ_KTND */
    @ext(0xd8, 0x01, 0x84)
    model HZ_KTND is Memory<UCH>;

    /** RAM 0x0085 NG_KESSEL_MIN */
    @ext(0xd9, 0x01, 0x85)
    model NG_KESSEL_MIN is Memory<UCH>;

    /** RAM 0x0086 NG_HZ_FREI */
    @ext(0xda, 0x01, 0x86)
    model NG_HZ_FREI is Memory<UCH>;

    /** RAM 0x0087 NG_HZ_MAX */
    @ext(0xdb, 0x01, 0x87)
    model NG_HZ_MAX is Memory<UCH>;

    /** RAM 0x0088 PNL_HZ */
    @ext(0xd4, 0x01, 0x88)
    model PNL_HZ is Memory<UCH>;

    /** RAM 0x0089 PUHZOFFS */
    @ext(0xd5, 0x01, 0x89)
    model PUHZOFFS is Memory<UCH>;

    /** RAM 0x008A PUHZSTEIG */
    @ext(0xd6, 0x01, 0x8A)
    model PUHZSTEIG is Memory<UCH>;

    /** RAM 0x008B WW_HYS */
    @ext(0xd7, 0x01, 0x8B)
    model WW_HYS is Memory<UCH>;

    /** RAM 0x008C TWWPLUS */
    @ext(0xd0, 0x01, 0x8C)
    model TWWPLUS is Memory<UCH>;

    /** RAM 0x008D NG_WW_MAX */
    @ext(0xd1, 0x01, 0x8D)
    model NG_WW_MAX is Memory<UCH>;

    /** RAM 0x008E IO_KORR */
    @ext(0xd2, 0x01, 0x8E)
    model IO_KORR is Memory<UCH>;

    /** RAM 0x008F V24_KM_ADR */
    @ext(0xd3, 0x01, 0x8F)
    model V24_KM_ADR is Memory<UCH>;

    /** RAM 0x0090 MAXBWLADEZEIT */
    @ext(0xcc, 0x01, 0x90)
    model MAXBWLADEZEIT is Memory<UCH>;

    /** RAM 0x0091 DL_KP */
    @ext(0xcd, 0x01, 0x91)
    model DL_KP is Memory<UCH>;

    // Alias of DL_KP
    // /** RAM 0x0091 EPFLUEGAS */
    // @ext(0xcd, 0x01, 0x91)
    // model EPFLUEGAS is Memory<UCH>;

    /** RAM 0x0092 DL_KTND */
    @ext(0xce, 0x01, 0x92)
    model DL_KTND is Memory<UCH>;

    /** RAM 0x0093 DL_NORMAL */
    @ext(0xcf, 0x01, 0x93)
    model DL_NORMAL is Memory<UCH>;

    // Alias of DL_NORMAL
    // /** RAM 0x0093 EP_DTREGPUPWM */
    // @ext(0xcf, 0x01, 0x93)
    // model EP_DTREGPUPWM is Memory<UCH>;

    /** RAM 0x0094 WW_ABSENK */
    @ext(0xc8, 0x01, 0x94)
    model WW_ABSENK is Memory<UCH>;

    /** RAM 0x0095 DL_COMF_HYS */
    @ext(0xc9, 0x01, 0x95)
    model DL_COMF_HYS is Memory<UCH>;

    /** RAM 0x0096 HK_S */
    @ext(0xca, 0x01, 0x96)
    model HK_S is Memory<UCH>;

    /** RAM 0x0097 TAUSSEN_KORR */
    @ext(0xcb, 0x01, 0x97)
    model TAUSSEN_KORR is Memory<UCH>;

    /** RAM 0x0098 NG_KESSEL_MAX */
    @ext(0xc4, 0x01, 0x98)
    model NG_KESSEL_MAX is Memory<UCH>;

    /** RAM 0x0099 YGPVSTART */
    @ext(0xc5, 0x01, 0x99)
    model YGPVSTART is Memory<UCH>;

    /** RAM 0x009A TFRS_ANLAGE */
    @ext(0xc6, 0x01, 0x9A)
    model TFRS_ANLAGE is Memory<UCH>;

    /** RAM 0x009B EP15RTHZEIT */
    @ext(0xc7, 0x01, 0x9B)
    model EP15RTHZEIT is Memory<UCH>;

    /** RAM 0x009C EP17HZSONDER */
    @ext(0xc0, 0x01, 0x9C)
    model EP17HZSONDER is Memory<UCH>;

    /** RAM 0x009D EPWARTINTHBON */
    @ext(0xc1, 0x01, 0x9D)
    model EPWARTINTHBON is Memory<UCH>;

    /** RAM 0x009E EP33ABGASSTB */
    @ext(0xc2, 0x01, 0x9E)
    model EP33ABGASSTB is Memory<UCH>;

    /** RAM 0x009F NG_ZUEND */
    @ext(0xc3, 0x01, 0x9F)
    model NG_ZUEND is Memory<UCH>;

    /** RAM 0x00A0 MINTVSOLL */
    @ext(0xfc, 0x01, 0xA0)
    model MINTVSOLL is Memory<UCH>;

    /** RAM 0x00A1 DTMAXWT */
    @ext(0xfd, 0x01, 0xA1)
    model DTMAXWT is Memory<UCH>;

    /** RAM 0x00A2 MXGRADTVIST */
    @ext(0xfe, 0x01, 0xA2)
    model MXGRADTVIST is Memory<UCH>;

    /** RAM 0x00A3 EPWARNMAN */
    @ext(0xff, 0x01, 0xA3)
    model EPWARNMAN is Memory<UCH>;

    /** RAM 0x00A4 KESS_OPT */
    @ext(0xf8, 0x01, 0xA4)
    model KESS_OPT is Memory<UCH>;

    /** RAM 0x00A5 KES_DAT_CRC */
    @ext(0xf9, 0x01, 0xA5)
    model KES_DAT_CRC is Memory<UCH>;

    /** RAM 0x00A6 IRAEPMANF */
    @ext(0xfa, 0x01, 0xA6)
    model IRAEPMANF is Memory<UCH>;

    // Alias of IRAEPMANF
    // /** RAM 0x00A6 TVSOLL_EPM */
    // @ext(0xfa, 0x01, 0xA6)
    // model TVSOLL_EPM is Memory<UCH>;

    /** RAM 0x00A7 TVABSENK */
    @ext(0xfb, 0x01, 0xA7)
    model TVABSENK is Memory<UCH>;

    /** RAM 0x00A8 SOMMERTEMP */
    @ext(0xf4, 0x01, 0xA8)
    model SOMMERTEMP is Memory<UCH>;

    /** RAM 0x00A9 TWWSOLL_EPM */
    @ext(0xf5, 0x01, 0xA9)
    model TWWSOLL_EPM is Memory<UCH>;

    /** RAM 0x00AA TRAUMTAG */
    @ext(0xf6, 0x01, 0xAA)
    model TRAUMTAG is Memory<UCH>;

    /** RAM 0x00AB TRAUMABSENK */
    @ext(0xf7, 0x01, 0xAB)
    model TRAUMABSENK is Memory<UCH>;

    /** RAM 0x00AC MAINPARACRC */
    @ext(0xf0, 0x01, 0xAC)
    model MAINPARACRC is Memory<UCH>;

    /** RAM 0x00AD ION_SOLL */
    @ext(0xf1, 0x01, 0xAD)
    model ION_SOLL is Memory<UCH>;

    /** RAM 0x00AE PNL_HZCNT */
    @ext(0xf2, 0x01, 0xAE)
    model PNL_HZCNT is Memory<UCH>;

    /** RAM 0x00B0 PNL_WWCNT */
    @ext(0xec, 0x01, 0xB0)
    model PNL_WWCNT is Memory<UCH>;

    /** RAM 0x00B2 NGXW1 */
    @ext(0xee, 0x01, 0xB2)
    model NGXW1 is Memory<UCH>;

    /** RAM 0x00B3 PUHZPWM */
    @ext(0xef, 0x01, 0xB3)
    model PUHZPWM is Memory<UCH>;

    /** RAM 0x00B4 AIN_ERR_MASK */
    @ext(0xe8, 0x01, 0xB4)
    model AIN_ERR_MASK is Memory<UCH>;

    /** RAM 0x00B5 TAUSSAD */
    @ext(0xe9, 0x01, 0xB5)
    model TAUSSAD is Memory<UCH>;

    /** RAM 0x00B6 TABGAD */
    @ext(0xea, 0x01, 0xB6)
    model TABGAD is Memory<UCH>;

    /** RAM 0x00B7 AIN_FS_ERR_MASK */
    @ext(0xeb, 0x01, 0xB7)
    model AIN_FS_ERR_MASK is Memory<UCH>;

    /** RAM 0x00B8 ERR_MERK_ALT */
    @ext(0xe4, 0x01, 0xB8)
    model ERR_MERK_ALT is Memory<UCH>;

    /** RAM 0x00B9 F_CODE_ALT */
    @ext(0xe5, 0x01, 0xB9)
    model F_CODE_ALT is Memory<UCH>;

    /** RAM 0x00BA ROM_DPH */
    @ext(0xe6, 0x01, 0xBA)
    model ROM_DPH is Memory<UCH>;

    /** RAM 0x00BB ROM_DPL */
    @ext(0xe7, 0x01, 0xBB)
    model ROM_DPL is Memory<UCH>;

    /** RAM 0x00BC ROM_H */
    @ext(0xe0, 0x01, 0xBC)
    model ROM_H is Memory<UCH>;

    /** RAM 0x00BD ROM_L */
    @ext(0xe1, 0x01, 0xBD)
    model ROM_L is Memory<UCH>;

    /** RAM 0x00BE V24_SCOM_ADR */
    @ext(0xe2, 0x01, 0xBE)
    model V24_SCOM_ADR is Memory<UCH>;

    /** RAM 0x00BF YIONREG */
    @ext(0xe3, 0x01, 0xBF)
    model YIONREG is Memory<UCH>;

    /** RAM 0x00C1 YGPVOPT */
    @ext(0x9d, 0x01, 0xC1)
    model YGPVOPT is Memory<UCH>;

    /** RAM 0x00C3 DYGPVREL */
    @ext(0x9f, 0x01, 0xC3)
    model DYGPVREL is Memory<UCH>;

    /** RAM 0x00C4 ION_SOLL_AKT */
    @ext(0x98, 0x01, 0xC4)
    model ION_SOLL_AKT is Memory<UCH>;

    /** RAM 0x00C5 ION_SOLL_AKTLOW */
    @ext(0x99, 0x01, 0xC5)
    model ION_SOLL_AKTLOW is Memory<UCH>;

    /** RAM 0x00C6 ION_SOLL_START */
    @ext(0x9a, 0x01, 0xC6)
    model ION_SOLL_START is Memory<UCH>;

    /** RAM 0x00C7 ION_SOLL_KURVE */
    @ext(0x9b, 0x01, 0xC7)
    model ION_SOLL_KURVE is Memory<UCH>;

    /** RAM 0x00C8 ION_ERR_TIME */
    @ext(0x94, 0x01, 0xC8)
    model ION_ERR_TIME is Memory<UCH>;

    /** RAM 0x00C9 ION_XW */
    @ext(0x95, 0x01, 0xC9)
    model ION_XW is Memory<UCH>;

    /** RAM 0x00CA ihilf */
    @ext(0x96, 0x01, 0xCA)
    model ihilf is Memory<UCH>;

    /** RAM 0x00CC uk1 */
    @ext(0x90, 0x01, 0xCC)
    model uk1 is Memory<UCH>;

    /** RAM 0x00CD dTreg_y */
    @ext(0x91, 0x01, 0xCD)
    model dTreg_y is Memory<UCH>;

    /** RAM 0x00CE TVIST2AD */
    @ext(0x92, 0x01, 0xCE)
    model TVIST2AD is Memory<UCH>;

    /** RAM 0x00CF AIN2_ERR_MASK */
    @ext(0x93, 0x01, 0xCF)
    model AIN2_ERR_MASK is Memory<UCH>;

    /** RAM 0x00D0 ICL1HRS_ALT */
    @ext(0x8c, 0x01, 0xD0)
    model ICL1HRS_ALT is Memory<UCH>;

    /** RAM 0x00D1 RES_CNT_ALT */
    @ext(0x8d, 0x01, 0xD1)
    model RES_CNT_ALT is Memory<UCH>;

    /** RAM 0x00D2 STACK */
    @ext(0x8e, 0x01, 0xD2)
    model STACK is Memory<UCH>;


    // ====================================
    // --- SFR ---
    // ====================================

    /** SFR 0x0080 DE_F_PORT */
    @ext(0xac, 0x04, 0x80)
    model DE_F_PORT is Memory<UCH>;

    /** SFR 0x0082 DPL */
    @ext(0xae, 0x04, 0x82)
    model DPL is Memory<UCH>;

    /** SFR 0x0083 DPH */
    @ext(0xaf, 0x04, 0x83)
    model DPH is Memory<UCH>;

    /** SFR 0x0086 WDTREL */
    @ext(0xaa, 0x04, 0x86)
    model WDTREL is Memory<UCH>;

    /** SFR 0x0087 PCON */
    @ext(0xab, 0x04, 0x87)
    model PCON is Memory<UCH>;

    /** SFR 0x0088 TCON */
    @ext(0xa4, 0x04, 0x88)
    model TCON is Memory<UCH>;

    /** SFR 0x0089 TMOD */
    @ext(0xa5, 0x04, 0x89)
    model TMOD is Memory<UCH>;

    /** SFR 0x008A ION_TIMER_LOW */
    @ext(0xa6, 0x04, 0x8A)
    model ION_TIMER_LOW is Memory<UCH>;

    // Alias of ION_TIMER_LOW
    // /** SFR 0x008A TL0 */
    // @ext(0xa6, 0x04, 0x8A)
    // model TL0 is Memory<UCH>;

    /** SFR 0x008B TL1 */
    @ext(0xa7, 0x04, 0x8B)
    model TL1 is Memory<UCH>;

    /** SFR 0x008C ION_TIMER_HIGH */
    @ext(0xa0, 0x04, 0x8C)
    model ION_TIMER_HIGH is Memory<UCH>;

    // Alias of ION_TIMER_HIGH
    // /** SFR 0x008C TH0 */
    // @ext(0xa0, 0x04, 0x8C)
    // model TH0 is Memory<UCH>;

    /** SFR 0x008D TH1 */
    @ext(0xa1, 0x04, 0x8D)
    model TH1 is Memory<UCH>;

    /** SFR 0x0090 P1ANA */
    @ext(0xbc, 0x04, 0x90)
    model P1ANA is Memory<UCH>;

    /** SFR 0x0091 XPAGE */
    @ext(0xbd, 0x04, 0x91)
    model XPAGE is Memory<UCH>;

    /** SFR 0x0092 DPSEL */
    @ext(0xbe, 0x04, 0x92)
    model DPSEL is Memory<UCH>;

    /** SFR 0x0098 SCON */
    @ext(0xb4, 0x04, 0x98)
    model SCON is Memory<UCH>;

    /** SFR 0x0099 SBUF */
    @ext(0xb5, 0x04, 0x99)
    model SBUF is Memory<UCH>;

    /** SFR 0x00A0 DO_PORT */
    @ext(0x8c, 0x04, 0xA0)
    model DO_PORT is Memory<UCH>;

    /** SFR 0x00A8 IEN0 */
    @ext(0x84, 0x04, 0xA8)
    model IEN0 is Memory<UCH>;

    /** SFR 0x00A9 IP0 */
    @ext(0x85, 0x04, 0xA9)
    model IP0 is Memory<UCH>;

    /** SFR 0x00AA SRELL */
    @ext(0x86, 0x04, 0xAA)
    model SRELL is Memory<UCH>;

    /** SFR 0x00B1 SYSCON */
    @ext(0x9d, 0x04, 0xB1)
    model SYSCON is Memory<UCH>;

    /** SFR 0x00B8 IEN1 */
    @ext(0x94, 0x04, 0xB8)
    model IEN1 is Memory<UCH>;

    /** SFR 0x00B9 IP1 */
    @ext(0x95, 0x04, 0xB9)
    model IP1 is Memory<UCH>;

    /** SFR 0x00BA SRELH */
    @ext(0x96, 0x04, 0xBA)
    model SRELH is Memory<UCH>;

    /** SFR 0x00C0 IRCON */
    @ext(0xec, 0x04, 0xC0)
    model IRCON is Memory<UCH>;

    /** SFR 0x00C1 CCEN */
    @ext(0xed, 0x04, 0xC1)
    model CCEN is Memory<UCH>;

    /** SFR 0x00C2 CCL1 */
    @ext(0xee, 0x04, 0xC2)
    model CCL1 is Memory<UCH>;

    // Alias of CCL1
    // /** SFR 0x00C2 CCL_PUHZ */
    // @ext(0xee, 0x04, 0xC2)
    // model CCL_PUHZ is Memory<UCH>;

    /** SFR 0x00C3 CCH1 */
    @ext(0xef, 0x04, 0xC3)
    model CCH1 is Memory<UCH>;

    // Alias of CCH1
    // /** SFR 0x00C3 CCH_PUHZ */
    // @ext(0xef, 0x04, 0xC3)
    // model CCH_PUHZ is Memory<UCH>;

    /** SFR 0x00C4 CCL2 */
    @ext(0xe8, 0x04, 0xC4)
    model CCL2 is Memory<UCH>;

    // Alias of CCL2
    // /** SFR 0x00C4 CCL_GEBL */
    // @ext(0xe8, 0x04, 0xC4)
    // model CCL_GEBL is Memory<UCH>;

    /** SFR 0x00C5 CCH2 */
    @ext(0xe9, 0x04, 0xC5)
    model CCH2 is Memory<UCH>;

    // Alias of CCH2
    // /** SFR 0x00C5 CCH_GEBL */
    // @ext(0xe9, 0x04, 0xC5)
    // model CCH_GEBL is Memory<UCH>;

    /** SFR 0x00C6 CCL3 */
    @ext(0xea, 0x04, 0xC6)
    model CCL3 is Memory<UCH>;

    // Alias of CCL3
    // /** SFR 0x00C6 CCL_GPV */
    // @ext(0xea, 0x04, 0xC6)
    // model CCL_GPV is Memory<UCH>;

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

    /** SFR 0x00CA CRCL */
    @ext(0xe6, 0x04, 0xCA)
    model CRCL is Memory<UCH>;

    // Alias of CRCL
    // /** SFR 0x00CA SYS_TIMER_RELOAD_LOW */
    // @ext(0xe6, 0x04, 0xCA)
    // model SYS_TIMER_RELOAD_LOW is Memory<UCH>;

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

    /** SFR 0x00CD TH2 */
    @ext(0xe1, 0x04, 0xCD)
    model TH2 is Memory<UCH>;

    /** SFR 0x00D0 PSW */
    @ext(0xfc, 0x04, 0xD0)
    model PSW is Memory<UCH>;

    /** SFR 0x00D8 ADCON0 */
    @ext(0xf4, 0x04, 0xD8)
    model ADCON0 is Memory<UCH>;

    /** SFR 0x00D9 ADDATH */
    @ext(0xf5, 0x04, 0xD9)
    model ADDATH is Memory<UCH>;

    /** SFR 0x00DA ADDATL */
    @ext(0xf6, 0x04, 0xDA)
    model ADDATL is Memory<UCH>;

    /** SFR 0x00DC ADCON1 */
    @ext(0xf0, 0x04, 0xDC)
    model ADCON1 is Memory<UCH>;

    /** SFR 0x00E0 ACC */
    @ext(0xcc, 0x04, 0xE0)
    model ACC is Memory<UCH>;

    /** SFR 0x00FC VR0 */
    @ext(0xd0, 0x04, 0xFC)
    model VR0 is Memory<UCH>;

    /** SFR 0x00FD VR1 */
    @ext(0xd1, 0x04, 0xFD)
    model VR1 is Memory<UCH>;

    /** SFR 0x00FE VR2 */
    @ext(0xd2, 0x04, 0xFE)
    model VR2 is Memory<UCH>;


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
    // /** Konstanten 0x0000 ADC_SHORT */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_SHORT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AIO_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model AIO_360 is Memory<UCH>;

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
    // /** Konstanten 0x0000 EPK_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model EPK_360 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 HARD_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD_C505L is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ICSBEDARFBIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ICSBEDARFBIT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 INTMATH */
    // @ext(0xb8, 0x02, 0x00)
    // model INTMATH is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONCALIBHIST */
    // @ext(0xb8, 0x02, 0x00)
    // model IONCALIBHIST is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IONGET */
    // @ext(0xb8, 0x02, 0x00)
    // model IONGET is Memory<UCH>;

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
    // /** Konstanten 0x0000 ION_FAILSAFE_CHECK */
    // @ext(0xb8, 0x02, 0x00)
    // model ION_FAILSAFE_CHECK is Memory<UCH>;

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
    // /** Konstanten 0x0000 LCD_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model LCD_360 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_KAMINKEHRE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_KAMINKEHRE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_SONNE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NGDELTAT */
    // @ext(0xb8, 0x02, 0x00)
    // model NGDELTAT is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 NG_REG_UPM */
    // @ext(0xb8, 0x02, 0x00)
    // model NG_REG_UPM is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 OS_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model OS_C505L is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 RAMROM */
    // @ext(0xb8, 0x02, 0x00)
    // model RAMROM is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 SCOM */
    // @ext(0xb8, 0x02, 0x00)
    // model SCOM is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 SFR_IO */
    // @ext(0xb8, 0x02, 0x00)
    // model SFR_IO is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ST_L_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model ST_L_SONNE is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 USER */
    // @ext(0xb8, 0x02, 0x00)
    // model USER is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 VAR_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model VAR_360 is Memory<UCH>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 WIF_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model WIF_360 is Memory<UCH>;

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
    // /** Konstanten 0x0001 ADC_NONE */
    // @ext(0xb9, 0x02, 0x01)
    // model ADC_NONE is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 AIN_ERR_NI1000 */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_ERR_NI1000 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 CB_QQ_M1 */
    // @ext(0xb9, 0x02, 0x01)
    // model CB_QQ_M1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 EBUS */
    // @ext(0xb9, 0x02, 0x01)
    // model EBUS is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 EEA_CONST_ANF */
    // @ext(0xb9, 0x02, 0x01)
    // model EEA_CONST_ANF is Memory<UCH>;

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
    // /** Konstanten 0x0001 MASK_LINKS */
    // @ext(0xb9, 0x02, 0x01)
    // model MASK_LINKS is Memory<UCH>;

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
    // /** Konstanten 0x0001 NI1000_BREAK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model NI1000_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 REGSTOPP */
    // @ext(0xb9, 0x02, 0x01)
    // model REGSTOPP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SEG_F */
    // @ext(0xb9, 0x02, 0x01)
    // model SEG_F is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ST_R_FLAMME */
    // @ext(0xb9, 0x02, 0x01)
    // model ST_R_FLAMME is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 TCVSP_CONST */
    // @ext(0xb9, 0x02, 0x01)
    // model TCVSP_CONST is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 TVIST_SHORT_MASK */
    // @ext(0xb9, 0x02, 0x01)
    // model TVIST_SHORT_MASK is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 WC_CALIBABW */
    // @ext(0xb9, 0x02, 0x01)
    // model WC_CALIBABW is Memory<UCH>;

    /** Konstanten 0x0002 ACK_500A */
    @ext(0xba, 0x02, 0x02)
    model ACK_500A is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ASCII_B10 */
    // @ext(0xba, 0x02, 0x02)
    // model ASCII_B10 is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 CB_QQ_ANY */
    // @ext(0xba, 0x02, 0x02)
    // model CB_QQ_ANY is Memory<UCH>;

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
    // /** Konstanten 0x0002 MASK_RECHTS */
    // @ext(0xba, 0x02, 0x02)
    // model MASK_RECHTS is Memory<UCH>;

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
    // /** Konstanten 0x0002 QAC_SHORT_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model QAC_SHORT_BIT is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SEG_A */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_A is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SEG_DP */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_DP is Memory<UCH>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ST_R_RADIATOR */
    // @ext(0xba, 0x02, 0x02)
    // model ST_R_RADIATOR is Memory<UCH>;

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

    /** Konstanten 0x0003 ADC_MXCODE */
    @ext(0xbb, 0x02, 0x03)
    model ADC_MXCODE is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CALIBERRMAX */
    // @ext(0xbb, 0x02, 0x03)
    // model CALIBERRMAX is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CALIBMXAUSREISS */
    // @ext(0xbb, 0x02, 0x03)
    // model CALIBMXAUSREISS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 CNTIORANGEFILTABW */
    // @ext(0xbb, 0x02, 0x03)
    // model CNTIORANGEFILTABW is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 DL_KTND__I */
    // @ext(0xbb, 0x02, 0x03)
    // model DL_KTND__I is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EP17_NOT_AUS */
    // @ext(0xbb, 0x02, 0x03)
    // model EP17_NOT_AUS is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EPWARNMAN__AKTIV */
    // @ext(0xbb, 0x02, 0x03)
    // model EPWARNMAN__AKTIV is Memory<UCH>;

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
    // /** Konstanten 0x0003 QAC_BREAK_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model QAC_BREAK_BIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 QQ_M11 */
    // @ext(0xbb, 0x02, 0x03)
    // model QQ_M11 is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ST_L_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model ST_L_MOND is Memory<UCH>;

    /** Konstanten 0x0004 AIN_ERR_TAUSS */
    @ext(0xbc, 0x02, 0x04)
    model AIN_ERR_TAUSS is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_4_20MA */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_4_20MA is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TAUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TAUSS is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TBW1 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TBW1 is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TBW2 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TBW2 is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TNI1000 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TNI1000 is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TVL5K */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TVL5K is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 BW1_SHORT_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model BW1_SHORT_BIT is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 CALIBMINPLUS */
    // @ext(0xbc, 0x02, 0x04)
    // model CALIBMINPLUS is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 CALIBMULFAKTOR */
    // @ext(0xbc, 0x02, 0x04)
    // model CALIBMULFAKTOR is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 EPWARNMAN__GDW */
    // @ext(0xbc, 0x02, 0x04)
    // model EPWARNMAN__GDW is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 HZZVV2MASK */
    // @ext(0xbc, 0x02, 0x04)
    // model HZZVV2MASK is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ICSRUN */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSRUN is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ICSSTATISTIKBIT */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSSTATISTIKBIT is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 IEM_YGPVMIN */
    // @ext(0xbc, 0x02, 0x04)
    // model IEM_YGPVMIN is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ION_SOLL_CRC_NOK */
    // @ext(0xbc, 0x02, 0x04)
    // model ION_SOLL_CRC_NOK is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 KMOB11 */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOB11 is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 KMOPUPWM_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOPUPWM_BIT is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 MENU_L_P */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_L_P is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 MENU_U_SCHIRM */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_U_SCHIRM is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 NMVV2BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model NMVV2BIT is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 PC_REQ_REGSTP */
    // @ext(0xbc, 0x02, 0x04)
    // model PC_REQ_REGSTP is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 SEG_B */
    // @ext(0xbc, 0x02, 0x04)
    // model SEG_B is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ST_R_WASSERHAHN */
    // @ext(0xbc, 0x02, 0x04)
    // model ST_R_WASSERHAHN is Memory<UCH>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 TA_AUFLOESUNG */
    // @ext(0xbc, 0x02, 0x04)
    // model TA_AUFLOESUNG is Memory<UCH>;

    /** Konstanten 0x0005 AI_THZ */
    @ext(0xbd, 0x02, 0x05)
    model AI_THZ is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 BIT_SERVICE */
    // @ext(0xbd, 0x02, 0x05)
    // model BIT_SERVICE is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 BW1_BREAK_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model BW1_BREAK_BIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 ERDGAS_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ERDGAS_BIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 HZZVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model HZZVVBIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 ICSCALIBNEXTIOABWBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ICSCALIBNEXTIOABWBIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 IONSOLLKORRTLMAX */
    // @ext(0xbd, 0x02, 0x05)
    // model IONSOLLKORRTLMAX is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 KMOQAC_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model KMOQAC_BIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 MAXGFASTART */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXGFASTART is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 MAXIOISTABW */
    // @ext(0xbd, 0x02, 0x05)
    // model MAXIOISTABW is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 MENU_U_CURSER_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_CURSER_SCHIRM is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 MENU_U_MOND */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_MOND is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 NMVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model NMVVBIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 REF_FUSE */
    // @ext(0xbd, 0x02, 0x05)
    // model REF_FUSE is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 ST_L_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model ST_L_SCHIRM is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 V24_KM_ADR_DEFAULT */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_DEFAULT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 V24_KM_ADR_MAX */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX is Memory<UCH>;

    /** Konstanten 0x0006 AI_TABG */
    @ext(0xbe, 0x02, 0x06)
    model AI_TABG is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 BW2_SHORT_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model BW2_SHORT_BIT is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 EXTWST */
    // @ext(0xbe, 0x02, 0x06)
    // model EXTWST is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 ICSCALIBNEXTSTARTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model ICSCALIBNEXTSTARTBIT is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 IEM_DUMMYTESTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model IEM_DUMMYTESTBIT is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 IONSOLLFILT_T1 */
    // @ext(0xbe, 0x02, 0x06)
    // model IONSOLLFILT_T1 is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 ISP_X_SPLIT_2DX */
    // @ext(0xbe, 0x02, 0x06)
    // model ISP_X_SPLIT_2DX is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 KMO4_20MA_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model KMO4_20MA_BIT is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 KOMMA */
    // @ext(0xbe, 0x02, 0x06)
    // model KOMMA is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 LIMIOCALIB_N_ZUE */
    // @ext(0xbe, 0x02, 0x06)
    // model LIMIOCALIB_N_ZUE is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 LMAINPARACRC */
    // @ext(0xbe, 0x02, 0x06)
    // model LMAINPARACRC is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_CURSER_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_FLAMME_AUS is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_CURSER_P */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_P is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_FLAMME_AUS is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_U_SCHLUESSEL */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SCHLUESSEL is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_U_SONNE */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SONNE is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 NHISTERR */
    // @ext(0xbe, 0x02, 0x06)
    // model NHISTERR is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 NMHZBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model NMHZBIT is Memory<UCH>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 ST_R_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model ST_R_FLAMME_AUS is Memory<UCH>;

    // Alias of AI_TABG
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
    // /** Konstanten 0x0007 AI_REF */
    // @ext(0xbf, 0x02, 0x07)
    // model AI_REF is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 BW2_BREAK_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model BW2_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EE_PAGES */
    // @ext(0xbf, 0x02, 0x07)
    // model EE_PAGES is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EP15RTHZEIT__BRFG */
    // @ext(0xbf, 0x02, 0x07)
    // model EP15RTHZEIT__BRFG is Memory<UCH>;

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
    // /** Konstanten 0x0007 KMOSPEICHER_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model KMOSPEICHER_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 MENU_U_CURSER_SCHLUESSEL */
    // @ext(0xbf, 0x02, 0x07)
    // model MENU_U_CURSER_SCHLUESSEL is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 ST_L_FROST */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_FROST is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 ST_L_STBY */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_STBY is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 TFRS_ANLAGE__WWFG */
    // @ext(0xbf, 0x02, 0x07)
    // model TFRS_ANLAGE__WWFG is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 VZBIT_TFRS_ANLAGE_SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model VZBIT_TFRS_ANLAGE_SELF is Memory<UCH>;

    /** Konstanten 0x0008 ASCII_B11 */
    @ext(0xb0, 0x02, 0x08)
    model ASCII_B11 is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ASCII_MIN */
    // @ext(0xb0, 0x02, 0x08)
    // model ASCII_MIN is Memory<UCH>;

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
    // /** Konstanten 0x0008 L_PRUEF_DAT_CRC */
    // @ext(0xb0, 0x02, 0x08)
    // model L_PRUEF_DAT_CRC is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 M_SET_M2_RQ_RS */
    // @ext(0xb0, 0x02, 0x08)
    // model M_SET_M2_RQ_RS is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 NGREGNORM */
    // @ext(0xb0, 0x02, 0x08)
    // model NGREGNORM is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 SEG_G */
    // @ext(0xb0, 0x02, 0x08)
    // model SEG_G is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 TEMP_6MA */
    // @ext(0xb0, 0x02, 0x08)
    // model TEMP_6MA is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 TFRS */
    // @ext(0xb0, 0x02, 0x08)
    // model TFRS is Memory<UCH>;

    // Alias of ASCII_B11
    // /** Konstanten 0x0008 ZZ_SADR_M11 */
    // @ext(0xb0, 0x02, 0x08)
    // model ZZ_SADR_M11 is Memory<UCH>;

    /** Konstanten 0x0009 ANZ_TEILN */
    @ext(0xb1, 0x02, 0x09)
    model ANZ_TEILN is Memory<UCH>;

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

    /** Konstanten 0x000C AIN_FS_SATT */
    @ext(0xb4, 0x02, 0x0C)
    model AIN_FS_SATT is Memory<UCH>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C EP15RTHZEIT_DTVL_OFFS */
    // @ext(0xb4, 0x02, 0x0C)
    // model EP15RTHZEIT_DTVL_OFFS is Memory<UCH>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C FC_STW */
    // @ext(0xb4, 0x02, 0x0C)
    // model FC_STW is Memory<UCH>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C IEM_IONFILTOSZ */
    // @ext(0xb4, 0x02, 0x0C)
    // model IEM_IONFILTOSZ is Memory<UCH>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C ION_ON */
    // @ext(0xb4, 0x02, 0x0C)
    // model ION_ON is Memory<UCH>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C LCZ_C */
    // @ext(0xb4, 0x02, 0x0C)
    // model LCZ_C is Memory<UCH>;

    /** Konstanten 0x000D BAUDRATE_TAKT */
    @ext(0xb5, 0x02, 0x0D)
    model BAUDRATE_TAKT is Memory<UCH>;

    // Alias of BAUDRATE_TAKT
    // /** Konstanten 0x000D CALIBMINDUR */
    // @ext(0xb5, 0x02, 0x0D)
    // model CALIBMINDUR is Memory<UCH>;

    /** Konstanten 0x000E FC_GRADTVIST */
    @ext(0xb6, 0x02, 0x0E)
    model FC_GRADTVIST is Memory<UCH>;

    // Alias of FC_GRADTVIST
    // /** Konstanten 0x000E LCZ_E */
    // @ext(0xb6, 0x02, 0x0E)
    // model LCZ_E is Memory<UCH>;

    // Alias of FC_GRADTVIST
    // /** Konstanten 0x000E TVIST_BREAK_MASK */
    // @ext(0xb6, 0x02, 0x0E)
    // model TVIST_BREAK_MASK is Memory<UCH>;

    /** Konstanten 0x000F EPFLUEGAS__ABSENK */
    @ext(0xb7, 0x02, 0x0F)
    model EPFLUEGAS__ABSENK is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F EP_DTREGPUPWM__W */
    // @ext(0xb7, 0x02, 0x0F)
    // model EP_DTREGPUPWM__W is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F FC_DTMAXWT */
    // @ext(0xb7, 0x02, 0x0F)
    // model FC_DTMAXWT is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F IOCALIBGASRAMPE__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model IOCALIBGASRAMPE__SELF is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F ION_HS_GAIN_ */
    // @ext(0xb7, 0x02, 0x0F)
    // model ION_HS_GAIN_ is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F ISP_NG_STEP__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model ISP_NG_STEP__SELF is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F KESS_OPT__VV */
    // @ext(0xb7, 0x02, 0x0F)
    // model KESS_OPT__VV is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F LCZ_F */
    // @ext(0xb7, 0x02, 0x0F)
    // model LCZ_F is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F NG_NSP__NGRELANHEB */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_NSP__NGRELANHEB is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F NG_REG_ANPASS__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_REG_ANPASS__SELF is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F NM_TI_MASK */
    // @ext(0xb7, 0x02, 0x0F)
    // model NM_TI_MASK is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F TBRMINOFF__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TBRMINOFF__SELF is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F TCSZA__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCSZA__SELF is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F TCVSP__ABSENK */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCVSP__ABSENK is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F TI_05_07MAX */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07MAX is Memory<UCH>;

    // Alias of EPFLUEGAS__ABSENK
    // /** Konstanten 0x000F TI_05_07_BEKAS */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07_BEKAS is Memory<UCH>;

    /** Konstanten 0x0010 AIN_ERR_BW1 */
    @ext(0xa8, 0x02, 0x10)
    model AIN_ERR_BW1 is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 FC_ABGASSTB */
    // @ext(0xa8, 0x02, 0x10)
    // model FC_ABGASSTB is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 ICSSTATISTIK */
    // @ext(0xa8, 0x02, 0x10)
    // model ICSSTATISTIK is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 IEM_MC_A_B_ABW */
    // @ext(0xa8, 0x02, 0x10)
    // model IEM_MC_A_B_ABW is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 ISP_DX_TEILUNG */
    // @ext(0xa8, 0x02, 0x10)
    // model ISP_DX_TEILUNG is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 ISP_N_STEPS */
    // @ext(0xa8, 0x02, 0x10)
    // model ISP_N_STEPS is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 KMOPUPWM */
    // @ext(0xa8, 0x02, 0x10)
    // model KMOPUPWM is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 L_IOFSPARA */
    // @ext(0xa8, 0x02, 0x10)
    // model L_IOFSPARA is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 L_IONFSPARA_CRC */
    // @ext(0xa8, 0x02, 0x10)
    // model L_IONFSPARA_CRC is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 M_SET_PC_RQ_RS */
    // @ext(0xa8, 0x02, 0x10)
    // model M_SET_PC_RQ_RS is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 QQ_M2 */
    // @ext(0xa8, 0x02, 0x10)
    // model QQ_M2 is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBANK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBANK_TASK_2 is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 REGBNK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBNK_TASK_2 is Memory<UCH>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 SEG_C */
    // @ext(0xa8, 0x02, 0x10)
    // model SEG_C is Memory<UCH>;

    // Alias of AIN_ERR_BW1
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
    // /** Konstanten 0x0012 FC_DTVIST_2 */
    // @ext(0xaa, 0x02, 0x12)
    // model FC_DTVIST_2 is Memory<UCH>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 LCZ_I */
    // @ext(0xaa, 0x02, 0x12)
    // model LCZ_I is Memory<UCH>;

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
    // /** Konstanten 0x0014 FAKT_TO_NGMAX */
    // @ext(0xac, 0x02, 0x14)
    // model FAKT_TO_NGMAX is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 I40_NZUEND_TAG */
    // @ext(0xac, 0x02, 0x14)
    // model I40_NZUEND_TAG is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 LIMABGASSTB */
    // @ext(0xac, 0x02, 0x14)
    // model LIMABGASSTB is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 MAXIMPS */
    // @ext(0xac, 0x02, 0x14)
    // model MAXIMPS is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 MAXIOSOLLABW */
    // @ext(0xac, 0x02, 0x14)
    // model MAXIOSOLLABW is Memory<UCH>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 NIT_SHORT */
    // @ext(0xac, 0x02, 0x14)
    // model NIT_SHORT is Memory<UCH>;

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

    /** Konstanten 0x0016 WAIT_A_2 */
    @ext(0xae, 0x02, 0x16)
    model WAIT_A_2 is Memory<UCH>;

    /** Konstanten 0x0017 EEAEPKANF */
    @ext(0xaf, 0x02, 0x17)
    model EEAEPKANF is Memory<UCH>;

    // Alias of EEAEPKANF
    // /** Konstanten 0x0017 QQ_M17 */
    // @ext(0xaf, 0x02, 0x17)
    // model QQ_M17 is Memory<UCH>;

    /** Konstanten 0x0018 FC_NOT_AUS */
    @ext(0xa0, 0x02, 0x18)
    model FC_NOT_AUS is Memory<UCH>;

    // Alias of FC_NOT_AUS
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory<UCH>;

    /** Konstanten 0x0019 FAKT_FOR_REST */
    @ext(0xa1, 0x02, 0x19)
    model FAKT_FOR_REST is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0019 I45_WARTUNG */
    // @ext(0xa1, 0x02, 0x19)
    // model I45_WARTUNG is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0019 LCZ_P */
    // @ext(0xa1, 0x02, 0x19)
    // model LCZ_P is Memory<UCH>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0019 ROM_END_L */
    // @ext(0xa1, 0x02, 0x19)
    // model ROM_END_L is Memory<UCH>;

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

    // Alias of ASCII_4
    // /** Konstanten 0x001D TWWSOLL_DISABLE */
    // @ext(0xa5, 0x02, 0x1D)
    // model TWWSOLL_DISABLE is Memory<UCH>;

    /** Konstanten 0x001E BW1_NTC_SHORT */
    @ext(0xa6, 0x02, 0x1E)
    model BW1_NTC_SHORT is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E CALIBRELABW */
    // @ext(0xa6, 0x02, 0x1E)
    // model CALIBRELABW is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E FAKT_NGISTTOUPM */
    // @ext(0xa6, 0x02, 0x1E)
    // model FAKT_NGISTTOUPM is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E LCZ_U */
    // @ext(0xa6, 0x02, 0x1E)
    // model LCZ_U is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E LIMDTMAXWT */
    // @ext(0xa6, 0x02, 0x1E)
    // model LIMDTMAXWT is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E MINDURVORANHEB */
    // @ext(0xa6, 0x02, 0x1E)
    // model MINDURVORANHEB is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E MINDURVORCALIB */
    // @ext(0xa6, 0x02, 0x1E)
    // model MINDURVORCALIB is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E NGLIMITIOFILT */
    // @ext(0xa6, 0x02, 0x1E)
    // model NGLIMITIOFILT is Memory<UCH>;

    // Alias of BW1_NTC_SHORT
    // /** Konstanten 0x001E NTC_MIN */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTC_MIN is Memory<UCH>;

    /** Konstanten 0x001F EPGPVSTART__RAMPE */
    @ext(0xa7, 0x02, 0x1F)
    model EPGPVSTART__RAMPE is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x001F EPYGPVOFFS__NGPLUSEA */
    // @ext(0xa7, 0x02, 0x1F)
    // model EPYGPVOFFS__NGPLUSEA is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x001F FC_TVIST2 */
    // @ext(0xa7, 0x02, 0x1F)
    // model FC_TVIST2 is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x001F FC_TVIST_W15 */
    // @ext(0xa7, 0x02, 0x1F)
    // model FC_TVIST_W15 is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x001F QQ_M22 */
    // @ext(0xa7, 0x02, 0x1F)
    // model QQ_M22 is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x001F SOMMERTEMP__SELF */
    // @ext(0xa7, 0x02, 0x1F)
    // model SOMMERTEMP__SELF is Memory<UCH>;

    /** Konstanten 0x0020 EBUS_0307_SOFTWARE */
    @ext(0x98, 0x02, 0x20)
    model EBUS_0307_SOFTWARE is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 HZZVVMASK */
    // @ext(0x98, 0x02, 0x20)
    // model HZZVVMASK is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 ICSCALIBNEXTIOABW */
    // @ext(0x98, 0x02, 0x20)
    // model ICSCALIBNEXTIOABW is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 IEM_NG_BR_MIN */
    // @ext(0x98, 0x02, 0x20)
    // model IEM_NG_BR_MIN is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 KMOQAC */
    // @ext(0x98, 0x02, 0x20)
    // model KMOQAC is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 LCZ_W */
    // @ext(0x98, 0x02, 0x20)
    // model LCZ_W is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 MASK_SERVICE */
    // @ext(0x98, 0x02, 0x20)
    // model MASK_SERVICE is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 MAX_HS_VAL */
    // @ext(0x98, 0x02, 0x20)
    // model MAX_HS_VAL is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 MAX_HS_VAL_ */
    // @ext(0x98, 0x02, 0x20)
    // model MAX_HS_VAL_ is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 PWMSPIEL */
    // @ext(0x98, 0x02, 0x20)
    // model PWMSPIEL is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 REMOTE_YGPV_GESTEUERT */
    // @ext(0x98, 0x02, 0x20)
    // model REMOTE_YGPV_GESTEUERT is Memory<UCH>;

    // Alias of EBUS_0307_SOFTWARE
    // /** Konstanten 0x0020 SEG_E */
    // @ext(0x98, 0x02, 0x20)
    // model SEG_E is Memory<UCH>;

    /** Konstanten 0x0021 FC_TWWIST */
    @ext(0x99, 0x02, 0x21)
    model FC_TWWIST is Memory<UCH>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0021 FC_TWW_BWZ2 */
    // @ext(0x99, 0x02, 0x21)
    // model FC_TWW_BWZ2 is Memory<UCH>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0021 GENPOLY8SIG */
    // @ext(0x99, 0x02, 0x21)
    // model GENPOLY8SIG is Memory<UCH>;

    /** Konstanten 0x0022 FC_TAUSSEN */
    @ext(0x9a, 0x02, 0x22)
    model FC_TAUSSEN is Memory<UCH>;

    // Alias of FC_TAUSSEN
    // /** Konstanten 0x0022 L_S5_DAT_CRC */
    // @ext(0x9a, 0x02, 0x22)
    // model L_S5_DAT_CRC is Memory<UCH>;

    /** Konstanten 0x0023 FC_TVIST_W60 */
    @ext(0x9b, 0x02, 0x23)
    model FC_TVIST_W60 is Memory<UCH>;

    // Alias of FC_TVIST_W60
    // /** Konstanten 0x0023 FC_WW_FLOW */
    // @ext(0x9b, 0x02, 0x23)
    // model FC_WW_FLOW is Memory<UCH>;

    /** Konstanten 0x0024 FC_GDW */
    @ext(0x9c, 0x02, 0x24)
    model FC_GDW is Memory<UCH>;

    // Alias of FC_GDW
    // /** Konstanten 0x0024 LCZBLANK */
    // @ext(0x9c, 0x02, 0x24)
    // model LCZBLANK is Memory<UCH>;

    /** Konstanten 0x0025 LCZGRAD */
    @ext(0x9d, 0x02, 0x25)
    model LCZGRAD is Memory<UCH>;

    // Alias of LCZGRAD
    // /** Konstanten 0x0025 L_KES_DAT_CRC */
    // @ext(0x9d, 0x02, 0x25)
    // model L_KES_DAT_CRC is Memory<UCH>;

    // Alias of LCZGRAD
    // /** Konstanten 0x0025 MAXIONREGCNT */
    // @ext(0x9d, 0x02, 0x25)
    // model MAXIONREGCNT is Memory<UCH>;

    /** Konstanten 0x0026 FC_TB10 */
    @ext(0x9e, 0x02, 0x26)
    model FC_TB10 is Memory<UCH>;

    // Alias of FC_TB10
    // /** Konstanten 0x0026 LCZMINUS */
    // @ext(0x9e, 0x02, 0x26)
    // model LCZMINUS is Memory<UCH>;

    // Alias of FC_TB10
    // /** Konstanten 0x0026 RX_BUF_LEN */
    // @ext(0x9e, 0x02, 0x26)
    // model RX_BUF_LEN is Memory<UCH>;

    /** Konstanten 0x0027 FC_TB11 */
    @ext(0x9f, 0x02, 0x27)
    model FC_TB11 is Memory<UCH>;

    // Alias of FC_TB11
    // /** Konstanten 0x0027 REF_MIN */
    // @ext(0x9f, 0x02, 0x27)
    // model REF_MIN is Memory<UCH>;

    /** Konstanten 0x0029 FC_V1_V2 */
    @ext(0x91, 0x02, 0x29)
    model FC_V1_V2 is Memory<UCH>;

    // Alias of FC_V1_V2
    // /** Konstanten 0x0029 MIN_TAUTOSYN */
    // @ext(0x91, 0x02, 0x29)
    // model MIN_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x002A FC_PWMPUMPE */
    @ext(0x92, 0x02, 0x2A)
    model FC_PWMPUMPE is Memory<UCH>;

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

    /** Konstanten 0x002E QAC_MIN */
    @ext(0x96, 0x02, 0x2E)
    model QAC_MIN is Memory<UCH>;

    // Alias of QAC_MIN
    // /** Konstanten 0x002E WAIT_A_1 */
    // @ext(0x96, 0x02, 0x2E)
    // model WAIT_A_1 is Memory<UCH>;

    /** Konstanten 0x002F ASCII_P */
    @ext(0x97, 0x02, 0x2F)
    model ASCII_P is Memory<UCH>;

    // Alias of ASCII_P
    // /** Konstanten 0x002F QAC_SHORT */
    // @ext(0x97, 0x02, 0x2F)
    // model QAC_SHORT is Memory<UCH>;

    /** Konstanten 0x0030 QQ_M3 */
    @ext(0x88, 0x02, 0x30)
    model QQ_M3 is Memory<UCH>;

    // Alias of QQ_M3
    // /** Konstanten 0x0030 TBRMINOFF__ERDGAS */
    // @ext(0x88, 0x02, 0x30)
    // model TBRMINOFF__ERDGAS is Memory<UCH>;

    // Alias of QQ_M3
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

    /** Konstanten 0x0035 FC_AIN_REF_OK */
    @ext(0x8d, 0x02, 0x35)
    model FC_AIN_REF_OK is Memory<UCH>;

    /** Konstanten 0x0036 FC_SYSFEHLER */
    @ext(0x8e, 0x02, 0x36)
    model FC_SYSFEHLER is Memory<UCH>;

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

    /** Konstanten 0x0040 AIN_ERR_BW2 */
    @ext(0xf8, 0x02, 0x40)
    model AIN_ERR_BW2 is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 ESC_ON */
    // @ext(0xf8, 0x02, 0x40)
    // model ESC_ON is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 FC_CALIBWERKSGRENZEN */
    // @ext(0xf8, 0x02, 0x40)
    // model FC_CALIBWERKSGRENZEN is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 ICSCALIBNEXTSTART */
    // @ext(0xf8, 0x02, 0x40)
    // model ICSCALIBNEXTSTART is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 IEM_DUMMYTEST */
    // @ext(0xf8, 0x02, 0x40)
    // model IEM_DUMMYTEST is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 KMO4_20MA */
    // @ext(0xf8, 0x02, 0x40)
    // model KMO4_20MA is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 MASK_RESET */
    // @ext(0xf8, 0x02, 0x40)
    // model MASK_RESET is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 M_SET_EXTWST */
    // @ext(0xf8, 0x02, 0x40)
    // model M_SET_EXTWST is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 NIOCALIBHISTREC */
    // @ext(0xf8, 0x02, 0x40)
    // model NIOCALIBHISTREC is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 PNL_HZ__HAUS */
    // @ext(0xf8, 0x02, 0x40)
    // model PNL_HZ__HAUS is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 REMOTE_YGPV_NEW */
    // @ext(0xf8, 0x02, 0x40)
    // model REMOTE_YGPV_NEW is Memory<UCH>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 TBRMINOFF__EBUSSPEISUNG */
    // @ext(0xf8, 0x02, 0x40)
    // model TBRMINOFF__EBUSSPEISUNG is Memory<UCH>;

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

    /** Konstanten 0x0059 EEAEPIFANF */
    @ext(0xe1, 0x02, 0x59)
    model EEAEPIFANF is Memory<UCH>;

    /** Konstanten 0x0060 SOMMERTEMP__TBD */
    @ext(0xd8, 0x02, 0x60)
    model SOMMERTEMP__TBD is Memory<UCH>;

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

    /** Konstanten 0x006E NXCL1SEC_COLD */
    @ext(0xd6, 0x02, 0x6E)
    model NXCL1SEC_COLD is Memory<UCH>;

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

    /** Konstanten 0x007F DL_COMF_HYS__SELF */
    @ext(0xc7, 0x02, 0x7F)
    model DL_COMF_HYS__SELF is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F MAX_ION_SOLL_AKT */
    // @ext(0xc7, 0x02, 0x7F)
    // model MAX_ION_SOLL_AKT is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F M_CLR_KILL_WWST */
    // @ext(0xc7, 0x02, 0x7F)
    // model M_CLR_KILL_WWST is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F ROM_PAGES */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGES is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0080 ACK_FE01 */
    @ext(0x38, 0x02, 0x80)
    model ACK_FE01 is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 DL_COMF_HYS__BOOSTER */
    // @ext(0x38, 0x02, 0x80)
    // model DL_COMF_HYS__BOOSTER is Memory<UCH>;

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
    // /** Konstanten 0x0080 KMOSPEICHER */
    // @ext(0x38, 0x02, 0x80)
    // model KMOSPEICHER is Memory<UCH>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 M_SET_KILL_WWST */
    // @ext(0x38, 0x02, 0x80)
    // model M_SET_KILL_WWST is Memory<UCH>;

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

    /** Konstanten 0x0082 ASCII_B10B11 */
    @ext(0x3a, 0x02, 0x82)
    model ASCII_B10B11 is Memory<UCH>;

    // Alias of ASCII_B10B11
    // /** Konstanten 0x0082 EM_STACKOVFLOW */
    // @ext(0x3a, 0x02, 0x82)
    // model EM_STACKOVFLOW is Memory<UCH>;

    /** Konstanten 0x0090 DUR_NGMINANHEB */
    @ext(0x28, 0x02, 0x90)
    model DUR_NGMINANHEB is Memory<UCH>;

    /** Konstanten 0x009B ASCII_5 */
    @ext(0x23, 0x02, 0x9B)
    model ASCII_5 is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B ASCII_S */
    // @ext(0x23, 0x02, 0x9B)
    // model ASCII_S is Memory<UCH>;

    /** Konstanten 0x009E ASCII_3 */
    @ext(0x26, 0x02, 0x9E)
    model ASCII_3 is Memory<UCH>;

    /** Konstanten 0x009F EEA_HL_HIADR */
    @ext(0x27, 0x02, 0x9F)
    model EEA_HL_HIADR is Memory<UCH>;

    /** Konstanten 0x00A0 EEA_WRONG_ADR */
    @ext(0x18, 0x02, 0xA0)
    model EEA_WRONG_ADR is Memory<UCH>;

    // Alias of EEA_WRONG_ADR
    // /** Konstanten 0x00A0 ENAB_MASK */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK is Memory<UCH>;

    // Alias of EEA_WRONG_ADR
    // /** Konstanten 0x00A0 ENAB_MASK_WD */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK_WD is Memory<UCH>;

    // Alias of EEA_WRONG_ADR
    // /** Konstanten 0x00A0 IONIST_MAX */
    // @ext(0x18, 0x02, 0xA0)
    // model IONIST_MAX is Memory<UCH>;

    /** Konstanten 0x00A1 ASCII_L */
    @ext(0x19, 0x02, 0xA1)
    model ASCII_L is Memory<UCH>;

    // Alias of ASCII_L
    // /** Konstanten 0x00A1 EEA_WARTINTHBON */
    // @ext(0x19, 0x02, 0xA1)
    // model EEA_WARTINTHBON is Memory<UCH>;

    /** Konstanten 0x00A3 ASCII_C */
    @ext(0x1b, 0x02, 0xA3)
    model ASCII_C is Memory<UCH>;

    // Alias of ASCII_C
    // /** Konstanten 0x00A3 EEA_FCODE_NOT */
    // @ext(0x1b, 0x02, 0xA3)
    // model EEA_FCODE_NOT is Memory<UCH>;

    // Alias of ASCII_C
    // /** Konstanten 0x00A3 GAIN_4_20MA */
    // @ext(0x1b, 0x02, 0xA3)
    // model GAIN_4_20MA is Memory<UCH>;

    /** Konstanten 0x00A5 EEA_FC_68 */
    @ext(0x1d, 0x02, 0xA5)
    model EEA_FC_68 is Memory<UCH>;

    /** Konstanten 0x00A7 EEA_FC_66 */
    @ext(0x1f, 0x02, 0xA7)
    model EEA_FC_66 is Memory<UCH>;

    /** Konstanten 0x00A8 ASCII_CE */
    @ext(0x10, 0x02, 0xA8)
    model ASCII_CE is Memory<UCH>;

    // Alias of ASCII_CE
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory<UCH>;

    /** Konstanten 0x00A9 ASCII_T */
    @ext(0x11, 0x02, 0xA9)
    model ASCII_T is Memory<UCH>;

    // Alias of ASCII_T
    // /** Konstanten 0x00A9 EEA_FC_65 */
    // @ext(0x11, 0x02, 0xA9)
    // model EEA_FC_65 is Memory<UCH>;

    /** Konstanten 0x00AB ASCII_E */
    @ext(0x13, 0x02, 0xAB)
    model ASCII_E is Memory<UCH>;

    // Alias of ASCII_E
    // /** Konstanten 0x00AB EEA_FC_64 */
    // @ext(0x13, 0x02, 0xAB)
    // model EEA_FC_64 is Memory<UCH>;

    /** Konstanten 0x00AD EEA_FC_62 */
    @ext(0x15, 0x02, 0xAD)
    model EEA_FC_62 is Memory<UCH>;

    /** Konstanten 0x00AE ASCII_2 */
    @ext(0x16, 0x02, 0xAE)
    model ASCII_2 is Memory<UCH>;

    // Alias of ASCII_2
    // /** Konstanten 0x00AE CS_BYTE_WR */
    // @ext(0x16, 0x02, 0xAE)
    // model CS_BYTE_WR is Memory<UCH>;

    /** Konstanten 0x00AF CS_BYTE_RD */
    @ext(0x17, 0x02, 0xAF)
    model CS_BYTE_RD is Memory<UCH>;

    // Alias of CS_BYTE_RD
    // /** Konstanten 0x00AF EEA_FC_61 */
    // @ext(0x17, 0x02, 0xAF)
    // model EEA_FC_61 is Memory<UCH>;

    /** Konstanten 0x00B1 EEA_FC_53 */
    @ext(0x09, 0x02, 0xB1)
    model EEA_FC_53 is Memory<UCH>;

    /** Konstanten 0x00B3 EEA_FC_52 */
    @ext(0x0b, 0x02, 0xB3)
    model EEA_FC_52 is Memory<UCH>;

    /** Konstanten 0x00B4 NCL20SEC */
    @ext(0x0c, 0x02, 0xB4)
    model NCL20SEC is Memory<UCH>;

    /** Konstanten 0x00B5 EEA_FC_51 */
    @ext(0x0d, 0x02, 0xB5)
    model EEA_FC_51 is Memory<UCH>;

    /** Konstanten 0x00B7 ASCII_0 */
    @ext(0x0f, 0x02, 0xB7)
    model ASCII_0 is Memory<UCH>;

    // Alias of ASCII_0
    // /** Konstanten 0x00B7 EEA_FC_44 */
    // @ext(0x0f, 0x02, 0xB7)
    // model EEA_FC_44 is Memory<UCH>;

    /** Konstanten 0x00B8 ASCII_O */
    @ext(0x00, 0x02, 0xB8)
    model ASCII_O is Memory<UCH>;

    /** Konstanten 0x00B9 ASCII_B */
    @ext(0x01, 0x02, 0xB9)
    model ASCII_B is Memory<UCH>;

    // Alias of ASCII_B
    // /** Konstanten 0x00B9 EEA_FC_43 */
    // @ext(0x01, 0x02, 0xB9)
    // model EEA_FC_43 is Memory<UCH>;

    /** Konstanten 0x00BB EEA_FC_42 */
    @ext(0x03, 0x02, 0xBB)
    model EEA_FC_42 is Memory<UCH>;

    /** Konstanten 0x00BC ASCII_D */
    @ext(0x04, 0x02, 0xBC)
    model ASCII_D is Memory<UCH>;

    /** Konstanten 0x00BD EEA_FC_41 */
    @ext(0x05, 0x02, 0xBD)
    model EEA_FC_41 is Memory<UCH>;

    /** Konstanten 0x00BF EEA_FC_37 */
    @ext(0x07, 0x02, 0xBF)
    model EEA_FC_37 is Memory<UCH>;

    // Alias of EEA_FC_37
    // /** Konstanten 0x00BF KMO4_20MA_INV */
    // @ext(0x07, 0x02, 0xBF)
    // model KMO4_20MA_INV is Memory<UCH>;

    // Alias of EEA_FC_37
    // /** Konstanten 0x00BF M_CLR_EXTWST */
    // @ext(0x07, 0x02, 0xBF)
    // model M_CLR_EXTWST is Memory<UCH>;

    /** Konstanten 0x00C1 EEA_FC_36 */
    @ext(0x79, 0x02, 0xC1)
    model EEA_FC_36 is Memory<UCH>;

    /** Konstanten 0x00C3 EEA_FC_35 */
    @ext(0x7b, 0x02, 0xC3)
    model EEA_FC_35 is Memory<UCH>;

    /** Konstanten 0x00C5 EEA_FC_34 */
    @ext(0x7d, 0x02, 0xC5)
    model EEA_FC_34 is Memory<UCH>;

    /** Konstanten 0x00C7 EEA_FC_33 */
    @ext(0x7f, 0x02, 0xC7)
    model EEA_FC_33 is Memory<UCH>;

    /** Konstanten 0x00C8 MAXDELTAT */
    @ext(0x70, 0x02, 0xC8)
    model MAXDELTAT is Memory<UCH>;

    // Alias of MAXDELTAT
    // /** Konstanten 0x00C8 NCL100MSEC */
    // @ext(0x70, 0x02, 0xC8)
    // model NCL100MSEC is Memory<UCH>;

    /** Konstanten 0x00C9 EEA_FC_32 */
    @ext(0x71, 0x02, 0xC9)
    model EEA_FC_32 is Memory<UCH>;

    /** Konstanten 0x00CB EEA_FC_31 */
    @ext(0x73, 0x02, 0xCB)
    model EEA_FC_31 is Memory<UCH>;

    /** Konstanten 0x00CD EEA_FC_24 */
    @ext(0x75, 0x02, 0xCD)
    model EEA_FC_24 is Memory<UCH>;

    /** Konstanten 0x00CF EEA_FC_23 */
    @ext(0x77, 0x02, 0xCF)
    model EEA_FC_23 is Memory<UCH>;

    /** Konstanten 0x00D1 EEA_FC_22 */
    @ext(0x69, 0x02, 0xD1)
    model EEA_FC_22 is Memory<UCH>;

    /** Konstanten 0x00D3 AD_20MA_ */
    @ext(0x6b, 0x02, 0xD3)
    model AD_20MA_ is Memory<UCH>;

    // Alias of AD_20MA_
    // /** Konstanten 0x00D3 EEA_FC_21 */
    // @ext(0x6b, 0x02, 0xD3)
    // model EEA_FC_21 is Memory<UCH>;

    /** Konstanten 0x00D5 AD8_OF_25GRDC */
    @ext(0x6d, 0x02, 0xD5)
    model AD8_OF_25GRDC is Memory<UCH>;

    // Alias of AD8_OF_25GRDC
    // /** Konstanten 0x00D5 EEA_FC_18 */
    // @ext(0x6d, 0x02, 0xD5)
    // model EEA_FC_18 is Memory<UCH>;

    /** Konstanten 0x00D6 AD_20MA */
    @ext(0x6e, 0x02, 0xD6)
    model AD_20MA is Memory<UCH>;

    /** Konstanten 0x00D7 EEA_FC_16 */
    @ext(0x6f, 0x02, 0xD7)
    model EEA_FC_16 is Memory<UCH>;

    /** Konstanten 0x00D9 EEA_FC_15 */
    @ext(0x61, 0x02, 0xD9)
    model EEA_FC_15 is Memory<UCH>;

    /** Konstanten 0x00DB EEA_FC_14 */
    @ext(0x63, 0x02, 0xDB)
    model EEA_FC_14 is Memory<UCH>;

    /** Konstanten 0x00DD EEA_FC_13 */
    @ext(0x65, 0x02, 0xDD)
    model EEA_FC_13 is Memory<UCH>;

    /** Konstanten 0x00DF EEA_FC_12 */
    @ext(0x67, 0x02, 0xDF)
    model EEA_FC_12 is Memory<UCH>;

    /** Konstanten 0x00E0 EPYGPVOFFS__XWTOL */
    @ext(0x58, 0x02, 0xE0)
    model EPYGPVOFFS__XWTOL is Memory<UCH>;

    // Alias of EPYGPVOFFS__XWTOL
    // /** Konstanten 0x00E0 TABGAS_BREAK_MASK */
    // @ext(0x58, 0x02, 0xE0)
    // model TABGAS_BREAK_MASK is Memory<UCH>;

    /** Konstanten 0x00E1 EEA_FC_11 */
    @ext(0x59, 0x02, 0xE1)
    model EEA_FC_11 is Memory<UCH>;

    /** Konstanten 0x00E3 EEA_HBRONTAG */
    @ext(0x5b, 0x02, 0xE3)
    model EEA_HBRONTAG is Memory<UCH>;

    /** Konstanten 0x00E4 EEA_NZUENDTAG */
    @ext(0x5c, 0x02, 0xE4)
    model EEA_NZUENDTAG is Memory<UCH>;

    /** Konstanten 0x00E5 EEA_N_PON */
    @ext(0x5d, 0x02, 0xE5)
    model EEA_N_PON is Memory<UCH>;

    /** Konstanten 0x00E7 EEA_N_KON */
    @ext(0x5f, 0x02, 0xE7)
    model EEA_N_KON is Memory<UCH>;

    /** Konstanten 0x00E8 KEY_PORT */
    @ext(0x50, 0x02, 0xE8)
    model KEY_PORT is Memory<UCH>;

    /** Konstanten 0x00E9 EEA_RES_CNT */
    @ext(0x51, 0x02, 0xE9)
    model EEA_RES_CNT is Memory<UCH>;

    /** Konstanten 0x00EB QAC_MAX */
    @ext(0x53, 0x02, 0xEB)
    model QAC_MAX is Memory<UCH>;

    /** Konstanten 0x00EC EEA_SHUT_OFF */
    @ext(0x54, 0x02, 0xEC)
    model EEA_SHUT_OFF is Memory<UCH>;

    // Alias of EEA_SHUT_OFF
    // /** Konstanten 0x00EC NIT_MAX */
    // @ext(0x54, 0x02, 0xEC)
    // model NIT_MAX is Memory<UCH>;

    /** Konstanten 0x00EE EEA_H_PON */
    @ext(0x56, 0x02, 0xEE)
    model EEA_H_PON is Memory<UCH>;

    /** Konstanten 0x00EF M_CLR_PC_RQ_RS */
    @ext(0x57, 0x02, 0xEF)
    model M_CLR_PC_RQ_RS is Memory<UCH>;

    /** Konstanten 0x00F0 EPWARNMAN__IONSOLLKORRTL */
    @ext(0x48, 0x02, 0xF0)
    model EPWARNMAN__IONSOLLKORRTL is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 IOCALIBGASRAMPE__LUFT */
    // @ext(0x48, 0x02, 0xF0)
    // model IOCALIBGASRAMPE__LUFT is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 ISP_NG_STEP__KICK */
    // @ext(0x48, 0x02, 0xF0)
    // model ISP_NG_STEP__KICK is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 KESS_OPT__VM */
    // @ext(0x48, 0x02, 0xF0)
    // model KESS_OPT__VM is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 NG_NSP__ION_HS_OFF */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_NSP__ION_HS_OFF is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 NG_NSP__TSZA */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_NSP__TSZA is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 NG_REG_ANPASS__START */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_REG_ANPASS__START is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 NM_TI_FG_MASK */
    // @ext(0x48, 0x02, 0xF0)
    // model NM_TI_FG_MASK is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 QQ_M5 */
    // @ext(0x48, 0x02, 0xF0)
    // model QQ_M5 is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 TCSZA__IOREGANPASS */
    // @ext(0x48, 0x02, 0xF0)
    // model TCSZA__IOREGANPASS is Memory<UCH>;

    // Alias of EPWARNMAN__IONSOLLKORRTL
    // /** Konstanten 0x00F0 TCVSP__NSP */
    // @ext(0x48, 0x02, 0xF0)
    // model TCVSP__NSP is Memory<UCH>;

    /** Konstanten 0x00F1 EEA_H_BON */
    @ext(0x49, 0x02, 0xF1)
    model EEA_H_BON is Memory<UCH>;

    // Alias of EEA_H_BON
    // /** Konstanten 0x00F1 QQ_M10 */
    // @ext(0x49, 0x02, 0xF1)
    // model QQ_M10 is Memory<UCH>;

    /** Konstanten 0x00F3 EEA_N_ZUE */
    @ext(0x4b, 0x02, 0xF3)
    model EEA_N_ZUE is Memory<UCH>;

    /** Konstanten 0x00F5 CALIBOFF */
    @ext(0x4d, 0x02, 0xF5)
    model CALIBOFF is Memory<UCH>;

    /** Konstanten 0x00F6 EEA_BAUSTAND */
    @ext(0x4e, 0x02, 0xF6)
    model EEA_BAUSTAND is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x00F6 EEA_PRUEF_ANF */
    // @ext(0x4e, 0x02, 0xF6)
    // model EEA_PRUEF_ANF is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x00F6 EEA_PRUEF_LOW */
    // @ext(0x4e, 0x02, 0xF6)
    // model EEA_PRUEF_LOW is Memory<UCH>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x00F6 ZZ_SADR_M10 */
    // @ext(0x4e, 0x02, 0xF6)
    // model ZZ_SADR_M10 is Memory<UCH>;

    /** Konstanten 0x00F7 M_CLR_M2_RQ_RS */
    @ext(0x4f, 0x02, 0xF7)
    model M_CLR_M2_RQ_RS is Memory<UCH>;

    // Alias of M_CLR_M2_RQ_RS
    // /** Konstanten 0x00F7 QQ_M20 */
    // @ext(0x4f, 0x02, 0xF7)
    // model QQ_M20 is Memory<UCH>;

    /** Konstanten 0x00F8 BW1_NTC_BREAK */
    @ext(0x40, 0x02, 0xF8)
    model BW1_NTC_BREAK is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 EEA_KUNDE */
    // @ext(0x40, 0x02, 0xF8)
    // model EEA_KUNDE is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 EP15RTHZEIT__DTVL */
    // @ext(0x40, 0x02, 0xF8)
    // model EP15RTHZEIT__DTVL is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 EPIONSOLLSTARTGRAD__MINI */
    // @ext(0x40, 0x02, 0xF8)
    // model EPIONSOLLSTARTGRAD__MINI is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 HZ_KTND__D */
    // @ext(0x40, 0x02, 0xF8)
    // model HZ_KTND__D is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 NTC_MAX */
    // @ext(0x40, 0x02, 0xF8)
    // model NTC_MAX is Memory<UCH>;

    // Alias of BW1_NTC_BREAK
    // /** Konstanten 0x00F8 TFRS_ANLAGE__SELF */
    // @ext(0x40, 0x02, 0xF8)
    // model TFRS_ANLAGE__SELF is Memory<UCH>;

    /** Konstanten 0x00F9 EEA_VARIANTE */
    @ext(0x41, 0x02, 0xF9)
    model EEA_VARIANTE is Memory<UCH>;

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

    /** Konstanten 0x00FB EEA_SERIAL_NO */
    @ext(0x43, 0x02, 0xFB)
    model EEA_SERIAL_NO is Memory<UCH>;

    // Alias of EEA_SERIAL_NO
    // /** Konstanten 0x00FB IOEE_OFFSMAX */
    // @ext(0x43, 0x02, 0xFB)
    // model IOEE_OFFSMAX is Memory<UCH>;

    /** Konstanten 0x00FC DL_KTND__D */
    @ext(0x44, 0x02, 0xFC)
    model DL_KTND__D is Memory<UCH>;

    // Alias of DL_KTND__D
    // /** Konstanten 0x00FC ION_KP__NGLIMUP */
    // @ext(0x44, 0x02, 0xFC)
    // model ION_KP__NGLIMUP is Memory<UCH>;

    // Alias of DL_KTND__D
    // /** Konstanten 0x00FC ION_KTN__NGLIMDOWN */
    // @ext(0x44, 0x02, 0xFC)
    // model ION_KTN__NGLIMDOWN is Memory<UCH>;

    /** Konstanten 0x00FD IOEE_ED_LOW */
    @ext(0x45, 0x02, 0xFD)
    model IOEE_ED_LOW is Memory<UCH>;

    // Alias of IOEE_ED_LOW
    // /** Konstanten 0x00FD IOEE_EMERGENCY */
    // @ext(0x45, 0x02, 0xFD)
    // model IOEE_EMERGENCY is Memory<UCH>;

    // Alias of IOEE_ED_LOW
    // /** Konstanten 0x00FD KMOCLRCHANGEDMASK */
    // @ext(0x45, 0x02, 0xFD)
    // model KMOCLRCHANGEDMASK is Memory<UCH>;

    // Alias of IOEE_ED_LOW
    // /** Konstanten 0x00FD M_CLR_REGSTOPP */
    // @ext(0x45, 0x02, 0xFD)
    // model M_CLR_REGSTOPP is Memory<UCH>;

    /** Konstanten 0x00FE EEA_PRUEF_CRC */
    @ext(0x46, 0x02, 0xFE)
    model EEA_PRUEF_CRC is Memory<UCH>;

    // Alias of EEA_PRUEF_CRC
    // /** Konstanten 0x00FE IOEE_ED_HIGH */
    // @ext(0x46, 0x02, 0xFE)
    // model IOEE_ED_HIGH is Memory<UCH>;

    /** Konstanten 0x00FF ADC_BREAK */
    @ext(0x47, 0x02, 0xFF)
    model ADC_BREAK is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF CALIB_N_ZUE */
    // @ext(0x47, 0x02, 0xFF)
    // model CALIB_N_ZUE is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF EEACNTCALIB */
    // @ext(0x47, 0x02, 0xFF)
    // model EEACNTCALIB is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF IOEE_TOVFLOW */
    // @ext(0x47, 0x02, 0xFF)
    // model IOEE_TOVFLOW is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF XRAM_PAGE_DEFAULT */
    // @ext(0x47, 0x02, 0xFF)
    // model XRAM_PAGE_DEFAULT is Memory<UCH>;

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
    // /** Konstanten 0x0109 EEAHIST_WW_FLOW */
    // @ext(0x3d, 0x06, 0x01, 0x02, 0x09)
    // model EEAHIST_WW_FLOW is Memory<UCH>;

    /** Konstanten 0x010A EEAHIST_FCODE_2 */
    @ext(0x3e, 0x06, 0x01, 0x02, 0x0A)
    model EEAHIST_FCODE_2 is Memory<UCH>;

    /** Konstanten 0x0114 EEAHIST_FCODE_3 */
    @ext(0x20, 0x06, 0x01, 0x02, 0x14)
    model EEAHIST_FCODE_3 is Memory<UCH>;

    /** Konstanten 0x011E EEAHIST_FCODE_4 */
    @ext(0x2a, 0x06, 0x01, 0x02, 0x1E)
    model EEAHIST_FCODE_4 is Memory<UCH>;

    /** Konstanten 0x0128 EEAHIST_FCODE_5 */
    @ext(0x1c, 0x06, 0x01, 0x02, 0x28)
    model EEAHIST_FCODE_5 is Memory<UCH>;

    /** Konstanten 0x012C NGIST_MAX */
    @ext(0x18, 0x06, 0x01, 0x02, 0x2C)
    model NGIST_MAX is Memory<UCH>;

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

    /** Konstanten 0x0301 EBUS_0307_HARDWARE */
    @ext(0x11, 0x06, 0x03, 0x02, 0x01)
    model EBUS_0307_HARDWARE is Memory<UCH>;

    /** Konstanten 0x03E8 REMOTE_YGPV_RANGE */
    @ext(0xf8, 0x06, 0x03, 0x02, 0xE8)
    model REMOTE_YGPV_RANGE is Memory<UCH>;

}
