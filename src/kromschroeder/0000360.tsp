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

    /** RAM 0x0004 Divi */
    @ext(0x58, 0x01, 0x04)
    model Divi is Memory<UCH>;
//    @ext(0xe8, 0x11, 0x04)
//    model Divi is Memory<UIN>;

    /** RAM 0x0005 Aufruf_von */
    @ext(0x59, 0x01, 0x05)
    model Aufruf_von is Memory<UCH>;

    // Alias of Aufruf_von
    // /** RAM 0x0005 Maximum */
    // @ext(0x59, 0x01, 0x05)
    // model Maximum is Memory<UCH>;

    // Alias of Aufruf_von
    // /** RAM 0x0005 aMenupunkt */
    // @ext(0x59, 0x01, 0x05)
    // model aMenupunkt is Memory<UCH>;

    /** RAM 0x0006 Bezeichnung_INr */
    @ext(0x5a, 0x01, 0x06)
    model Bezeichnung_INr is Memory<UCH>;
//    @ext(0xea, 0x11, 0x06)
//    model Bezeichnung_INr is Memory<UIN>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 Bezeichnung_PNr */
    // @ext(0x5a, 0x01, 0x06)
    // model Bezeichnung_PNr is Memory<UCH>;
//    // @ext(0xea, 0x11, 0x06)
//    // model Bezeichnung_PNr is Memory<UIN>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 Value */
    // @ext(0x5a, 0x01, 0x06)
    // model Value is Memory<UCH>;
//    // @ext(0xea, 0x11, 0x06)
//    // model Value is Memory<UIN>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 aParameterwert */
    // @ext(0x5a, 0x01, 0x06)
    // model aParameterwert is Memory<UCH>;
//    // @ext(0xea, 0x11, 0x06)
//    // model aParameterwert is Memory<UIN>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0006 timeout */
    // @ext(0x5a, 0x01, 0x06)
    // model timeout is Memory<UCH>;
//    // @ext(0xea, 0x11, 0x06)
//    // model timeout is Memory<UIN>;

    /** RAM 0x0007 Drehzahl */
    @ext(0x5b, 0x01, 0x07)
    model Drehzahl is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Minimum */
    // @ext(0x5b, 0x01, 0x07)
    // model Minimum is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Multi */
    // @ext(0x5b, 0x01, 0x07)
    // model Multi is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 OffValue */
    // @ext(0x5b, 0x01, 0x07)
    // model OffValue is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 Pt_History */
    // @ext(0x5b, 0x01, 0x07)
    // model Pt_History is Memory<UCH>;

    // Alias of Drehzahl
    // /** RAM 0x0007 aPara */
    // @ext(0x5b, 0x01, 0x07)
    // model aPara is Memory<UCH>;

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
        DL_Zapfen: BI6,
        ThFrS_WW: BI5,
        DL_Comfort: BI4,
        ThFrS_HZ: BI3,
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
        BlinkToggle: BI3,
        BIONTIMERCOUNTS: BI2,
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
//    @ext(0xc6, 0x11, 0x2A)
//    model T_CALT_0108 is Memory<UIN>;

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
        OPT_SCOT: BI6,
        OPT_IOSOLLKALIB: BI5,
        OPT_NO_LDW: BI4,
        OPT_NGATOM_30: BI2,
        OPTRCON: BI1,
        OPT_EE2NDPAGE: BI0
    }

    /** RAM 0x0030 TCVSP */
    @ext(0x6c, 0x01, 0x30)
    model TCVSP is Memory<UCH>;
//    @ext(0xdc, 0x11, 0x30)
//    model TCVSP is Memory<UIN>;

    /** RAM 0x0031 TCSZA */
    @ext(0x6d, 0x01, 0x31)
    model TCSZA is Memory<UCH>;

    /** RAM 0x0032 TCNSP */
    @ext(0x6e, 0x01, 0x32)
    model TCNSP is Memory<UCH>;
//    @ext(0xde, 0x11, 0x32)
//    model TCNSP is Memory<UIN>;

    /** RAM 0x0033 NG_MAX_LOW */
    @ext(0x6f, 0x01, 0x33)
    model NG_MAX_LOW is Memory<UCH>;

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

    /** RAM 0x0038 MXSTB_K */
    @ext(0x64, 0x01, 0x38)
    model MXSTB_K is Memory<UCH>;
//    @ext(0xd4, 0x11, 0x38)
//    model MXSTB_K is Memory<UIN>;

    /** RAM 0x0039 MXSTW_K */
    @ext(0x65, 0x01, 0x39)
    model MXSTW_K is Memory<UCH>;

    /** RAM 0x003A MXSTB_A */
    @ext(0x66, 0x01, 0x3A)
    model MXSTB_A is Memory<UCH>;
//    @ext(0xd6, 0x11, 0x3A)
//    model MXSTB_A is Memory<UIN>;

    /** RAM 0x003B EPYGPVOFFS */
    @ext(0x67, 0x01, 0x3B)
    model EPYGPVOFFS is Memory<UCH>;

    /** RAM 0x003C EPYGPVLIN */
    @ext(0x60, 0x01, 0x3C)
    model EPYGPVLIN is Memory<UCH>;
//    @ext(0xd0, 0x11, 0x3C)
//    model EPYGPVLIN is Memory<UIN>;

    /** RAM 0x003D EPYGPVQUAD */
    @ext(0x61, 0x01, 0x3D)
    model EPYGPVQUAD is Memory<UCH>;

    /** RAM 0x003E EPION_XW_TOL */
    @ext(0x62, 0x01, 0x3E)
    model EPION_XW_TOL is Memory<UCH>;
//    @ext(0xd2, 0x11, 0x3E)
//    model EPION_XW_TOL is Memory<UIN>;

    /** RAM 0x003F EPYGPV_TOL */
    @ext(0x63, 0x01, 0x3F)
    model EPYGPV_TOL is Memory<UCH>;

    /** RAM 0x0040 NG_BR_MIN */
    @ext(0x1c, 0x01, 0x40)
    model NG_BR_MIN is Memory<UCH>;
//    @ext(0xac, 0x11, 0x40)
//    model NG_BR_MIN is Memory<UIN>;

    /** RAM 0x0041 EE_CONST_CRC */
    @ext(0x1d, 0x01, 0x41)
    model EE_CONST_CRC is Memory<UCH>;

    /** RAM 0x0042 T_CNT_0001 */
    @ext(0x1e, 0x01, 0x42)
    model T_CNT_0001 is Memory<UCH>;
//    @ext(0xae, 0x11, 0x42)
//    model T_CNT_0001 is Memory<UIN>;

    /** RAM 0x0043 T_CNT_0002 */
    @ext(0x1f, 0x01, 0x43)
    model T_CNT_0002 is Memory<UCH>;

    /** RAM 0x0044 T_CNT_0003 */
    @ext(0x18, 0x01, 0x44)
    model T_CNT_0003 is Memory<UCH>;
//    @ext(0xa8, 0x11, 0x44)
//    model T_CNT_0003 is Memory<UIN>;

    /** RAM 0x0045 T_CNT_0004 */
    @ext(0x19, 0x01, 0x45)
    model T_CNT_0004 is Memory<UCH>;

    /** RAM 0x0046 T_CNT_0005 */
    @ext(0x1a, 0x01, 0x46)
    model T_CNT_0005 is Memory<UCH>;
//    @ext(0xaa, 0x11, 0x46)
//    model T_CNT_0005 is Memory<UIN>;

    /** RAM 0x0047 T_CNT_0006 */
    @ext(0x1b, 0x01, 0x47)
    model T_CNT_0006 is Memory<UCH>;

    /** RAM 0x0048 T_CNT_0007 */
    @ext(0x14, 0x01, 0x48)
    model T_CNT_0007 is Memory<UCH>;
//    @ext(0xa4, 0x11, 0x48)
//    model T_CNT_0007 is Memory<UIN>;

    /** RAM 0x0049 T_CNT_0008 */
    @ext(0x15, 0x01, 0x49)
    model T_CNT_0008 is Memory<UCH>;

    /** RAM 0x004A S5_DAT_CRC */
    @ext(0x16, 0x01, 0x4A)
    model S5_DAT_CRC is Memory<UCH>;
//    @ext(0xa6, 0x11, 0x4A)
//    model S5_DAT_CRC is Memory<UIN>;

    /** RAM 0x004B MB_2_ALT */
    @ext(0x17, 0x01, 0x4B)
    model MB_2_ALT is Memory<UCH>;

    /** RAM 0x004C BE1_50HZ_CNT */
    @ext(0x10, 0x01, 0x4C)
    model BE1_50HZ_CNT is Memory<UCH>;
//    @ext(0xa0, 0x11, 0x4C)
//    model BE1_50HZ_CNT is Memory<UIN>;

    /** RAM 0x004D BE2_50HZ_CNT */
    @ext(0x11, 0x01, 0x4D)
    model BE2_50HZ_CNT is Memory<UCH>;

    /** RAM 0x004E BE3_50HZ_CNT */
    @ext(0x12, 0x01, 0x4E)
    model BE3_50HZ_CNT is Memory<UCH>;
//    @ext(0xa2, 0x11, 0x4E)
//    model BE3_50HZ_CNT is Memory<UIN>;

    /** RAM 0x004F BE4_50HZ_CNT */
    @ext(0x13, 0x01, 0x4F)
    model BE4_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0050 BE5_50HZ_CNT */
    @ext(0x0c, 0x01, 0x50)
    model BE5_50HZ_CNT is Memory<UCH>;
//    @ext(0xbc, 0x11, 0x50)
//    model BE5_50HZ_CNT is Memory<UIN>;

    // Alias of BE5_50HZ_CNT
    // /** RAM 0x0050 NGIST_CNT */
    // @ext(0x0c, 0x01, 0x50)
    // model NGIST_CNT is Memory<UCH>;
//    // @ext(0xbc, 0x11, 0x50)
//    // model NGIST_CNT is Memory<UIN>;

    /** RAM 0x0051 RES_CYCL_CNT */
    @ext(0x0d, 0x01, 0x51)
    model RES_CYCL_CNT is Memory<UCH>;

    /** RAM 0x0052 RES_CNT */
    @ext(0x0e, 0x01, 0x52)
    model RES_CNT is Memory<UCH>;
//    @ext(0xbe, 0x11, 0x52)
//    model RES_CNT is Memory<UIN>;

    /** RAM 0x0053 RES_CNT_INV */
    @ext(0x0f, 0x01, 0x53)
    model RES_CNT_INV is Memory<UCH>;

    /** RAM 0x0054 ICL100MSEC */
    @ext(0x08, 0x01, 0x54)
    model ICL100MSEC is Memory<UCH>;
//    @ext(0xb8, 0x11, 0x54)
//    model ICL100MSEC is Memory<UIN>;

    /** RAM 0x0055 ICL20SEC */
    @ext(0x09, 0x01, 0x55)
    model ICL20SEC is Memory<UCH>;

    /** RAM 0x0056 ICL1HRS */
    @ext(0x0a, 0x01, 0x56)
    model ICL1HRS is Memory<UCH>;
//    @ext(0xba, 0x11, 0x56)
//    model ICL1HRS is Memory<UIN>;

    /** RAM 0x0057 KEY_ACT */
    @ext(0x0b, 0x01, 0x57)
    model KEY_ACT is Memory<UCH>;

    /** RAM 0x0058 KEY_PREV */
    @ext(0x04, 0x01, 0x58)
    model KEY_PREV is Memory<UCH>;
//    @ext(0xb4, 0x11, 0x58)
//    model KEY_PREV is Memory<UIN>;

    /** RAM 0x0059 KEY_CNT */
    @ext(0x05, 0x01, 0x59)
    model KEY_CNT is Memory<UCH>;

    /** RAM 0x005A MENU_NR */
    @ext(0x06, 0x01, 0x5A)
    model MENU_NR is Memory<UCH>;
//    @ext(0xb6, 0x11, 0x5A)
//    model MENU_NR is Memory<UIN>;

    /** RAM 0x005B S5_ERR_CODE */
    @ext(0x07, 0x01, 0x5B)
    model S5_ERR_CODE is Memory<UCH>;

    /** RAM 0x005C TVISTAD */
    @ext(0x00, 0x01, 0x5C)
    model TVISTAD is Memory<UCH>;
//    @ext(0xb0, 0x11, 0x5C)
//    model TVISTAD is Memory<UIN>;

    /** RAM 0x005D TWWISTAD */
    @ext(0x01, 0x01, 0x5D)
    model TWWISTAD is Memory<UCH>;

    /** RAM 0x005E TAUSSEN */
    @ext(0x02, 0x01, 0x5E)
    model TAUSSEN is Memory<UCH>;
//    @ext(0xb2, 0x11, 0x5E)
//    model TAUSSEN is Memory<UIN>;

    /** RAM 0x005F TABGAS */
    @ext(0x03, 0x01, 0x5F)
    model TABGAS is Memory<UCH>;

    /** RAM 0x0060 IONIST */
    @ext(0x3c, 0x01, 0x60)
    model IONIST is Memory<UCH>;
//    @ext(0x8c, 0x11, 0x60)
//    model IONIST is Memory<UIN>;

    /** RAM 0x0061 PWMGPV */
    @ext(0x3d, 0x01, 0x61)
    model PWMGPV is Memory<UCH>;

    /** RAM 0x0063 Menupunkt */
    @ext(0x3f, 0x01, 0x63)
    model Menupunkt is Memory<UCH>;

    /** RAM 0x0064 Parameterwert */
    @ext(0x38, 0x01, 0x64)
    model Parameterwert is Memory<UCH>;
//    @ext(0x88, 0x11, 0x64)
//    model Parameterwert is Memory<UIN>;

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

    /** RAM 0x006C V24_ODAT */
    @ext(0x30, 0x01, 0x6C)
    model V24_ODAT is Memory<UCH>;
//    @ext(0x80, 0x11, 0x6C)
//    model V24_ODAT is Memory<UIN>;

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

    /** RAM 0x0070 NGSOLL */
    @ext(0x2c, 0x01, 0x70)
    model NGSOLL is Memory<UCH>;
//    @ext(0x9c, 0x11, 0x70)
//    model NGSOLL is Memory<UIN>;

    /** RAM 0x0071 NGIST */
    @ext(0x2d, 0x01, 0x71)
    model NGIST is Memory<UCH>;

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

    /** RAM 0x0075 YTVREG */
    @ext(0x29, 0x01, 0x75)
    model YTVREG is Memory<UCH>;

    /** RAM 0x0077 YPWM */
    @ext(0x2b, 0x01, 0x77)
    model YPWM is Memory<UCH>;

    /** RAM 0x0079 WW_FLOW_CNT */
    @ext(0x25, 0x01, 0x79)
    model WW_FLOW_CNT is Memory<UCH>;

    /** RAM 0x007A CALIB_STATE */
    @ext(0x26, 0x01, 0x7A)
    model CALIB_STATE is Memory<UCH>;
//    @ext(0x96, 0x11, 0x7A)
//    model CALIB_STATE is Memory<UIN>;

    /** RAM 0x007B ION_ERR_MASK */
    @ext(0x27, 0x01, 0x7B)
    model ION_ERR_MASK is Memory<UCH>;

    /** RAM 0x007C PREVIONTH */
    @ext(0x20, 0x01, 0x7C)
    model PREVIONTH is Memory<UCH>;
//    @ext(0x90, 0x11, 0x7C)
//    model PREVIONTH is Memory<UIN>;

    /** RAM 0x007D INETZPERIODE */
    @ext(0x21, 0x01, 0x7D)
    model INETZPERIODE is Memory<UCH>;

    /** RAM 0x007E CNTNETZPERIODE */
    @ext(0x22, 0x01, 0x7E)
    model CNTNETZPERIODE is Memory<UCH>;
//    @ext(0x92, 0x11, 0x7E)
//    model CNTNETZPERIODE is Memory<UIN>;

    /** RAM 0x0080 IRAEPKANF */
    @ext(0xdc, 0x01, 0x80)
    model IRAEPKANF is Memory<UCH>;
//    @ext(0x6c, 0x11, 0x80)
//    model IRAEPKANF is Memory<UIN>;

    // Alias of IRAEPKANF
    // /** RAM 0x0080 MAXTVSOLL */
    // @ext(0xdc, 0x01, 0x80)
    // model MAXTVSOLL is Memory<UCH>;
//    // @ext(0x6c, 0x11, 0x80)
//    // model MAXTVSOLL is Memory<UIN>;

    /** RAM 0x0081 HZ_HYS */
    @ext(0xdd, 0x01, 0x81)
    model HZ_HYS is Memory<UCH>;

    /** RAM 0x0082 TBRMINOFF */
    @ext(0xde, 0x01, 0x82)
    model TBRMINOFF is Memory<UCH>;
//    @ext(0x6e, 0x11, 0x82)
//    model TBRMINOFF is Memory<UIN>;

    /** RAM 0x0083 HZ_KP */
    @ext(0xdf, 0x01, 0x83)
    model HZ_KP is Memory<UCH>;

    /** RAM 0x0084 HZ_KTND */
    @ext(0xd8, 0x01, 0x84)
    model HZ_KTND is Memory<UCH>;
//    @ext(0x68, 0x11, 0x84)
//    model HZ_KTND is Memory<UIN>;

    /** RAM 0x0085 NG_KESSEL_MIN */
    @ext(0xd9, 0x01, 0x85)
    model NG_KESSEL_MIN is Memory<UCH>;

    /** RAM 0x0086 NG_HZ_FREI */
    @ext(0xda, 0x01, 0x86)
    model NG_HZ_FREI is Memory<UCH>;
//    @ext(0x6a, 0x11, 0x86)
//    model NG_HZ_FREI is Memory<UIN>;

    /** RAM 0x0087 NG_HZ_MAX */
    @ext(0xdb, 0x01, 0x87)
    model NG_HZ_MAX is Memory<UCH>;

    /** RAM 0x0088 PNL_HZ */
    @ext(0xd4, 0x01, 0x88)
    model PNL_HZ is Memory<UCH>;
//    @ext(0x64, 0x11, 0x88)
//    model PNL_HZ is Memory<UIN>;

    /** RAM 0x0089 PUHZOFFS */
    @ext(0xd5, 0x01, 0x89)
    model PUHZOFFS is Memory<UCH>;

    /** RAM 0x008A PUHZSTEIG */
    @ext(0xd6, 0x01, 0x8A)
    model PUHZSTEIG is Memory<UCH>;
//    @ext(0x66, 0x11, 0x8A)
//    model PUHZSTEIG is Memory<UIN>;

    /** RAM 0x008B WW_HYS */
    @ext(0xd7, 0x01, 0x8B)
    model WW_HYS is Memory<UCH>;

    /** RAM 0x008C TWWPLUS */
    @ext(0xd0, 0x01, 0x8C)
    model TWWPLUS is Memory<UCH>;
//    @ext(0x60, 0x11, 0x8C)
//    model TWWPLUS is Memory<UIN>;

    /** RAM 0x008D NG_WW_MAX */
    @ext(0xd1, 0x01, 0x8D)
    model NG_WW_MAX is Memory<UCH>;

    /** RAM 0x008E IO_KORR */
    @ext(0xd2, 0x01, 0x8E)
    model IO_KORR is Memory<UCH>;
//    @ext(0x62, 0x11, 0x8E)
//    model IO_KORR is Memory<UIN>;

    /** RAM 0x008F NG_KP */
    @ext(0xd3, 0x01, 0x8F)
    model NG_KP is Memory<UCH>;

    /** RAM 0x0090 NG_KTN */
    @ext(0xcc, 0x01, 0x90)
    model NG_KTN is Memory<UCH>;
//    @ext(0x7c, 0x11, 0x90)
//    model NG_KTN is Memory<UIN>;

    /** RAM 0x0091 ION_KP */
    @ext(0xcd, 0x01, 0x91)
    model ION_KP is Memory<UCH>;

    /** RAM 0x0092 ION_KTN */
    @ext(0xce, 0x01, 0x92)
    model ION_KTN is Memory<UCH>;
//    @ext(0x7e, 0x11, 0x92)
//    model ION_KTN is Memory<UIN>;

    /** RAM 0x0093 V24_KM_ADR */
    @ext(0xcf, 0x01, 0x93)
    model V24_KM_ADR is Memory<UCH>;

    /** RAM 0x0094 NG_START_PWM */
    @ext(0xc8, 0x01, 0x94)
    model NG_START_PWM is Memory<UCH>;
//    @ext(0x78, 0x11, 0x94)
//    model NG_START_PWM is Memory<UIN>;

    /** RAM 0x0095 MAXBWLADEZEIT */
    @ext(0xc9, 0x01, 0x95)
    model MAXBWLADEZEIT is Memory<UCH>;

    /** RAM 0x0096 DL_KP */
    @ext(0xca, 0x01, 0x96)
    model DL_KP is Memory<UCH>;
//    @ext(0x7a, 0x11, 0x96)
//    model DL_KP is Memory<UIN>;

    /** RAM 0x0097 DL_KTND */
    @ext(0xcb, 0x01, 0x97)
    model DL_KTND is Memory<UCH>;

    /** RAM 0x0098 DL_NORMAL */
    @ext(0xc4, 0x01, 0x98)
    model DL_NORMAL is Memory<UCH>;
//    @ext(0x74, 0x11, 0x98)
//    model DL_NORMAL is Memory<UIN>;

    /** RAM 0x0099 WW_ABSENK */
    @ext(0xc5, 0x01, 0x99)
    model WW_ABSENK is Memory<UCH>;

    /** RAM 0x009A DL_COMF_HYS */
    @ext(0xc6, 0x01, 0x9A)
    model DL_COMF_HYS is Memory<UCH>;
//    @ext(0x76, 0x11, 0x9A)
//    model DL_COMF_HYS is Memory<UIN>;

    /** RAM 0x009B HK_S */
    @ext(0xc7, 0x01, 0x9B)
    model HK_S is Memory<UCH>;

    /** RAM 0x009C TAUSSEN_KORR */
    @ext(0xc0, 0x01, 0x9C)
    model TAUSSEN_KORR is Memory<UCH>;
//    @ext(0x70, 0x11, 0x9C)
//    model TAUSSEN_KORR is Memory<UIN>;

    /** RAM 0x009D NG_KESSEL_MAX */
    @ext(0xc1, 0x01, 0x9D)
    model NG_KESSEL_MAX is Memory<UCH>;

    /** RAM 0x009E YGPVSTART */
    @ext(0xc2, 0x01, 0x9E)
    model YGPVSTART is Memory<UCH>;
//    @ext(0x72, 0x11, 0x9E)
//    model YGPVSTART is Memory<UIN>;

    /** RAM 0x009F TFRS_ANLAGE */
    @ext(0xc3, 0x01, 0x9F)
    model TFRS_ANLAGE is Memory<UCH>;

    /** RAM 0x00A0 EP15RTHZEIT */
    @ext(0xfc, 0x01, 0xA0)
    model EP15RTHZEIT is Memory<UCH>;
//    @ext(0x4c, 0x11, 0xA0)
//    model EP15RTHZEIT is Memory<UIN>;

    /** RAM 0x00A1 EP17HZSONDER */
    @ext(0xfd, 0x01, 0xA1)
    model EP17HZSONDER is Memory<UCH>;

    /** RAM 0x00A2 NG_TRUDEL */
    @ext(0xfe, 0x01, 0xA2)
    model NG_TRUDEL is Memory<UCH>;
//    @ext(0x4e, 0x11, 0xA2)
//    model NG_TRUDEL is Memory<UIN>;

    /** RAM 0x00A3 EP33ABGASSTB */
    @ext(0xff, 0x01, 0xA3)
    model EP33ABGASSTB is Memory<UCH>;

    /** RAM 0x00A4 NG_ZUEND */
    @ext(0xf8, 0x01, 0xA4)
    model NG_ZUEND is Memory<UCH>;
//    @ext(0x48, 0x11, 0xA4)
//    model NG_ZUEND is Memory<UIN>;

    /** RAM 0x00A5 MINTVSOLL */
    @ext(0xf9, 0x01, 0xA5)
    model MINTVSOLL is Memory<UCH>;

    /** RAM 0x00A6 NG_REG_ANPASS */
    @ext(0xfa, 0x01, 0xA6)
    model NG_REG_ANPASS is Memory<UCH>;
//    @ext(0x4a, 0x11, 0xA6)
//    model NG_REG_ANPASS is Memory<UIN>;

    /** RAM 0x00A7 ION_REG_ANPASS */
    @ext(0xfb, 0x01, 0xA7)
    model ION_REG_ANPASS is Memory<UCH>;

    /** RAM 0x00A8 EPGPVSTART */
    @ext(0xf4, 0x01, 0xA8)
    model EPGPVSTART is Memory<UCH>;
//    @ext(0x44, 0x11, 0xA8)
//    model EPGPVSTART is Memory<UIN>;

    /** RAM 0x00A9 DL_DT_VORST */
    @ext(0xf5, 0x01, 0xA9)
    model DL_DT_VORST is Memory<UCH>;

    /** RAM 0x00AA DTMAXWT */
    @ext(0xf6, 0x01, 0xAA)
    model DTMAXWT is Memory<UCH>;
//    @ext(0x46, 0x11, 0xAA)
//    model DTMAXWT is Memory<UIN>;

    /** RAM 0x00AB MXGRADTVIST */
    @ext(0xf7, 0x01, 0xAB)
    model MXGRADTVIST is Memory<UCH>;

    /** RAM 0x00AC KESS_OPT */
    @ext(0xf0, 0x01, 0xAC)
    model KESS_OPT is Memory<UCH>;
//    @ext(0x40, 0x11, 0xAC)
//    model KESS_OPT is Memory<UIN>;

    /** RAM 0x00AD KES_DAT_CRC */
    @ext(0xf1, 0x01, 0xAD)
    model KES_DAT_CRC is Memory<UCH>;

    /** RAM 0x00AE IRAEPMANF */
    @ext(0xf2, 0x01, 0xAE)
    model IRAEPMANF is Memory<UCH>;
//    @ext(0x42, 0x11, 0xAE)
//    model IRAEPMANF is Memory<UIN>;

    // Alias of IRAEPMANF
    // /** RAM 0x00AE TVSOLL_EPM */
    // @ext(0xf2, 0x01, 0xAE)
    // model TVSOLL_EPM is Memory<UCH>;
//    // @ext(0x42, 0x11, 0xAE)
//    // model TVSOLL_EPM is Memory<UIN>;

    /** RAM 0x00AF TVABSENK */
    @ext(0xf3, 0x01, 0xAF)
    model TVABSENK is Memory<UCH>;

    /** RAM 0x00B0 SOMMERTEMP */
    @ext(0xec, 0x01, 0xB0)
    model SOMMERTEMP is Memory<UCH>;
//    @ext(0x5c, 0x11, 0xB0)
//    model SOMMERTEMP is Memory<UIN>;

    /** RAM 0x00B1 TWWSOLL_EPM */
    @ext(0xed, 0x01, 0xB1)
    model TWWSOLL_EPM is Memory<UCH>;

    /** RAM 0x00B2 TRAUMTAG */
    @ext(0xee, 0x01, 0xB2)
    model TRAUMTAG is Memory<UCH>;
//    @ext(0x5e, 0x11, 0xB2)
//    model TRAUMTAG is Memory<UIN>;

    /** RAM 0x00B3 TRAUMABSENK */
    @ext(0xef, 0x01, 0xB3)
    model TRAUMABSENK is Memory<UCH>;

    /** RAM 0x00B4 MAINPARACRC */
    @ext(0xe8, 0x01, 0xB4)
    model MAINPARACRC is Memory<UCH>;
//    @ext(0x58, 0x11, 0xB4)
//    model MAINPARACRC is Memory<UIN>;

    /** RAM 0x00B5 ION_SOLL */
    @ext(0xe9, 0x01, 0xB5)
    model ION_SOLL is Memory<UCH>;

    /** RAM 0x00B6 PNL_HZCNT */
    @ext(0xea, 0x01, 0xB6)
    model PNL_HZCNT is Memory<UCH>;
//    @ext(0x5a, 0x11, 0xB6)
//    model PNL_HZCNT is Memory<UIN>;

    /** RAM 0x00B8 PNL_WWCNT */
    @ext(0xe4, 0x01, 0xB8)
    model PNL_WWCNT is Memory<UCH>;
//    @ext(0x54, 0x11, 0xB8)
//    model PNL_WWCNT is Memory<UIN>;

    /** RAM 0x00BA NGXW1 */
    @ext(0xe6, 0x01, 0xBA)
    model NGXW1 is Memory<UCH>;
//    @ext(0x56, 0x11, 0xBA)
//    model NGXW1 is Memory<UIN>;

    /** RAM 0x00BB PUHZPWM */
    @ext(0xe7, 0x01, 0xBB)
    model PUHZPWM is Memory<UCH>;

    /** RAM 0x00BC AIN_ERR_MASK */
    @ext(0xe0, 0x01, 0xBC)
    model AIN_ERR_MASK is Memory<UCH>;
//    @ext(0x50, 0x11, 0xBC)
//    model AIN_ERR_MASK is Memory<UIN>;

    /** RAM 0x00BD TAUSSAD */
    @ext(0xe1, 0x01, 0xBD)
    model TAUSSAD is Memory<UCH>;

    /** RAM 0x00BE TABGAD */
    @ext(0xe2, 0x01, 0xBE)
    model TABGAD is Memory<UCH>;
//    @ext(0x52, 0x11, 0xBE)
//    model TABGAD is Memory<UIN>;

    /** RAM 0x00BF AIN_FS_ERR_MASK */
    @ext(0xe3, 0x01, 0xBF)
    model AIN_FS_ERR_MASK is Memory<UCH>;

    /** RAM 0x00C0 ERR_MERK_ALT */
    @ext(0x9c, 0x01, 0xC0)
    model ERR_MERK_ALT is Memory<UCH>;
//    @ext(0x2c, 0x11, 0xC0)
//    model ERR_MERK_ALT is Memory<UIN>;

    /** RAM 0x00C1 F_CODE_ALT */
    @ext(0x9d, 0x01, 0xC1)
    model F_CODE_ALT is Memory<UCH>;

    /** RAM 0x00C2 ROM_DPH */
    @ext(0x9e, 0x01, 0xC2)
    model ROM_DPH is Memory<UCH>;
//    @ext(0x2e, 0x11, 0xC2)
//    model ROM_DPH is Memory<UIN>;

    /** RAM 0x00C3 ROM_DPL */
    @ext(0x9f, 0x01, 0xC3)
    model ROM_DPL is Memory<UCH>;

    /** RAM 0x00C4 ROM_H */
    @ext(0x98, 0x01, 0xC4)
    model ROM_H is Memory<UCH>;
//    @ext(0x28, 0x11, 0xC4)
//    model ROM_H is Memory<UIN>;

    /** RAM 0x00C5 ROM_L */
    @ext(0x99, 0x01, 0xC5)
    model ROM_L is Memory<UCH>;

    /** RAM 0x00C6 V24_SCOM_ADR */
    @ext(0x9a, 0x01, 0xC6)
    model V24_SCOM_ADR is Memory<UCH>;
//    @ext(0x2a, 0x11, 0xC6)
//    model V24_SCOM_ADR is Memory<UIN>;

    /** RAM 0x00C7 YIONREG */
    @ext(0x9b, 0x01, 0xC7)
    model YIONREG is Memory<UCH>;

    /** RAM 0x00C9 YGPVOPT */
    @ext(0x95, 0x01, 0xC9)
    model YGPVOPT is Memory<UCH>;

    /** RAM 0x00CB DYGPVREL */
    @ext(0x97, 0x01, 0xCB)
    model DYGPVREL is Memory<UCH>;

    /** RAM 0x00CC ION_SOLL_AKT */
    @ext(0x90, 0x01, 0xCC)
    model ION_SOLL_AKT is Memory<UCH>;
//    @ext(0x20, 0x11, 0xCC)
//    model ION_SOLL_AKT is Memory<UIN>;

    /** RAM 0x00CD ION_ERR_TIME */
    @ext(0x91, 0x01, 0xCD)
    model ION_ERR_TIME is Memory<UCH>;

    /** RAM 0x00CE uk1 */
    @ext(0x92, 0x01, 0xCE)
    model uk1 is Memory<UCH>;
//    @ext(0x22, 0x11, 0xCE)
//    model uk1 is Memory<UIN>;

    /** RAM 0x00CF scHilf */
    @ext(0x93, 0x01, 0xCF)
    model scHilf is Memory<UCH>;

    /** RAM 0x00D0 ICL1HRS_ALT */
    @ext(0x8c, 0x01, 0xD0)
    model ICL1HRS_ALT is Memory<UCH>;
//    @ext(0x3c, 0x11, 0xD0)
//    model ICL1HRS_ALT is Memory<UIN>;

    /** RAM 0x00D1 RES_CNT_ALT */
    @ext(0x8d, 0x01, 0xD1)
    model RES_CNT_ALT is Memory<UCH>;

    /** RAM 0x00D2 NGIST_2 */
    @ext(0x8e, 0x01, 0xD2)
    model NGIST_2 is Memory<UCH>;
//    @ext(0x3e, 0x11, 0xD2)
//    model NGIST_2 is Memory<UIN>;

    /** RAM 0x00D4 ION_XW */
    @ext(0x88, 0x01, 0xD4)
    model ION_XW is Memory<UCH>;
//    @ext(0x38, 0x11, 0xD4)
//    model ION_XW is Memory<UIN>;

    /** RAM 0x00D5 STACK */
    @ext(0x89, 0x01, 0xD5)
    model STACK is Memory<UCH>;


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

    /** SFR 0x008A ION_TIMER_LOW */
    @ext(0xa6, 0x04, 0x8A)
    model ION_TIMER_LOW is Memory<UCH>;
//    @ext(0x16, 0x14, 0x8A)
//    model ION_TIMER_LOW is Memory<UIN>;

    // Alias of ION_TIMER_LOW
    // /** SFR 0x008A TL0 */
    // @ext(0xa6, 0x04, 0x8A)
    // model TL0 is Memory<UCH>;
//    // @ext(0x16, 0x14, 0x8A)
//    // model TL0 is Memory<UIN>;

    /** SFR 0x008B TL1 */
    @ext(0xa7, 0x04, 0x8B)
    model TL1 is Memory<UCH>;

    /** SFR 0x008C ION_TIMER_HIGH */
    @ext(0xa0, 0x04, 0x8C)
    model ION_TIMER_HIGH is Memory<UCH>;
//    @ext(0x10, 0x14, 0x8C)
//    model ION_TIMER_HIGH is Memory<UIN>;

    // Alias of ION_TIMER_HIGH
    // /** SFR 0x008C TH0 */
    // @ext(0xa0, 0x04, 0x8C)
    // model TH0 is Memory<UCH>;
//    // @ext(0x10, 0x14, 0x8C)
//    // model TH0 is Memory<UIN>;

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
    // /** SFR 0x00C2 CCL_PUHZ */
    // @ext(0xee, 0x04, 0xC2)
    // model CCL_PUHZ is Memory<UCH>;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model CCL_PUHZ is Memory<UIN>;

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
//    @ext(0x58, 0x14, 0xC4)
//    model CCL2 is Memory<UIN>;

    // Alias of CCL2
    // /** SFR 0x00C4 CCL_GEBL */
    // @ext(0xe8, 0x04, 0xC4)
    // model CCL_GEBL is Memory<UCH>;
//    // @ext(0x58, 0x14, 0xC4)
//    // model CCL_GEBL is Memory<UIN>;

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

    /** SFR 0x00D8 ADCON0 */
    @ext(0xf4, 0x04, 0xD8)
    model ADCON0 is Memory<UCH>;
//    @ext(0x44, 0x14, 0xD8)
//    model ADCON0 is Memory<UIN>;

    /** SFR 0x00D9 ADDATH */
    @ext(0xf5, 0x04, 0xD9)
    model ADDATH is Memory<UCH>;

    /** SFR 0x00DA ADDATL */
    @ext(0xf6, 0x04, 0xDA)
    model ADDATL is Memory<UCH>;
//    @ext(0x46, 0x14, 0xDA)
//    model ADDATL is Memory<UIN>;

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

    /** Konstanten 0x0000 ADC_SHORT */
    @ext(0xb8, 0x02, 0x00)
    model ADC_SHORT is Memory<UCH>;
//    @ext(0x08, 0x12, 0x00)
//    model ADC_SHORT is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 AIO_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model AIO_360 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AIO_360 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 EBUS_S7 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_S7 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_S7 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 EBUS_SCHICHT_2 */
    // @ext(0xb8, 0x02, 0x00)
    // model EBUS_SCHICHT_2 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EBUS_SCHICHT_2 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 EEA_PAGE_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_PAGE_DEFAULT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEA_PAGE_DEFAULT is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 EE_PARAS */
    // @ext(0xb8, 0x02, 0x00)
    // model EE_PARAS is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EE_PARAS is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 HARD_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD_C505L is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model HARD_C505L is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 ICSBEDARFBIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ICSBEDARFBIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ICSBEDARFBIT is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 LAMBDA */
    // @ext(0xb8, 0x02, 0x00)
    // model LAMBDA is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model LAMBDA is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 LAMBDA_FAILSAFE */
    // @ext(0xb8, 0x02, 0x00)
    // model LAMBDA_FAILSAFE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model LAMBDA_FAILSAFE is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 MB_2_INIT */
    // @ext(0xb8, 0x02, 0x00)
    // model MB_2_INIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MB_2_INIT is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 MENU_U_CURSER_KAMINKEHRE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_KAMINKEHRE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MENU_U_CURSER_KAMINKEHRE is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 MENU_U_CURSER_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_SONNE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MENU_U_CURSER_SONNE is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 OS_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model OS_C505L is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model OS_C505L is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model QQ_M1 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 RAMROM */
    // @ext(0xb8, 0x02, 0x00)
    // model RAMROM is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model RAMROM is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 SFR_IO */
    // @ext(0xb8, 0x02, 0x00)
    // model SFR_IO is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model SFR_IO is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 ST_L_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model ST_L_SONNE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ST_L_SONNE is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 TPLUSBIT */
    // @ext(0xb8, 0x02, 0x00)
    // model TPLUSBIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model TPLUSBIT is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 UNDEFINED */
    // @ext(0xb8, 0x02, 0x00)
    // model UNDEFINED is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model UNDEFINED is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 USER */
    // @ext(0xb8, 0x02, 0x00)
    // model USER is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model USER is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 VAR_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model VAR_360 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model VAR_360 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 VHI_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model VHI_360 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model VHI_360 is Memory<UIN>;

    // Alias of ADC_SHORT
    // /** Konstanten 0x0000 WIF_360 */
    // @ext(0xb8, 0x02, 0x00)
    // model WIF_360 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model WIF_360 is Memory<UIN>;

    /** Konstanten 0x0001 ACK_0304 */
    @ext(0xb9, 0x02, 0x01)
    model ACK_0304 is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ACK_5002 */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_5002 is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ACK_REG_STOP */
    // @ext(0xb9, 0x02, 0x01)
    // model ACK_REG_STOP is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ADC_NONE */
    // @ext(0xb9, 0x02, 0x01)
    // model ADC_NONE is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 AIN_ERR_NI1000 */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_ERR_NI1000 is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 A_ON */
    // @ext(0xb9, 0x02, 0x01)
    // model A_ON is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 EEA_CONST_ANF */
    // @ext(0xb9, 0x02, 0x01)
    // model EEA_CONST_ANF is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ICSBEDARF */
    // @ext(0xb9, 0x02, 0x01)
    // model ICSBEDARF is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ICSPREPAREBIT */
    // @ext(0xb9, 0x02, 0x01)
    // model ICSPREPAREBIT is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 IEM_ION_XW */
    // @ext(0xb9, 0x02, 0x01)
    // model IEM_ION_XW is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 MASK_LINKS */
    // @ext(0xb9, 0x02, 0x01)
    // model MASK_LINKS is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 MAX_OK */
    // @ext(0xb9, 0x02, 0x01)
    // model MAX_OK is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 MENU_L_I */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_L_I is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 MENU_U_KAMINKEHRER */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_U_KAMINKEHRER is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 NGPBS_AFAKT */
    // @ext(0xb9, 0x02, 0x01)
    // model NGPBS_AFAKT is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 PLUS_MASK */
    // @ext(0xb9, 0x02, 0x01)
    // model PLUS_MASK is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 SEG_F */
    // @ext(0xb9, 0x02, 0x01)
    // model SEG_F is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 ST_R_FLAMME */
    // @ext(0xb9, 0x02, 0x01)
    // model ST_R_FLAMME is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 TMINUSBIT */
    // @ext(0xb9, 0x02, 0x01)
    // model TMINUSBIT is Memory<UCH>;

    // Alias of ACK_0304
    // /** Konstanten 0x0001 WC_CALIBABW */
    // @ext(0xb9, 0x02, 0x01)
    // model WC_CALIBABW is Memory<UCH>;

    /** Konstanten 0x0002 ACK_0305 */
    @ext(0xba, 0x02, 0x02)
    model ACK_0305 is Memory<UCH>;
//    @ext(0x0a, 0x12, 0x02)
//    model ACK_0305 is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 ACK_500A */
    // @ext(0xba, 0x02, 0x02)
    // model ACK_500A is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ACK_500A is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 E_ON */
    // @ext(0xba, 0x02, 0x02)
    // model E_ON is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model E_ON is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 HKS_FAKT */
    // @ext(0xba, 0x02, 0x02)
    // model HKS_FAKT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model HKS_FAKT is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 ICSPREPARE */
    // @ext(0xba, 0x02, 0x02)
    // model ICSPREPARE is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ICSPREPARE is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 ICSRUNBIT */
    // @ext(0xba, 0x02, 0x02)
    // model ICSRUNBIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ICSRUNBIT is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 IEM_DYGPVTOL */
    // @ext(0xba, 0x02, 0x02)
    // model IEM_DYGPVTOL is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model IEM_DYGPVTOL is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 MASK_RECHTS */
    // @ext(0xba, 0x02, 0x02)
    // model MASK_RECHTS is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MASK_RECHTS is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 MENU_L_CURSER_I */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_L_CURSER_I is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MENU_L_CURSER_I is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 MENU_U_WASSERHAHN */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_U_WASSERHAHN is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MENU_U_WASSERHAHN is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 MINUS_MASK */
    // @ext(0xba, 0x02, 0x02)
    // model MINUS_MASK is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MINUS_MASK is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 NGPBS_XWATOM */
    // @ext(0xba, 0x02, 0x02)
    // model NGPBS_XWATOM is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NGPBS_XWATOM is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 SEG_A */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_A is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model SEG_A is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 SEG_DP */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_DP is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model SEG_DP is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 ST_R_RADIATOR */
    // @ext(0xba, 0x02, 0x02)
    // model ST_R_RADIATOR is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ST_R_RADIATOR is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 TIDLE_R2 */
    // @ext(0xba, 0x02, 0x02)
    // model TIDLE_R2 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TIDLE_R2 is Memory<UIN>;

    // Alias of ACK_0305
    // /** Konstanten 0x0002 V24_KM_ADR_MAX */
    // @ext(0xba, 0x02, 0x02)
    // model V24_KM_ADR_MAX is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model V24_KM_ADR_MAX is Memory<UIN>;

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
    // /** Konstanten 0x0003 DL_KTND__I */
    // @ext(0xbb, 0x02, 0x03)
    // model DL_KTND__I is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 EE_PAGES */
    // @ext(0xbb, 0x02, 0x03)
    // model EE_PAGES is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 HZ_KTND__I */
    // @ext(0xbb, 0x02, 0x03)
    // model HZ_KTND__I is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 ICSPOSTRUNBIT */
    // @ext(0xbb, 0x02, 0x03)
    // model ICSPOSTRUNBIT is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 MENU_U_CURSER_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_MOND is Memory<UCH>;

    // Alias of ADC_MXCODE
    // /** Konstanten 0x0003 MENU_U_CURSER_WASSERHAHN */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_WASSERHAHN is Memory<UCH>;

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
    // /** Konstanten 0x0003 ST_L_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model ST_L_MOND is Memory<UCH>;

    /** Konstanten 0x0004 AIN_ERR_TAUSS */
    @ext(0xbc, 0x02, 0x04)
    model AIN_ERR_TAUSS is Memory<UCH>;
//    @ext(0x0c, 0x12, 0x04)
//    model AIN_ERR_TAUSS is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_RESERVE1 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_RESERVE1 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_RESERVE1 is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_RESERVE2 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_RESERVE2 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_RESERVE2 is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TAUSS */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TAUSS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TAUSS is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 AI_TWW */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TWW is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TWW is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 CALIBMULFAKTOR */
    // @ext(0xbc, 0x02, 0x04)
    // model CALIBMULFAKTOR is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model CALIBMULFAKTOR is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 F_ON */
    // @ext(0xbc, 0x02, 0x04)
    // model F_ON is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model F_ON is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ICSRUN */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSRUN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ICSRUN is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ICSSTATISTIKBIT */
    // @ext(0xbc, 0x02, 0x04)
    // model ICSSTATISTIKBIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ICSSTATISTIKBIT is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 IEM_YGPVMIN */
    // @ext(0xbc, 0x02, 0x04)
    // model IEM_YGPVMIN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model IEM_YGPVMIN is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ION_SOLL_CRC_NOK */
    // @ext(0xbc, 0x02, 0x04)
    // model ION_SOLL_CRC_NOK is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ION_SOLL_CRC_NOK is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 MENU_L_P */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_L_P is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model MENU_L_P is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 MENU_U_SCHIRM */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_U_SCHIRM is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model MENU_U_SCHIRM is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NFSOUT is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 N_50HZ_IN */
    // @ext(0xbc, 0x02, 0x04)
    // model N_50HZ_IN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model N_50HZ_IN is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model RES_CNT_OFF is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 SEG_B */
    // @ext(0xbc, 0x02, 0x04)
    // model SEG_B is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model SEG_B is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ST_R_WASSERHAHN */
    // @ext(0xbc, 0x02, 0x04)
    // model ST_R_WASSERHAHN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ST_R_WASSERHAHN is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 TA_AUFLOESUNG */
    // @ext(0xbc, 0x02, 0x04)
    // model TA_AUFLOESUNG is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TA_AUFLOESUNG is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 TI_05_07_PC */
    // @ext(0xbc, 0x02, 0x04)
    // model TI_05_07_PC is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TI_05_07_PC is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 V24_KM_ADR_DEFAULT */
    // @ext(0xbc, 0x02, 0x04)
    // model V24_KM_ADR_DEFAULT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model V24_KM_ADR_DEFAULT is Memory<UIN>;

    // Alias of AIN_ERR_TAUSS
    // /** Konstanten 0x0004 ZYKRATE_500A */
    // @ext(0xbc, 0x02, 0x04)
    // model ZYKRATE_500A is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ZYKRATE_500A is Memory<UIN>;

    /** Konstanten 0x0005 AI_THZ */
    @ext(0xbd, 0x02, 0x05)
    model AI_THZ is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 ICSCALIBNEXTIOABWBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ICSCALIBNEXTIOABWBIT is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 KLAPPEN_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model KLAPPEN_BIT is Memory<UCH>;

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
    // /** Konstanten 0x0005 NGPBS_IMPS */
    // @ext(0xbd, 0x02, 0x05)
    // model NGPBS_IMPS is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 NG_DW_TOL */
    // @ext(0xbd, 0x02, 0x05)
    // model NG_DW_TOL is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 NXCL1SEC */
    // @ext(0xbd, 0x02, 0x05)
    // model NXCL1SEC is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 REF_FUSE */
    // @ext(0xbd, 0x02, 0x05)
    // model REF_FUSE is Memory<UCH>;

    // Alias of AI_THZ
    // /** Konstanten 0x0005 ST_L_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model ST_L_SCHIRM is Memory<UCH>;

    /** Konstanten 0x0006 AI_TABG */
    @ext(0xbe, 0x02, 0x06)
    model AI_TABG is Memory<UCH>;
//    @ext(0x0e, 0x12, 0x06)
//    model AI_TABG is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 ICSCALIBNEXTSTARTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model ICSCALIBNEXTSTARTBIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model ICSCALIBNEXTSTARTBIT is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 IEM_DUMMYTESTBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model IEM_DUMMYTESTBIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model IEM_DUMMYTESTBIT is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 KOMMA */
    // @ext(0xbe, 0x02, 0x06)
    // model KOMMA is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model KOMMA is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 LIMIOCALIB_N_ZUE */
    // @ext(0xbe, 0x02, 0x06)
    // model LIMIOCALIB_N_ZUE is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model LIMIOCALIB_N_ZUE is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 LMAINPARACRC */
    // @ext(0xbe, 0x02, 0x06)
    // model LMAINPARACRC is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model LMAINPARACRC is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_CURSER_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_CURSER_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_CURSER_P */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_P is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_CURSER_P is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_L_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_U_SCHLUESSEL */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SCHLUESSEL is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_U_SCHLUESSEL is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 MENU_U_SONNE */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SONNE is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_U_SONNE is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 ST_R_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model ST_R_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model ST_R_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 TFE_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model TFE_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model TFE_BIT is Memory<UIN>;

    // Alias of AI_TABG
    // /** Konstanten 0x0006 V24_TECHOHW */
    // @ext(0xbe, 0x02, 0x06)
    // model V24_TECHOHW is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model V24_TECHOHW is Memory<UIN>;

    /** Konstanten 0x0007 AIN_FS_MIN_SATT */
    @ext(0xbf, 0x02, 0x07)
    model AIN_FS_MIN_SATT is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 AI_REF */
    // @ext(0xbf, 0x02, 0x07)
    // model AI_REF is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 EP15RTHZEIT__BRFG */
    // @ext(0xbf, 0x02, 0x07)
    // model EP15RTHZEIT__BRFG is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 IEM_TIMEOUTBIT */
    // @ext(0xbf, 0x02, 0x07)
    // model IEM_TIMEOUTBIT is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 ISP_N_STEPS */
    // @ext(0xbf, 0x02, 0x07)
    // model ISP_N_STEPS is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 MENU_U_CURSER_SCHLUESSEL */
    // @ext(0xbf, 0x02, 0x07)
    // model MENU_U_CURSER_SCHLUESSEL is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 NGPBS_FABTAST */
    // @ext(0xbf, 0x02, 0x07)
    // model NGPBS_FABTAST is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 ST_L_FROST */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_FROST is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 ST_L_STBY */
    // @ext(0xbf, 0x02, 0x07)
    // model ST_L_STBY is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 TFRS_ANLAGE__WWFG */
    // @ext(0xbf, 0x02, 0x07)
    // model TFRS_ANLAGE__WWFG is Memory<UCH>;

    // Alias of AIN_FS_MIN_SATT
    // /** Konstanten 0x0007 VZBIT_TFRS_ANLAGE_SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model VZBIT_TFRS_ANLAGE_SELF is Memory<UCH>;

    /** Konstanten 0x0008 ICSPOSTRUN */
    @ext(0xb0, 0x02, 0x08)
    model ICSPOSTRUN is Memory<UCH>;
//    @ext(0x00, 0x12, 0x08)
//    model ICSPOSTRUN is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 IEM_YGPVMAX */
    // @ext(0xb0, 0x02, 0x08)
    // model IEM_YGPVMAX is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model IEM_YGPVMAX is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 ION_OFF */
    // @ext(0xb0, 0x02, 0x08)
    // model ION_OFF is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model ION_OFF is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 L_PRUEF_DAT_CRC */
    // @ext(0xb0, 0x02, 0x08)
    // model L_PRUEF_DAT_CRC is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model L_PRUEF_DAT_CRC is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 MINUS_ON */
    // @ext(0xb0, 0x02, 0x08)
    // model MINUS_ON is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model MINUS_ON is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model REGBNK_TASK_1 is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 SEG_G */
    // @ext(0xb0, 0x02, 0x08)
    // model SEG_G is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model SEG_G is Memory<UIN>;

    // Alias of ICSPOSTRUN
    // /** Konstanten 0x0008 ZZ_SADR_M11 */
    // @ext(0xb0, 0x02, 0x08)
    // model ZZ_SADR_M11 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model ZZ_SADR_M11 is Memory<UIN>;

    /** Konstanten 0x0009 ANZ_TEILN */
    @ext(0xb1, 0x02, 0x09)
    model ANZ_TEILN is Memory<UCH>;

    /** Konstanten 0x000A BYTEDIAGNOSE */
    @ext(0xb2, 0x02, 0x0A)
    model BYTEDIAGNOSE is Memory<UCH>;
//    @ext(0x02, 0x12, 0x0A)
//    model BYTEDIAGNOSE is Memory<UIN>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A CALIBIOABW_1 */
    // @ext(0xb2, 0x02, 0x0A)
    // model CALIBIOABW_1 is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model CALIBIOABW_1 is Memory<UIN>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A LCZ_A */
    // @ext(0xb2, 0x02, 0x0A)
    // model LCZ_A is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model LCZ_A is Memory<UIN>;

    // Alias of BYTEDIAGNOSE
    // /** Konstanten 0x000A MAXIOKORR */
    // @ext(0xb2, 0x02, 0x0A)
    // model MAXIOKORR is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model MAXIOKORR is Memory<UIN>;

    /** Konstanten 0x000B L_IONFSPARA_CRC */
    @ext(0xb3, 0x02, 0x0B)
    model L_IONFSPARA_CRC is Memory<UCH>;

    /** Konstanten 0x000C AIN_FS_SATT */
    @ext(0xb4, 0x02, 0x0C)
    model AIN_FS_SATT is Memory<UCH>;
//    @ext(0x04, 0x12, 0x0C)
//    model AIN_FS_SATT is Memory<UIN>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C FC_STW */
    // @ext(0xb4, 0x02, 0x0C)
    // model FC_STW is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model FC_STW is Memory<UIN>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C ICSKEINREGELN */
    // @ext(0xb4, 0x02, 0x0C)
    // model ICSKEINREGELN is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model ICSKEINREGELN is Memory<UIN>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C ION_ON */
    // @ext(0xb4, 0x02, 0x0C)
    // model ION_ON is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model ION_ON is Memory<UIN>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C KM_OPT_KONFI_UNDEFINED */
    // @ext(0xb4, 0x02, 0x0C)
    // model KM_OPT_KONFI_UNDEFINED is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model KM_OPT_KONFI_UNDEFINED is Memory<UIN>;

    // Alias of AIN_FS_SATT
    // /** Konstanten 0x000C LCZ_C */
    // @ext(0xb4, 0x02, 0x0C)
    // model LCZ_C is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model LCZ_C is Memory<UIN>;

    /** Konstanten 0x000D BAUDRATE_TAKT */
    @ext(0xb5, 0x02, 0x0D)
    model BAUDRATE_TAKT is Memory<UCH>;

    /** Konstanten 0x000E FC_GRADTVIST */
    @ext(0xb6, 0x02, 0x0E)
    model FC_GRADTVIST is Memory<UCH>;
//    @ext(0x06, 0x12, 0x0E)
//    model FC_GRADTVIST is Memory<UIN>;

    // Alias of FC_GRADTVIST
    // /** Konstanten 0x000E LCZ_E */
    // @ext(0xb6, 0x02, 0x0E)
    // model LCZ_E is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model LCZ_E is Memory<UIN>;

    /** Konstanten 0x000F EPGPVSTART__RAMPE */
    @ext(0xb7, 0x02, 0x0F)
    model EPGPVSTART__RAMPE is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F FC_DTMAXWT */
    // @ext(0xb7, 0x02, 0x0F)
    // model FC_DTMAXWT is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F ISP_NG_STEP__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model ISP_NG_STEP__SELF is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F KESS_OPT__VV */
    // @ext(0xb7, 0x02, 0x0F)
    // model KESS_OPT__VV is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F LCZ_F */
    // @ext(0xb7, 0x02, 0x0F)
    // model LCZ_F is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory<UCH>;

    // Alias of EPGPVSTART__RAMPE
    // /** Konstanten 0x000F TBRMINOFF__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TBRMINOFF__SELF is Memory<UCH>;

    /** Konstanten 0x0010 AIN_ERR_BW1 */
    @ext(0xa8, 0x02, 0x10)
    model AIN_ERR_BW1 is Memory<UCH>;
//    @ext(0x18, 0x12, 0x10)
//    model AIN_ERR_BW1 is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 CONFIG_ON */
    // @ext(0xa8, 0x02, 0x10)
    // model CONFIG_ON is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model CONFIG_ON is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 FC_ABGASSTB */
    // @ext(0xa8, 0x02, 0x10)
    // model FC_ABGASSTB is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model FC_ABGASSTB is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 ICSSTATISTIK */
    // @ext(0xa8, 0x02, 0x10)
    // model ICSSTATISTIK is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model ICSSTATISTIK is Memory<UIN>;

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 IEM_MC_A_B_ABW */
    // @ext(0xa8, 0x02, 0x10)
    // model IEM_MC_A_B_ABW is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model IEM_MC_A_B_ABW is Memory<UIN>;

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

    // Alias of AIN_ERR_BW1
    // /** Konstanten 0x0010 SEG_C */
    // @ext(0xa8, 0x02, 0x10)
    // model SEG_C is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model SEG_C is Memory<UIN>;

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
//    @ext(0x1a, 0x12, 0x12)
//    model DDSPERRZAEHLER is Memory<UIN>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 NIT_MIN */
    // @ext(0xaa, 0x02, 0x12)
    // model NIT_MIN is Memory<UCH>;
//    // @ext(0x1a, 0x12, 0x12)
//    // model NIT_MIN is Memory<UIN>;

    /** Konstanten 0x0013 DDRX_OFFSET_S1 */
    @ext(0xab, 0x02, 0x13)
    model DDRX_OFFSET_S1 is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 EEA_CONST_CRC */
    // @ext(0xab, 0x02, 0x13)
    // model EEA_CONST_CRC is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 NIT_SHORT */
    // @ext(0xab, 0x02, 0x13)
    // model NIT_SHORT is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 QQ_M12 */
    // @ext(0xab, 0x02, 0x13)
    // model QQ_M12 is Memory<UCH>;

    /** Konstanten 0x0014 CALIB_PREPARE_WAIT */
    @ext(0xac, 0x02, 0x14)
    model CALIB_PREPARE_WAIT is Memory<UCH>;
//    @ext(0x1c, 0x12, 0x14)
//    model CALIB_PREPARE_WAIT is Memory<UIN>;

    // Alias of CALIB_PREPARE_WAIT
    // /** Konstanten 0x0014 DDTX_OFFSET_CNT */
    // @ext(0xac, 0x02, 0x14)
    // model DDTX_OFFSET_CNT is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DDTX_OFFSET_CNT is Memory<UIN>;

    // Alias of CALIB_PREPARE_WAIT
    // /** Konstanten 0x0014 EE_RAM_ANF */
    // @ext(0xac, 0x02, 0x14)
    // model EE_RAM_ANF is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model EE_RAM_ANF is Memory<UIN>;

    // Alias of CALIB_PREPARE_WAIT
    // /** Konstanten 0x0014 MAXIOSOLLABW */
    // @ext(0xac, 0x02, 0x14)
    // model MAXIOSOLLABW is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model MAXIOSOLLABW is Memory<UIN>;

    // Alias of CALIB_PREPARE_WAIT
    // /** Konstanten 0x0014 NNETZPERIODE */
    // @ext(0xac, 0x02, 0x14)
    // model NNETZPERIODE is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model NNETZPERIODE is Memory<UIN>;

    /** Konstanten 0x0016 EEAEPKANF */
    @ext(0xae, 0x02, 0x16)
    model EEAEPKANF is Memory<UCH>;
//    @ext(0x1e, 0x12, 0x16)
//    model EEAEPKANF is Memory<UIN>;

    // Alias of EEAEPKANF
    // /** Konstanten 0x0016 WAIT_A_2 */
    // @ext(0xae, 0x02, 0x16)
    // model WAIT_A_2 is Memory<UCH>;
//    // @ext(0x1e, 0x12, 0x16)
//    // model WAIT_A_2 is Memory<UIN>;

    /** Konstanten 0x0017 LCZ_N */
    @ext(0xaf, 0x02, 0x17)
    model LCZ_N is Memory<UCH>;

    // Alias of LCZ_N
    // /** Konstanten 0x0017 QQ_M17 */
    // @ext(0xaf, 0x02, 0x17)
    // model QQ_M17 is Memory<UCH>;

    /** Konstanten 0x0018 LCZ_O */
    @ext(0xa0, 0x02, 0x18)
    model LCZ_O is Memory<UCH>;
//    @ext(0x10, 0x12, 0x18)
//    model LCZ_O is Memory<UIN>;

    // Alias of LCZ_O
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory<UCH>;
//    // @ext(0x10, 0x12, 0x18)
//    // model REGB_TIRP is Memory<UIN>;

    /** Konstanten 0x0019 LCZ_P */
    @ext(0xa1, 0x02, 0x19)
    model LCZ_P is Memory<UCH>;

    // Alias of LCZ_P
    // /** Konstanten 0x0019 ROM_END_L */
    // @ext(0xa1, 0x02, 0x19)
    // model ROM_END_L is Memory<UCH>;

    // Alias of LCZ_P
    // /** Konstanten 0x0019 TIRP_R1 */
    // @ext(0xa1, 0x02, 0x19)
    // model TIRP_R1 is Memory<UCH>;

    /** Konstanten 0x001A TIRP_R2 */
    @ext(0xa2, 0x02, 0x1A)
    model TIRP_R2 is Memory<UCH>;
//    @ext(0x12, 0x12, 0x1A)
//    model TIRP_R2 is Memory<UIN>;

    /** Konstanten 0x001B TIRP_R3 */
    @ext(0xa3, 0x02, 0x1B)
    model TIRP_R3 is Memory<UCH>;

    /** Konstanten 0x001C LCZ_S */
    @ext(0xa4, 0x02, 0x1C)
    model LCZ_S is Memory<UCH>;
//    @ext(0x14, 0x12, 0x1C)
//    model LCZ_S is Memory<UIN>;

    // Alias of LCZ_S
    // /** Konstanten 0x001C TIRP_R4 */
    // @ext(0xa4, 0x02, 0x1C)
    // model TIRP_R4 is Memory<UCH>;
//    // @ext(0x14, 0x12, 0x1C)
//    // model TIRP_R4 is Memory<UIN>;

    /** Konstanten 0x001D TIRP_R5 */
    @ext(0xa5, 0x02, 0x1D)
    model TIRP_R5 is Memory<UCH>;

    // Alias of TIRP_R5
    // /** Konstanten 0x001D TWWSOLL_DISABLE */
    // @ext(0xa5, 0x02, 0x1D)
    // model TWWSOLL_DISABLE is Memory<UCH>;

    /** Konstanten 0x001E CALIBRELABW */
    @ext(0xa6, 0x02, 0x1E)
    model CALIBRELABW is Memory<UCH>;
//    @ext(0x16, 0x12, 0x1E)
//    model CALIBRELABW is Memory<UIN>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E LCZ_U */
    // @ext(0xa6, 0x02, 0x1E)
    // model LCZ_U is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model LCZ_U is Memory<UIN>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E NTC_MIN */
    // @ext(0xa6, 0x02, 0x1E)
    // model NTC_MIN is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NTC_MIN is Memory<UIN>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E TIRP_R6 */
    // @ext(0xa6, 0x02, 0x1E)
    // model TIRP_R6 is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model TIRP_R6 is Memory<UIN>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E TI_05_07MAX */
    // @ext(0xa6, 0x02, 0x1E)
    // model TI_05_07MAX is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model TI_05_07MAX is Memory<UIN>;

    // Alias of CALIBRELABW
    // /** Konstanten 0x001E TI_05_07_BEKAS */
    // @ext(0xa6, 0x02, 0x1E)
    // model TI_05_07_BEKAS is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model TI_05_07_BEKAS is Memory<UIN>;

    /** Konstanten 0x001F QQ_M22 */
    @ext(0xa7, 0x02, 0x1F)
    model QQ_M22 is Memory<UCH>;

    // Alias of QQ_M22
    // /** Konstanten 0x001F SOMMERTEMP__SELF */
    // @ext(0xa7, 0x02, 0x1F)
    // model SOMMERTEMP__SELF is Memory<UCH>;

    /** Konstanten 0x0020 ICSCALIBNEXTIOABW */
    @ext(0x98, 0x02, 0x20)
    model ICSCALIBNEXTIOABW is Memory<UCH>;
//    @ext(0x28, 0x12, 0x20)
//    model ICSCALIBNEXTIOABW is Memory<UIN>;

    // Alias of ICSCALIBNEXTIOABW
    // /** Konstanten 0x0020 IEM_NG_BR_MIN */
    // @ext(0x98, 0x02, 0x20)
    // model IEM_NG_BR_MIN is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model IEM_NG_BR_MIN is Memory<UIN>;

    // Alias of ICSCALIBNEXTIOABW
    // /** Konstanten 0x0020 LCZ_W */
    // @ext(0x98, 0x02, 0x20)
    // model LCZ_W is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model LCZ_W is Memory<UIN>;

    // Alias of ICSCALIBNEXTIOABW
    // /** Konstanten 0x0020 SEG_E */
    // @ext(0x98, 0x02, 0x20)
    // model SEG_E is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model SEG_E is Memory<UIN>;

    // Alias of ICSCALIBNEXTIOABW
    // /** Konstanten 0x0020 VALUE_ON */
    // @ext(0x98, 0x02, 0x20)
    // model VALUE_ON is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model VALUE_ON is Memory<UIN>;

    /** Konstanten 0x0021 FC_TWWIST */
    @ext(0x99, 0x02, 0x21)
    model FC_TWWIST is Memory<UCH>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0021 GENPOLY8SIG */
    // @ext(0x99, 0x02, 0x21)
    // model GENPOLY8SIG is Memory<UCH>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0021 L_S5_DAT_CRC */
    // @ext(0x99, 0x02, 0x21)
    // model L_S5_DAT_CRC is Memory<UCH>;

    /** Konstanten 0x0022 FC_TAUSSEN */
    @ext(0x9a, 0x02, 0x22)
    model FC_TAUSSEN is Memory<UCH>;
//    @ext(0x2a, 0x12, 0x22)
//    model FC_TAUSSEN is Memory<UIN>;

    /** Konstanten 0x0024 LCZBLANK */
    @ext(0x9c, 0x02, 0x24)
    model LCZBLANK is Memory<UCH>;
//    @ext(0x2c, 0x12, 0x24)
//    model LCZBLANK is Memory<UIN>;

    /** Konstanten 0x0025 LCZGRAD */
    @ext(0x9d, 0x02, 0x25)
    model LCZGRAD is Memory<UCH>;

    // Alias of LCZGRAD
    // /** Konstanten 0x0025 MAXIONREGCNT */
    // @ext(0x9d, 0x02, 0x25)
    // model MAXIONREGCNT is Memory<UCH>;

    /** Konstanten 0x0026 LCZMINUS */
    @ext(0x9e, 0x02, 0x26)
    model LCZMINUS is Memory<UCH>;
//    @ext(0x2e, 0x12, 0x26)
//    model LCZMINUS is Memory<UIN>;

    // Alias of LCZMINUS
    // /** Konstanten 0x0026 RX_BUF_LEN */
    // @ext(0x9e, 0x02, 0x26)
    // model RX_BUF_LEN is Memory<UCH>;
//    // @ext(0x2e, 0x12, 0x26)
//    // model RX_BUF_LEN is Memory<UIN>;

    /** Konstanten 0x0027 REF_MIN */
    @ext(0x9f, 0x02, 0x27)
    model REF_MIN is Memory<UCH>;

    /** Konstanten 0x0028 DL_BOOSTERPLUS */
    @ext(0x90, 0x02, 0x28)
    model DL_BOOSTERPLUS is Memory<UCH>;
//    @ext(0x20, 0x12, 0x28)
//    model DL_BOOSTERPLUS is Memory<UIN>;

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
//    @ext(0x22, 0x12, 0x2A)
//    model FC_PWMPUMPE is Memory<UIN>;

    /** Konstanten 0x002B FC_N_NOK_ZUE_N */
    @ext(0x93, 0x02, 0x2B)
    model FC_N_NOK_ZUE_N is Memory<UCH>;

    /** Konstanten 0x002C FC_N_NOK_RUHE */
    @ext(0x94, 0x02, 0x2C)
    model FC_N_NOK_RUHE is Memory<UCH>;
//    @ext(0x24, 0x12, 0x2C)
//    model FC_N_NOK_RUHE is Memory<UIN>;

    /** Konstanten 0x002D L_KES_DAT_CRC */
    @ext(0x95, 0x02, 0x2D)
    model L_KES_DAT_CRC is Memory<UCH>;

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

    /** Konstanten 0x0030 QQ_M3 */
    @ext(0x88, 0x02, 0x30)
    model QQ_M3 is Memory<UCH>;
//    @ext(0x38, 0x12, 0x30)
//    model QQ_M3 is Memory<UIN>;

    /** Konstanten 0x0032 RES_MAX_TIME */
    @ext(0x8a, 0x02, 0x32)
    model RES_MAX_TIME is Memory<UCH>;
//    @ext(0x3a, 0x12, 0x32)
//    model RES_MAX_TIME is Memory<UIN>;

    /** Konstanten 0x0035 FC_AIN_REF_OK */
    @ext(0x8d, 0x02, 0x35)
    model FC_AIN_REF_OK is Memory<UCH>;

    /** Konstanten 0x0036 FC_SYSFEHLER */
    @ext(0x8e, 0x02, 0x36)
    model FC_SYSFEHLER is Memory<UCH>;
//    @ext(0x3e, 0x12, 0x36)
//    model FC_SYSFEHLER is Memory<UIN>;

    /** Konstanten 0x0037 FC_IONNETZ_OK */
    @ext(0x8f, 0x02, 0x37)
    model FC_IONNETZ_OK is Memory<UCH>;

    // Alias of FC_IONNETZ_OK
    // /** Konstanten 0x0037 QQ_M18 */
    // @ext(0x8f, 0x02, 0x37)
    // model QQ_M18 is Memory<UCH>;

    /** Konstanten 0x0038 FC_IEM_MC_A_B_ABW */
    @ext(0x80, 0x02, 0x38)
    model FC_IEM_MC_A_B_ABW is Memory<UCH>;
//    @ext(0x30, 0x12, 0x38)
//    model FC_IEM_MC_A_B_ABW is Memory<UIN>;

    /** Konstanten 0x003C FCODE_NOT */
    @ext(0x84, 0x02, 0x3C)
    model FCODE_NOT is Memory<UCH>;
//    @ext(0x34, 0x12, 0x3C)
//    model FCODE_NOT is Memory<UIN>;

    /** Konstanten 0x003D FC_ION_XW_TOL */
    @ext(0x85, 0x02, 0x3D)
    model FC_ION_XW_TOL is Memory<UCH>;

    // Alias of FC_ION_XW_TOL
    // /** Konstanten 0x003D MAX_TAUTOSYN */
    // @ext(0x85, 0x02, 0x3D)
    // model MAX_TAUTOSYN is Memory<UCH>;

    /** Konstanten 0x003E FC_ION_DYGPVTOL */
    @ext(0x86, 0x02, 0x3E)
    model FC_ION_DYGPVTOL is Memory<UCH>;
//    @ext(0x36, 0x12, 0x3E)
//    model FC_ION_DYGPVTOL is Memory<UIN>;

    /** Konstanten 0x003F ASCII_A */
    @ext(0x87, 0x02, 0x3F)
    model ASCII_A is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F FC_CALIBBEDARF */
    // @ext(0x87, 0x02, 0x3F)
    // model FC_CALIBBEDARF is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F PNL_HZ__SELF */
    // @ext(0x87, 0x02, 0x3F)
    // model PNL_HZ__SELF is Memory<UCH>;

    /** Konstanten 0x0040 AIN_ERR_BW2 */
    @ext(0xf8, 0x02, 0x40)
    model AIN_ERR_BW2 is Memory<UCH>;
//    @ext(0x48, 0x12, 0x40)
//    model AIN_ERR_BW2 is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 ESC_ON */
    // @ext(0xf8, 0x02, 0x40)
    // model ESC_ON is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model ESC_ON is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 FC_CALIBABW */
    // @ext(0xf8, 0x02, 0x40)
    // model FC_CALIBABW is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model FC_CALIBABW is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 FC_CALIBWERKSGRENZEN */
    // @ext(0xf8, 0x02, 0x40)
    // model FC_CALIBWERKSGRENZEN is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model FC_CALIBWERKSGRENZEN is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 ICSCALIBNEXTSTART */
    // @ext(0xf8, 0x02, 0x40)
    // model ICSCALIBNEXTSTART is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model ICSCALIBNEXTSTART is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 IEM_DUMMYTEST */
    // @ext(0xf8, 0x02, 0x40)
    // model IEM_DUMMYTEST is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model IEM_DUMMYTEST is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 PNL_HZ__HAUS */
    // @ext(0xf8, 0x02, 0x40)
    // model PNL_HZ__HAUS is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model PNL_HZ__HAUS is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 REMOTE_YGPV_NEW */
    // @ext(0xf8, 0x02, 0x40)
    // model REMOTE_YGPV_NEW is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model REMOTE_YGPV_NEW is Memory<UIN>;

    // Alias of AIN_ERR_BW2
    // /** Konstanten 0x0040 RESET_MASK */
    // @ext(0xf8, 0x02, 0x40)
    // model RESET_MASK is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model RESET_MASK is Memory<UIN>;

    /** Konstanten 0x0041 FC_CALIBIOCHG2BIG */
    @ext(0xf9, 0x02, 0x41)
    model FC_CALIBIOCHG2BIG is Memory<UCH>;

    /** Konstanten 0x0042 FCODE_MAX */
    @ext(0xfa, 0x02, 0x42)
    model FCODE_MAX is Memory<UCH>;
//    @ext(0x4a, 0x12, 0x42)
//    model FCODE_MAX is Memory<UIN>;

    // Alias of FCODE_MAX
    // /** Konstanten 0x0042 FC_CALIBNOTDONE */
    // @ext(0xfa, 0x02, 0x42)
    // model FC_CALIBNOTDONE is Memory<UCH>;
//    // @ext(0x4a, 0x12, 0x42)
//    // model FC_CALIBNOTDONE is Memory<UIN>;

    // Alias of FCODE_MAX
    // /** Konstanten 0x0042 REF_MAX */
    // @ext(0xfa, 0x02, 0x42)
    // model REF_MAX is Memory<UCH>;
//    // @ext(0x4a, 0x12, 0x42)
//    // model REF_MAX is Memory<UIN>;

    /** Konstanten 0x0043 EEAEPKCRC */
    @ext(0xfb, 0x02, 0x43)
    model EEAEPKCRC is Memory<UCH>;

    // Alias of EEAEPKCRC
    // /** Konstanten 0x0043 FC_IONSOLLINVALID */
    // @ext(0xfb, 0x02, 0x43)
    // model FC_IONSOLLINVALID is Memory<UCH>;

    // Alias of EEAEPKCRC
    // /** Konstanten 0x0043 FC_ION_SOLL_EEPROM */
    // @ext(0xfb, 0x02, 0x43)
    // model FC_ION_SOLL_EEPROM is Memory<UCH>;

    /** Konstanten 0x0044 EEAEPMANF */
    @ext(0xfc, 0x02, 0x44)
    model EEAEPMANF is Memory<UCH>;
//    @ext(0x4c, 0x12, 0x44)
//    model EEAEPMANF is Memory<UIN>;

    // Alias of EEAEPMANF
    // /** Konstanten 0x0044 FC_IO_KORR_TEMP */
    // @ext(0xfc, 0x02, 0x44)
    // model FC_IO_KORR_TEMP is Memory<UCH>;
//    // @ext(0x4c, 0x12, 0x44)
//    // model FC_IO_KORR_TEMP is Memory<UIN>;

    /** Konstanten 0x004A EEAEPMCRC */
    @ext(0xf2, 0x02, 0x4A)
    model EEAEPMCRC is Memory<UCH>;
//    @ext(0x42, 0x12, 0x4A)
//    model EEAEPMCRC is Memory<UIN>;

    /** Konstanten 0x004B EEA_KM_OPT */
    @ext(0xf3, 0x02, 0x4B)
    model EEA_KM_OPT is Memory<UCH>;

    /** Konstanten 0x004C EEAIONSOLL */
    @ext(0xf4, 0x02, 0x4C)
    model EEAIONSOLL is Memory<UCH>;
//    @ext(0x44, 0x12, 0x4C)
//    model EEAIONSOLL is Memory<UIN>;

    /** Konstanten 0x004F EEAEPIANF */
    @ext(0xf7, 0x02, 0x4F)
    model EEAEPIANF is Memory<UCH>;

    /** Konstanten 0x0050 DE_MAX_CNT */
    @ext(0xe8, 0x02, 0x50)
    model DE_MAX_CNT is Memory<UCH>;
//    @ext(0x58, 0x12, 0x50)
//    model DE_MAX_CNT is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 EBUS_0307_SOFTWARE */
    // @ext(0xe8, 0x02, 0x50)
    // model EBUS_0307_SOFTWARE is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model EBUS_0307_SOFTWARE is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 K_ID */
    // @ext(0xe8, 0x02, 0x50)
    // model K_ID is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model K_ID is Memory<UIN>;

    /** Konstanten 0x005A EEAEPICRC */
    @ext(0xe2, 0x02, 0x5A)
    model EEAEPICRC is Memory<UCH>;
//    @ext(0x52, 0x12, 0x5A)
//    model EEAEPICRC is Memory<UIN>;

    /** Konstanten 0x005B EEAEPIFANF */
    @ext(0xe3, 0x02, 0x5B)
    model EEAEPIFANF is Memory<UCH>;

    /** Konstanten 0x0060 SOMMERTEMP__TBD */
    @ext(0xd8, 0x02, 0x60)
    model SOMMERTEMP__TBD is Memory<UCH>;
//    @ext(0x68, 0x12, 0x60)
//    model SOMMERTEMP__TBD is Memory<UIN>;

    /** Konstanten 0x0064 CALIB_H_BON */
    @ext(0xdc, 0x02, 0x64)
    model CALIB_H_BON is Memory<UCH>;
//    @ext(0x6c, 0x12, 0x64)
//    model CALIB_H_BON is Memory<UIN>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 MAX_ION_ERR_TIME */
    // @ext(0xdc, 0x02, 0x64)
    // model MAX_ION_ERR_TIME is Memory<UCH>;
//    // @ext(0x6c, 0x12, 0x64)
//    // model MAX_ION_ERR_TIME is Memory<UIN>;

    // Alias of CALIB_H_BON
    // /** Konstanten 0x0064 SCHEDULE_TAKT */
    // @ext(0xdc, 0x02, 0x64)
    // model SCHEDULE_TAKT is Memory<UCH>;
//    // @ext(0x6c, 0x12, 0x64)
//    // model SCHEDULE_TAKT is Memory<UIN>;

    /** Konstanten 0x0066 EEAEPIFCRC */
    @ext(0xde, 0x02, 0x66)
    model EEAEPIFCRC is Memory<UCH>;
//    @ext(0x6e, 0x12, 0x66)
//    model EEAEPIFCRC is Memory<UIN>;

    /** Konstanten 0x0067 EEA_W_CODE */
    @ext(0xdf, 0x02, 0x67)
    model EEA_W_CODE is Memory<UCH>;

    /** Konstanten 0x0068 EEAEPHANF */
    @ext(0xd0, 0x02, 0x68)
    model EEAEPHANF is Memory<UCH>;
//    @ext(0x60, 0x12, 0x68)
//    model EEAEPHANF is Memory<UIN>;

    /** Konstanten 0x0070 QQ_M4 */
    @ext(0xc8, 0x02, 0x70)
    model QQ_M4 is Memory<UCH>;
//    @ext(0x78, 0x12, 0x70)
//    model QQ_M4 is Memory<UIN>;

    /** Konstanten 0x0077 QQ_M19 */
    @ext(0xcf, 0x02, 0x77)
    model QQ_M19 is Memory<UCH>;

    /** Konstanten 0x007C ADX_TEST */
    @ext(0xc4, 0x02, 0x7C)
    model ADX_TEST is Memory<UCH>;
//    @ext(0x74, 0x12, 0x7C)
//    model ADX_TEST is Memory<UIN>;

    /** Konstanten 0x007F DL_COMF_HYS__SELF */
    @ext(0xc7, 0x02, 0x7F)
    model DL_COMF_HYS__SELF is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F MAX_ION_SOLL_AKT */
    // @ext(0xc7, 0x02, 0x7F)
    // model MAX_ION_SOLL_AKT is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F ROM_PAGES */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGES is Memory<UCH>;

    // Alias of DL_COMF_HYS__SELF
    // /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0080 DL_COMF_HYS__BOOSTER */
    @ext(0x38, 0x02, 0x80)
    model DL_COMF_HYS__BOOSTER is Memory<UCH>;
//    @ext(0x88, 0x12, 0x80)
//    model DL_COMF_HYS__BOOSTER is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 IEM_TIMEOUT */
    // @ext(0x38, 0x02, 0x80)
    // model IEM_TIMEOUT is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model IEM_TIMEOUT is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 PNL_HZ__PDL */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__PDL is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 PWM_TEILER */
    // @ext(0x38, 0x02, 0x80)
    // model PWM_TEILER is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PWM_TEILER is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 REMOTE_YGPV_ON */
    // @ext(0x38, 0x02, 0x80)
    // model REMOTE_YGPV_ON is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model REMOTE_YGPV_ON is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 SEG_D */
    // @ext(0x38, 0x02, 0x80)
    // model SEG_D is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model SEG_D is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 SOMMERTEMP__BIT */
    // @ext(0x38, 0x02, 0x80)
    // model SOMMERTEMP__BIT is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model SOMMERTEMP__BIT is Memory<UIN>;

    // Alias of DL_COMF_HYS__BOOSTER
    // /** Konstanten 0x0080 TBRMINOFF__ERDGAS */
    // @ext(0x38, 0x02, 0x80)
    // model TBRMINOFF__ERDGAS is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model TBRMINOFF__ERDGAS is Memory<UIN>;

    /** Konstanten 0x009B ASCII_S */
    @ext(0x23, 0x02, 0x9B)
    model ASCII_S is Memory<UCH>;

    /** Konstanten 0x00A0 ENAB_MASK */
    @ext(0x18, 0x02, 0xA0)
    model ENAB_MASK is Memory<UCH>;
//    @ext(0xa8, 0x12, 0xA0)
//    model ENAB_MASK is Memory<UIN>;

    // Alias of ENAB_MASK
    // /** Konstanten 0x00A0 ENAB_MASK_WD */
    // @ext(0x18, 0x02, 0xA0)
    // model ENAB_MASK_WD is Memory<UCH>;
//    // @ext(0xa8, 0x12, 0xA0)
//    // model ENAB_MASK_WD is Memory<UIN>;

    /** Konstanten 0x00A1 ASCII_L */
    @ext(0x19, 0x02, 0xA1)
    model ASCII_L is Memory<UCH>;

    /** Konstanten 0x00A3 ASCII_C */
    @ext(0x1b, 0x02, 0xA3)
    model ASCII_C is Memory<UCH>;

    // Alias of ASCII_C
    // /** Konstanten 0x00A3 EEAEPHEND */
    // @ext(0x1b, 0x02, 0xA3)
    // model EEAEPHEND is Memory<UCH>;

    /** Konstanten 0x00A4 EEAEPHWRPNT */
    @ext(0x1c, 0x02, 0xA4)
    model EEAEPHWRPNT is Memory<UCH>;
//    @ext(0xac, 0x12, 0xA4)
//    model EEAEPHWRPNT is Memory<UIN>;

    /** Konstanten 0x00A8 EEA_WRONG_ADR */
    @ext(0x10, 0x02, 0xA8)
    model EEA_WRONG_ADR is Memory<UCH>;
//    @ext(0xa0, 0x12, 0xA8)
//    model EEA_WRONG_ADR is Memory<UIN>;

    // Alias of EEA_WRONG_ADR
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory<UCH>;
//    // @ext(0xa0, 0x12, 0xA8)
//    // model NCL1HRS is Memory<UIN>;

    /** Konstanten 0x00AA EEA_FCODE_NOT */
    @ext(0x12, 0x02, 0xAA)
    model EEA_FCODE_NOT is Memory<UCH>;
//    @ext(0xa2, 0x12, 0xAA)
//    model EEA_FCODE_NOT is Memory<UIN>;

    /** Konstanten 0x00AB ASCII_E */
    @ext(0x13, 0x02, 0xAB)
    model ASCII_E is Memory<UCH>;

    /** Konstanten 0x00AC EEA_FC_66 */
    @ext(0x14, 0x02, 0xAC)
    model EEA_FC_66 is Memory<UCH>;
//    @ext(0xa4, 0x12, 0xAC)
//    model EEA_FC_66 is Memory<UIN>;

    /** Konstanten 0x00AE CS_BYTE_WR */
    @ext(0x16, 0x02, 0xAE)
    model CS_BYTE_WR is Memory<UCH>;
//    @ext(0xa6, 0x12, 0xAE)
//    model CS_BYTE_WR is Memory<UIN>;

    // Alias of CS_BYTE_WR
    // /** Konstanten 0x00AE EEA_FC_65 */
    // @ext(0x16, 0x02, 0xAE)
    // model EEA_FC_65 is Memory<UCH>;
//    // @ext(0xa6, 0x12, 0xAE)
//    // model EEA_FC_65 is Memory<UIN>;

    /** Konstanten 0x00AF CS_BYTE_RD */
    @ext(0x17, 0x02, 0xAF)
    model CS_BYTE_RD is Memory<UCH>;

    /** Konstanten 0x00B0 EEA_FC_64 */
    @ext(0x08, 0x02, 0xB0)
    model EEA_FC_64 is Memory<UCH>;
//    @ext(0xb8, 0x12, 0xB0)
//    model EEA_FC_64 is Memory<UIN>;

    /** Konstanten 0x00B2 EEA_FC_63 */
    @ext(0x0a, 0x02, 0xB2)
    model EEA_FC_63 is Memory<UCH>;
//    @ext(0xba, 0x12, 0xB2)
//    model EEA_FC_63 is Memory<UIN>;

    /** Konstanten 0x00B4 EEA_FC_62 */
    @ext(0x0c, 0x02, 0xB4)
    model EEA_FC_62 is Memory<UCH>;
//    @ext(0xbc, 0x12, 0xB4)
//    model EEA_FC_62 is Memory<UIN>;

    // Alias of EEA_FC_62
    // /** Konstanten 0x00B4 NCL20SEC */
    // @ext(0x0c, 0x02, 0xB4)
    // model NCL20SEC is Memory<UCH>;
//    // @ext(0xbc, 0x12, 0xB4)
//    // model NCL20SEC is Memory<UIN>;

    /** Konstanten 0x00B6 EEA_FC_61 */
    @ext(0x0e, 0x02, 0xB6)
    model EEA_FC_61 is Memory<UCH>;
//    @ext(0xbe, 0x12, 0xB6)
//    model EEA_FC_61 is Memory<UIN>;

    /** Konstanten 0x00B8 EEA_FC_53 */
    @ext(0x00, 0x02, 0xB8)
    model EEA_FC_53 is Memory<UCH>;
//    @ext(0xb0, 0x12, 0xB8)
//    model EEA_FC_53 is Memory<UIN>;

    /** Konstanten 0x00BA EEA_FC_52 */
    @ext(0x02, 0x02, 0xBA)
    model EEA_FC_52 is Memory<UCH>;
//    @ext(0xb2, 0x12, 0xBA)
//    model EEA_FC_52 is Memory<UIN>;

    /** Konstanten 0x00BC EEA_FC_51 */
    @ext(0x04, 0x02, 0xBC)
    model EEA_FC_51 is Memory<UCH>;
//    @ext(0xb4, 0x12, 0xBC)
//    model EEA_FC_51 is Memory<UIN>;

    /** Konstanten 0x00BE EEA_FC_44 */
    @ext(0x06, 0x02, 0xBE)
    model EEA_FC_44 is Memory<UCH>;
//    @ext(0xb6, 0x12, 0xBE)
//    model EEA_FC_44 is Memory<UIN>;

    /** Konstanten 0x00C0 EEA_FC_43 */
    @ext(0x78, 0x02, 0xC0)
    model EEA_FC_43 is Memory<UCH>;
//    @ext(0xc8, 0x12, 0xC0)
//    model EEA_FC_43 is Memory<UIN>;

    /** Konstanten 0x00C2 EEA_FC_42 */
    @ext(0x7a, 0x02, 0xC2)
    model EEA_FC_42 is Memory<UCH>;
//    @ext(0xca, 0x12, 0xC2)
//    model EEA_FC_42 is Memory<UIN>;

    /** Konstanten 0x00C4 EEA_FC_41 */
    @ext(0x7c, 0x02, 0xC4)
    model EEA_FC_41 is Memory<UCH>;
//    @ext(0xcc, 0x12, 0xC4)
//    model EEA_FC_41 is Memory<UIN>;

    /** Konstanten 0x00C6 EEA_FC_34 */
    @ext(0x7e, 0x02, 0xC6)
    model EEA_FC_34 is Memory<UCH>;
//    @ext(0xce, 0x12, 0xC6)
//    model EEA_FC_34 is Memory<UIN>;

    // Alias of EEA_FC_34
    // /** Konstanten 0x00C6 NIT_MAX */
    // @ext(0x7e, 0x02, 0xC6)
    // model NIT_MAX is Memory<UCH>;
//    // @ext(0xce, 0x12, 0xC6)
//    // model NIT_MAX is Memory<UIN>;

    /** Konstanten 0x00C7 NIT_BREAK */
    @ext(0x7f, 0x02, 0xC7)
    model NIT_BREAK is Memory<UCH>;

    /** Konstanten 0x00C8 EEA_FC_33 */
    @ext(0x70, 0x02, 0xC8)
    model EEA_FC_33 is Memory<UCH>;
//    @ext(0xc0, 0x12, 0xC8)
//    model EEA_FC_33 is Memory<UIN>;

    // Alias of EEA_FC_33
    // /** Konstanten 0x00C8 NCL100MSEC */
    // @ext(0x70, 0x02, 0xC8)
    // model NCL100MSEC is Memory<UCH>;
//    // @ext(0xc0, 0x12, 0xC8)
//    // model NCL100MSEC is Memory<UIN>;

    /** Konstanten 0x00CA EEA_FC_32 */
    @ext(0x72, 0x02, 0xCA)
    model EEA_FC_32 is Memory<UCH>;
//    @ext(0xc2, 0x12, 0xCA)
//    model EEA_FC_32 is Memory<UIN>;

    /** Konstanten 0x00CC EEA_FC_31 */
    @ext(0x74, 0x02, 0xCC)
    model EEA_FC_31 is Memory<UCH>;
//    @ext(0xc4, 0x12, 0xCC)
//    model EEA_FC_31 is Memory<UIN>;

    /** Konstanten 0x00CE EEA_FC_23 */
    @ext(0x76, 0x02, 0xCE)
    model EEA_FC_23 is Memory<UCH>;
//    @ext(0xc6, 0x12, 0xCE)
//    model EEA_FC_23 is Memory<UIN>;

    /** Konstanten 0x00D0 EEA_FC_22 */
    @ext(0x68, 0x02, 0xD0)
    model EEA_FC_22 is Memory<UCH>;
//    @ext(0xd8, 0x12, 0xD0)
//    model EEA_FC_22 is Memory<UIN>;

    /** Konstanten 0x00D2 EEA_FC_21 */
    @ext(0x6a, 0x02, 0xD2)
    model EEA_FC_21 is Memory<UCH>;
//    @ext(0xda, 0x12, 0xD2)
//    model EEA_FC_21 is Memory<UIN>;

    /** Konstanten 0x00D4 EEA_FC_16 */
    @ext(0x6c, 0x02, 0xD4)
    model EEA_FC_16 is Memory<UCH>;
//    @ext(0xdc, 0x12, 0xD4)
//    model EEA_FC_16 is Memory<UIN>;

    /** Konstanten 0x00D5 AD8_OF_25GRDC */
    @ext(0x6d, 0x02, 0xD5)
    model AD8_OF_25GRDC is Memory<UCH>;

    /** Konstanten 0x00D6 EEA_FC_15 */
    @ext(0x6e, 0x02, 0xD6)
    model EEA_FC_15 is Memory<UCH>;
//    @ext(0xde, 0x12, 0xD6)
//    model EEA_FC_15 is Memory<UIN>;

    /** Konstanten 0x00D8 EEA_FC_14 */
    @ext(0x60, 0x02, 0xD8)
    model EEA_FC_14 is Memory<UCH>;
//    @ext(0xd0, 0x12, 0xD8)
//    model EEA_FC_14 is Memory<UIN>;

    /** Konstanten 0x00DA EEA_FC_13 */
    @ext(0x62, 0x02, 0xDA)
    model EEA_FC_13 is Memory<UCH>;
//    @ext(0xd2, 0x12, 0xDA)
//    model EEA_FC_13 is Memory<UIN>;

    /** Konstanten 0x00DC EEA_FC_12 */
    @ext(0x64, 0x02, 0xDC)
    model EEA_FC_12 is Memory<UCH>;
//    @ext(0xd4, 0x12, 0xDC)
//    model EEA_FC_12 is Memory<UIN>;

    /** Konstanten 0x00DE EEA_FC_11 */
    @ext(0x66, 0x02, 0xDE)
    model EEA_FC_11 is Memory<UCH>;
//    @ext(0xd6, 0x12, 0xDE)
//    model EEA_FC_11 is Memory<UIN>;

    /** Konstanten 0x00E0 EEA_HBRONTAG */
    @ext(0x58, 0x02, 0xE0)
    model EEA_HBRONTAG is Memory<UCH>;
//    @ext(0xe8, 0x12, 0xE0)
//    model EEA_HBRONTAG is Memory<UIN>;

    /** Konstanten 0x00E1 EEA_NZUENDTAG */
    @ext(0x59, 0x02, 0xE1)
    model EEA_NZUENDTAG is Memory<UCH>;

    /** Konstanten 0x00E2 EEA_N_PON */
    @ext(0x5a, 0x02, 0xE2)
    model EEA_N_PON is Memory<UCH>;
//    @ext(0xea, 0x12, 0xE2)
//    model EEA_N_PON is Memory<UIN>;

    /** Konstanten 0x00E5 EEA_N_KON */
    @ext(0x5d, 0x02, 0xE5)
    model EEA_N_KON is Memory<UCH>;

    /** Konstanten 0x00E8 EEA_RES_CNT */
    @ext(0x50, 0x02, 0xE8)
    model EEA_RES_CNT is Memory<UCH>;
//    @ext(0xe0, 0x12, 0xE8)
//    model EEA_RES_CNT is Memory<UIN>;

    // Alias of EEA_RES_CNT
    // /** Konstanten 0x00E8 KEY_PORT */
    // @ext(0x50, 0x02, 0xE8)
    // model KEY_PORT is Memory<UCH>;
//    // @ext(0xe0, 0x12, 0xE8)
//    // model KEY_PORT is Memory<UIN>;

    /** Konstanten 0x00EB EEA_SHUT_OFF */
    @ext(0x53, 0x02, 0xEB)
    model EEA_SHUT_OFF is Memory<UCH>;

    // Alias of EEA_SHUT_OFF
    // /** Konstanten 0x00EB QAC_MAX */
    // @ext(0x53, 0x02, 0xEB)
    // model QAC_MAX is Memory<UCH>;

    /** Konstanten 0x00EE EEA_H_PON */
    @ext(0x56, 0x02, 0xEE)
    model EEA_H_PON is Memory<UCH>;
//    @ext(0xe6, 0x12, 0xEE)
//    model EEA_H_PON is Memory<UIN>;

    /** Konstanten 0x00EF ICSCLRSTATISTIKMASK */
    @ext(0x57, 0x02, 0xEF)
    model ICSCLRSTATISTIKMASK is Memory<UCH>;

    /** Konstanten 0x00F0 EPGPVSTART__KICK */
    @ext(0x48, 0x02, 0xF0)
    model EPGPVSTART__KICK is Memory<UCH>;
//    @ext(0xf8, 0x12, 0xF0)
//    model EPGPVSTART__KICK is Memory<UIN>;

    // Alias of EPGPVSTART__KICK
    // /** Konstanten 0x00F0 ISP_NG_STEP__KICK */
    // @ext(0x48, 0x02, 0xF0)
    // model ISP_NG_STEP__KICK is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model ISP_NG_STEP__KICK is Memory<UIN>;

    // Alias of EPGPVSTART__KICK
    // /** Konstanten 0x00F0 KESS_OPT__VM */
    // @ext(0x48, 0x02, 0xF0)
    // model KESS_OPT__VM is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model KESS_OPT__VM is Memory<UIN>;

    // Alias of EPGPVSTART__KICK
    // /** Konstanten 0x00F0 QQ_M5 */
    // @ext(0x48, 0x02, 0xF0)
    // model QQ_M5 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model QQ_M5 is Memory<UIN>;

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
//    @ext(0xfe, 0x12, 0xF6)
//    model EEA_BAUSTAND is Memory<UIN>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x00F6 EEA_PRUEF_LOW */
    // @ext(0x4e, 0x02, 0xF6)
    // model EEA_PRUEF_LOW is Memory<UCH>;
//    // @ext(0xfe, 0x12, 0xF6)
//    // model EEA_PRUEF_LOW is Memory<UIN>;

    // Alias of EEA_BAUSTAND
    // /** Konstanten 0x00F6 ZZ_SADR_M10 */
    // @ext(0x4e, 0x02, 0xF6)
    // model ZZ_SADR_M10 is Memory<UCH>;
//    // @ext(0xfe, 0x12, 0xF6)
//    // model ZZ_SADR_M10 is Memory<UIN>;

    /** Konstanten 0x00F7 QQ_M20 */
    @ext(0x4f, 0x02, 0xF7)
    model QQ_M20 is Memory<UCH>;

    /** Konstanten 0x00F8 EEA_KUNDE */
    @ext(0x40, 0x02, 0xF8)
    model EEA_KUNDE is Memory<UCH>;
//    @ext(0xf0, 0x12, 0xF8)
//    model EEA_KUNDE is Memory<UIN>;

    // Alias of EEA_KUNDE
    // /** Konstanten 0x00F8 EP15RTHZEIT__SELF */
    // @ext(0x40, 0x02, 0xF8)
    // model EP15RTHZEIT__SELF is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model EP15RTHZEIT__SELF is Memory<UIN>;

    // Alias of EEA_KUNDE
    // /** Konstanten 0x00F8 NTC_MAX */
    // @ext(0x40, 0x02, 0xF8)
    // model NTC_MAX is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model NTC_MAX is Memory<UIN>;

    // Alias of EEA_KUNDE
    // /** Konstanten 0x00F8 TFRS_ANLAGE__SELF */
    // @ext(0x40, 0x02, 0xF8)
    // model TFRS_ANLAGE__SELF is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model TFRS_ANLAGE__SELF is Memory<UIN>;

    /** Konstanten 0x00F9 EEA_VARIANTE */
    @ext(0x41, 0x02, 0xF9)
    model EEA_VARIANTE is Memory<UCH>;

    /** Konstanten 0x00FA MX_RES_CYCL */
    @ext(0x42, 0x02, 0xFA)
    model MX_RES_CYCL is Memory<UCH>;
//    @ext(0xf2, 0x12, 0xFA)
//    model MX_RES_CYCL is Memory<UIN>;

    /** Konstanten 0x00FB EEA_SERIAL_NO */
    @ext(0x43, 0x02, 0xFB)
    model EEA_SERIAL_NO is Memory<UCH>;

    /** Konstanten 0x00FC DI_CRC_ART */
    @ext(0x44, 0x02, 0xFC)
    model DI_CRC_ART is Memory<UCH>;
//    @ext(0xf4, 0x12, 0xFC)
//    model DI_CRC_ART is Memory<UIN>;

    // Alias of DI_CRC_ART
    // /** Konstanten 0x00FC DL_KTND__D */
    // @ext(0x44, 0x02, 0xFC)
    // model DL_KTND__D is Memory<UCH>;
//    // @ext(0xf4, 0x12, 0xFC)
//    // model DL_KTND__D is Memory<UIN>;

    // Alias of DI_CRC_ART
    // /** Konstanten 0x00FC HZ_KTND__D */
    // @ext(0x44, 0x02, 0xFC)
    // model HZ_KTND__D is Memory<UCH>;
//    // @ext(0xf4, 0x12, 0xFC)
//    // model HZ_KTND__D is Memory<UIN>;

    /** Konstanten 0x00FE EEA_PRUEF_CRC */
    @ext(0x46, 0x02, 0xFE)
    model EEA_PRUEF_CRC is Memory<UCH>;
//    @ext(0xf6, 0x12, 0xFE)
//    model EEA_PRUEF_CRC is Memory<UIN>;

    // Alias of EEA_PRUEF_CRC
    // /** Konstanten 0x00FE STACKTESTABADR */
    // @ext(0x46, 0x02, 0xFE)
    // model STACKTESTABADR is Memory<UCH>;
//    // @ext(0xf6, 0x12, 0xFE)
//    // model STACKTESTABADR is Memory<UIN>;

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
    // /** Konstanten 0x00FF XRAM_PAGE_DEFAULT */
    // @ext(0x47, 0x02, 0xFF)
    // model XRAM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0100 EBUS_0307_HARDWARE */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model EBUS_0307_HARDWARE is Memory<UCH>;
//    @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    model EBUS_0307_HARDWARE is Memory<UIN>;

    // Alias of EBUS_0307_HARDWARE
    // /** Konstanten 0x0100 EEAIOCALIBPNT */
    // @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    // model EEAIOCALIBPNT is Memory<UCH>;
//    // @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    // model EEAIOCALIBPNT is Memory<UIN>;

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

}
