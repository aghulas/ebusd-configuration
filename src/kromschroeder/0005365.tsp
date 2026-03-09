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

    // Alias of IDLE_R1
    // /** RAM 0x0001 qkW_soll */
    // @ext(0x5d, 0x01, 0x01)
    // model qkW_soll is Memory<UCH>;

    /** RAM 0x0002 IDLE_R2 */
    @ext(0x5e, 0x01, 0x02)
    model IDLE_R2 is Memory<UCH>;
//    @ext(0xee, 0x11, 0x02)
//    model IDLE_R2 is Memory<UIN>;

    /** RAM 0x0003 IDLE_R3 */
    @ext(0x5f, 0x01, 0x03)
    model IDLE_R3 is Memory<UCH>;

    // Alias of IDLE_R3
    // /** RAM 0x0003 MaxTemp */
    // @ext(0x5f, 0x01, 0x03)
    // model MaxTemp is Memory<UCH>;

    /** RAM 0x0004 IDLE_R4 */
    @ext(0x58, 0x01, 0x04)
    model IDLE_R4 is Memory<UCH>;
//    @ext(0xe8, 0x11, 0x04)
//    model IDLE_R4 is Memory<UIN>;

    /** RAM 0x0005 IDLE_R5 */
    @ext(0x59, 0x01, 0x05)
    model IDLE_R5 is Memory<UCH>;

    // Alias of IDLE_R5
    // /** RAM 0x0005 MinTemp */
    // @ext(0x59, 0x01, 0x05)
    // model MinTemp is Memory<UCH>;

    /** RAM 0x0006 IDLE_R6 */
    @ext(0x5a, 0x01, 0x06)
    model IDLE_R6 is Memory<UCH>;
//    @ext(0xea, 0x11, 0x06)
//    model IDLE_R6 is Memory<UIN>;

    /** RAM 0x0007 Bezeichnung_INr */
    @ext(0x5b, 0x01, 0x07)
    model Bezeichnung_INr is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 IDLE_R7 */
    // @ext(0x5b, 0x01, 0x07)
    // model IDLE_R7 is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 IstTemp */
    // @ext(0x5b, 0x01, 0x07)
    // model IstTemp is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 aVal */
    // @ext(0x5b, 0x01, 0x07)
    // model aVal is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 cnt_lo_val */
    // @ext(0x5b, 0x01, 0x07)
    // model cnt_lo_val is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 error */
    // @ext(0x5b, 0x01, 0x07)
    // model error is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 nG_chk */
    // @ext(0x5b, 0x01, 0x07)
    // model nG_chk is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 nGgrad */
    // @ext(0x5b, 0x01, 0x07)
    // model nGgrad is Memory<UCH>;

    // Alias of Bezeichnung_INr
    // /** RAM 0x0007 new_val */
    // @ext(0x5b, 0x01, 0x07)
    // model new_val is Memory<UCH>;

    /** RAM 0x0008 USER_R0 */
    @ext(0x54, 0x01, 0x08)
    model USER_R0 is Memory<UCH>;
//    @ext(0xe4, 0x11, 0x08)
//    model USER_R0 is Memory<UIN>;

    /** RAM 0x0009 USER_R1 */
    @ext(0x55, 0x01, 0x09)
    model USER_R1 is Memory<UCH>;

    /** RAM 0x000A USER_R2 */
    @ext(0x56, 0x01, 0x0A)
    model USER_R2 is Memory<UCH>;
//    @ext(0xe6, 0x11, 0x0A)
//    model USER_R2 is Memory<UIN>;

    /** RAM 0x000B USER_R3 */
    @ext(0x57, 0x01, 0x0B)
    model USER_R3 is Memory<UCH>;

    /** RAM 0x000C USER_R4 */
    @ext(0x50, 0x01, 0x0C)
    model USER_R4 is Memory<UCH>;
//    @ext(0xe0, 0x11, 0x0C)
//    model USER_R4 is Memory<UIN>;

    /** RAM 0x000D USER_R5 */
    @ext(0x51, 0x01, 0x0D)
    model USER_R5 is Memory<UCH>;

    /** RAM 0x000E USER_R6 */
    @ext(0x52, 0x01, 0x0E)
    model USER_R6 is Memory<UCH>;
//    @ext(0xe2, 0x11, 0x0E)
//    model USER_R6 is Memory<UIN>;

    /** RAM 0x000F USER_R7 */
    @ext(0x53, 0x01, 0x0F)
    model USER_R7 is Memory<UCH>;

    /** RAM 0x0010 RB2_R0 */
    @ext(0x4c, 0x01, 0x10)
    model RB2_R0 is Memory<UCH>;
//    @ext(0xfc, 0x11, 0x10)
//    model RB2_R0 is Memory<UIN>;

    /** RAM 0x0011 RB2_R1 */
    @ext(0x4d, 0x01, 0x11)
    model RB2_R1 is Memory<UCH>;

    /** RAM 0x0012 RB2_R2 */
    @ext(0x4e, 0x01, 0x12)
    model RB2_R2 is Memory<UCH>;
//    @ext(0xfe, 0x11, 0x12)
//    model RB2_R2 is Memory<UIN>;

    /** RAM 0x0013 RB2_R3 */
    @ext(0x4f, 0x01, 0x13)
    model RB2_R3 is Memory<UCH>;

    /** RAM 0x0014 RB2_R4 */
    @ext(0x48, 0x01, 0x14)
    model RB2_R4 is Memory<UCH>;
//    @ext(0xf8, 0x11, 0x14)
//    model RB2_R4 is Memory<UIN>;

    /** RAM 0x0015 RB2_R5 */
    @ext(0x49, 0x01, 0x15)
    model RB2_R5 is Memory<UCH>;

    /** RAM 0x0016 RB2_R6 */
    @ext(0x4a, 0x01, 0x16)
    model RB2_R6 is Memory<UCH>;
//    @ext(0xfa, 0x11, 0x16)
//    model RB2_R6 is Memory<UIN>;

    /** RAM 0x0017 RB2_R7 */
    @ext(0x4b, 0x01, 0x17)
    model RB2_R7 is Memory<UCH>;

    /** RAM 0x0018 RB3_R0 */
    @ext(0x44, 0x01, 0x18)
    model RB3_R0 is Memory<UCH>;
//    @ext(0xf4, 0x11, 0x18)
//    model RB3_R0 is Memory<UIN>;

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
        ABGKL_OK: BI0
    }

    @ext(0x7d, 0x01, 0x21)
    /** RAM 0x0021 D21 */
    @inherit(memr, memw)
    model D21 {
        WW_BRON: BI7,
        RC_ON: BI6,
        NG_N_LEV: BI5,
        RTH: BI4,
        TKKB: BI3,
        WI_SO: BI2,
        WW_BETR: BI1,
        HZ_BRON: BI0
    }

    @ext(0x7e, 0x01, 0x22)
    /** RAM 0x0022 D22 */
    @inherit(memr, memw)
    model D22 {
        ThFrS_WW: BI7,
        ThFrS_HZ: BI6,
        FrS_Anlage: BI5,
        AufHZ_dfluss: BI4,
        HZ_Betr: BI3,
        PuFrSanf: BI2,
        M_EE_FLAG: BI1,
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
        RX_XRAM_BUSY: BI7,
        DOP_SOLL_BUSY: BI6,
        DOP_DELAY: BI5,
        AD_BUSY: BI4,
        DOP_M_1LITER: BI3,
        DOP_DIS_OK: BI2,
        DOP_M_AD_2: BI1,
        DOP_M_AD_1: BI0
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
    /** RAM 0x0027 D27 */
    @inherit(memr, memw)
    model D27 {
        BXCHG_IDLE: BI7,
        BrOn: BI6,
        inc_tFreLi: BI5,
        BLINKTOGGLE: BI4,
        IG_M_BADCNT: BI3,
        BTSTEEPLOCKOUT: BI2,
        QQ_FLAG: BI1,
        TX_RETRY_FLAG: BI0
    }

    @ext(0x74, 0x01, 0x28)
    /** RAM 0x0028 SAMMELBITS */
    @inherit(memr, memw)
    model SAMMELBITS {
        M_SAVEVPASTART: BI7,
        M_INCFLAUSFALL: BI6,
        DOP_SEC_HUB: BI5,
        M_ZUENDON: BI4,
        TST_ADKANAL: BI3,
        IBN_NEXT: BI2,
        IBN_AKTIV: BI1,
        OFP_OK: BI0
    }

    @ext(0x75, 0x01, 0x29)
    /** RAM 0x0029 EB_0000 */
    @inherit(memr, memw)
    model EB_0000 {
        REF_OK: BI7,
        DOP_OK: BI6,
        ELHZ_OK: BI5,
        WDW: BI4,
        OFP: BI3,
        H2IN: BI2,
        H1IN: BI1
    }

    @ext(0x76, 0x01, 0x2A)
    /** RAM 0x002A EB_0001 */
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

    @ext(0x77, 0x01, 0x2B)
    /** RAM 0x002B EB_0002 */
    @inherit(memr, memw)
    model EB_0002 {
        FLAUSFALL: BI7,
        FRELI: BI7,
        TVK_WARM: BI6,
        IZUEND_OK: BI5,
        TZL_OK: BI4,
        TVK_OK: BI3,
        NG_OK: BI2,
        ATW_OK: BI1,
        STW_OK: BI0
    }

    @ext(0x70, 0x01, 0x2C)
    /** RAM 0x002C AB_0000 */
    @inherit(memr, memw)
    model AB_0000 {
        PUWW: BI7,
        PUHZ: BI6,
        UDOP_ON: BI5,
        ZUEND_ON: BI4,
        MFA: BI2,
        COMREL_ON: BI1,
        OFP_ON: BI0
    }

    @ext(0x71, 0x01, 0x2D)
    /** RAM 0x002D MB_0001 */
    @inherit(memr, memw)
    model MB_0001 {
        LO_TVKOVERTEMP: BI5,
        LO_CNTTWERR: BI4,
        LO_FLAUS: BI3,
        LO_KFLZ: BI2,
        DUMMY: BI1,
        MFE: BI0
    }

    @ext(0x72, 0x01, 0x2E)
    /** RAM 0x002E MB_0002 */
    @inherit(memr, memw)
    model MB_0002 {
        LO_SHUTOFF_INCON: BI7,
        LO_CNTVPAINCON: BI6,
        LO_OLV: BI5,
        LO_AKTOR: BI4,
        LO_SENSOR: BI3,
        LO_ATB: BI2,
        LO_STB: BI1,
        LO_FRELI: BI0
    }

    @ext(0x73, 0x01, 0x2F)
    /** RAM 0x002F MB_0003 */
    @inherit(memr, memw)
    model MB_0003 {
        OPTNOEMERGENCYRESET: BI7,
        OPT_FREI6: BI6,
        OPT_BSDMON: BI5,
        OPT_CNTTWERR: BI4,
        OPT_BCC: BI3,
        OPT_ZUEND: BI2,
        OPT_ENTL_OEL: BI1,
        OPT_FREI0: BI0
    }

    /** RAM 0x0030 TCSP */
    @ext(0x6c, 0x01, 0x30)
    model TCSP is Memory<UCH>;
//    @ext(0xdc, 0x11, 0x30)
//    model TCSP is Memory<UIN>;

    /** RAM 0x0031 TCSZA */
    @ext(0x6d, 0x01, 0x31)
    model TCSZA is Memory<UCH>;

    /** RAM 0x0032 NG_MAX */
    @ext(0x6e, 0x01, 0x32)
    model NG_MAX is Memory<UCH>;
//    @ext(0xde, 0x11, 0x32)
//    model NG_MAX is Memory<UIN>;

    /** RAM 0x0033 NG_MIN */
    @ext(0x6f, 0x01, 0x33)
    model NG_MIN is Memory<UCH>;

    /** RAM 0x0034 TSTAB */
    @ext(0x68, 0x01, 0x34)
    model TSTAB is Memory<UCH>;
//    @ext(0xd8, 0x11, 0x34)
//    model TSTAB is Memory<UIN>;

    /** RAM 0x0035 FS_RESERVE1 */
    @ext(0x69, 0x01, 0x35)
    model FS_RESERVE1 is Memory<UCH>;

    /** RAM 0x0036 EE_CONST_CRC */
    @ext(0x6a, 0x01, 0x36)
    model EE_CONST_CRC is Memory<UCH>;
//    @ext(0xda, 0x11, 0x36)
//    model EE_CONST_CRC is Memory<UIN>;

    /** RAM 0x0037 VPA_NEXT_STATE */
    @ext(0x6b, 0x01, 0x37)
    model VPA_NEXT_STATE is Memory<UCH>;

    /** RAM 0x0038 VPA_TIMER */
    @ext(0x64, 0x01, 0x38)
    model VPA_TIMER is Memory<UCH>;
//    @ext(0xd4, 0x11, 0x38)
//    model VPA_TIMER is Memory<UIN>;

    /** RAM 0x0039 VPA_T1 */
    @ext(0x65, 0x01, 0x39)
    model VPA_T1 is Memory<UCH>;

    // Alias of VPA_T1
    // /** RAM 0x0039 VPA_T1_HI */
    // @ext(0x65, 0x01, 0x39)
    // model VPA_T1_HI is Memory<UCH>;

    /** RAM 0x003B S5_DAT_CRC */
    @ext(0x67, 0x01, 0x3B)
    model S5_DAT_CRC is Memory<UCH>;

    /** RAM 0x003C SCHILF */
    @ext(0x60, 0x01, 0x3C)
    model SCHILF is Memory<UCH>;
//    @ext(0xd0, 0x11, 0x3C)
//    model SCHILF is Memory<UIN>;

    /** RAM 0x003D V24_IADR */
    @ext(0x61, 0x01, 0x3D)
    model V24_IADR is Memory<UCH>;

    /** RAM 0x003E NGSOLL */
    @ext(0x62, 0x01, 0x3E)
    model NGSOLL is Memory<UCH>;
//    @ext(0xd2, 0x11, 0x3E)
//    model NGSOLL is Memory<UIN>;

    /** RAM 0x003F NGIST */
    @ext(0x63, 0x01, 0x3F)
    model NGIST is Memory<UCH>;

    /** RAM 0x0040 CLNGFLANKE */
    @ext(0x1c, 0x01, 0x40)
    model CLNGFLANKE is Memory<UCH>;
//    @ext(0xac, 0x11, 0x40)
//    model CLNGFLANKE is Memory<UIN>;

    /** RAM 0x0041 CNTVPASTART */
    @ext(0x1d, 0x01, 0x41)
    model CNTVPASTART is Memory<UCH>;

    /** RAM 0x0042 DEVTST_STATE */
    @ext(0x1e, 0x01, 0x42)
    model DEVTST_STATE is Memory<UCH>;
//    @ext(0xae, 0x11, 0x42)
//    model DEVTST_STATE is Memory<UIN>;

    /** RAM 0x0043 DEVTST_ERR_MASK */
    @ext(0x1f, 0x01, 0x43)
    model DEVTST_ERR_MASK is Memory<UCH>;

    /** RAM 0x0044 ERRCNT2 */
    @ext(0x18, 0x01, 0x44)
    model ERRCNT2 is Memory<UCH>;
//    @ext(0xa8, 0x11, 0x44)
//    model ERRCNT2 is Memory<UIN>;

    /** RAM 0x0045 TVSOLL */
    @ext(0x19, 0x01, 0x45)
    model TVSOLL is Memory<UCH>;

    /** RAM 0x0046 F_CODE */
    @ext(0x1a, 0x01, 0x46)
    model F_CODE is Memory<UCH>;
//    @ext(0xaa, 0x11, 0x46)
//    model F_CODE is Memory<UIN>;

    /** RAM 0x0047 HZZUSTBM */
    @ext(0x1b, 0x01, 0x47)
    model HZZUSTBM is Memory<UCH>;

    /** RAM 0x0048 V24_TXCNT */
    @ext(0x14, 0x01, 0x48)
    model V24_TXCNT is Memory<UCH>;
//    @ext(0xa4, 0x11, 0x48)
//    model V24_TXCNT is Memory<UIN>;

    /** RAM 0x0049 WWZUSTBM */
    @ext(0x15, 0x01, 0x49)
    model WWZUSTBM is Memory<UCH>;

    /** RAM 0x004A YTVREG */
    @ext(0x16, 0x01, 0x4A)
    model YTVREG is Memory<UCH>;
//    @ext(0xa6, 0x11, 0x4A)
//    model YTVREG is Memory<UIN>;

    /** RAM 0x004C PWMGEBL */
    @ext(0x10, 0x01, 0x4C)
    model PWMGEBL is Memory<UCH>;
//    @ext(0xa0, 0x11, 0x4C)
//    model PWMGEBL is Memory<UIN>;

    // Alias of PWMGEBL
    // /** RAM 0x004C YPWM */
    // @ext(0x10, 0x01, 0x4C)
    // model YPWM is Memory<UCH>;
//    // @ext(0xa0, 0x11, 0x4C)
//    // model YPWM is Memory<UIN>;

    /** RAM 0x004E MB_2_ALT */
    @ext(0x12, 0x01, 0x4E)
    model MB_2_ALT is Memory<UCH>;
//    @ext(0xa2, 0x11, 0x4E)
//    model MB_2_ALT is Memory<UIN>;

    /** RAM 0x004F RES_CYCL_CNT */
    @ext(0x13, 0x01, 0x4F)
    model RES_CYCL_CNT is Memory<UCH>;

    /** RAM 0x0050 RES_CNT */
    @ext(0x0c, 0x01, 0x50)
    model RES_CNT is Memory<UCH>;
//    @ext(0xbc, 0x11, 0x50)
//    model RES_CNT is Memory<UIN>;

    /** RAM 0x0051 RES_CNT_INV */
    @ext(0x0d, 0x01, 0x51)
    model RES_CNT_INV is Memory<UCH>;

    /** RAM 0x0052 ICL100MSEC */
    @ext(0x0e, 0x01, 0x52)
    model ICL100MSEC is Memory<UCH>;
//    @ext(0xbe, 0x11, 0x52)
//    model ICL100MSEC is Memory<UIN>;

    /** RAM 0x0053 ICL20SEC */
    @ext(0x0f, 0x01, 0x53)
    model ICL20SEC is Memory<UCH>;

    /** RAM 0x0054 ICL1HRS */
    @ext(0x08, 0x01, 0x54)
    model ICL1HRS is Memory<UCH>;
//    @ext(0xb8, 0x11, 0x54)
//    model ICL1HRS is Memory<UIN>;

    /** RAM 0x0055 KEY_ACT */
    @ext(0x09, 0x01, 0x55)
    model KEY_ACT is Memory<UCH>;

    /** RAM 0x0056 KEY_PREV */
    @ext(0x0a, 0x01, 0x56)
    model KEY_PREV is Memory<UCH>;
//    @ext(0xba, 0x11, 0x56)
//    model KEY_PREV is Memory<UIN>;

    /** RAM 0x0057 KEY_CNT */
    @ext(0x0b, 0x01, 0x57)
    model KEY_CNT is Memory<UCH>;

    /** RAM 0x0058 KONFISTATE */
    @ext(0x04, 0x01, 0x58)
    model KONFISTATE is Memory<UCH>;
//    @ext(0xb4, 0x11, 0x58)
//    model KONFISTATE is Memory<UIN>;

    /** RAM 0x0059 MB_TWFEHLER */
    @ext(0x05, 0x01, 0x59)
    model MB_TWFEHLER is Memory<UCH>;

    /** RAM 0x005A DOP_SOLL */
    @ext(0x06, 0x01, 0x5A)
    model DOP_SOLL is Memory<UCH>;
//    @ext(0xb6, 0x11, 0x5A)
//    model DOP_SOLL is Memory<UIN>;

    // Alias of DOP_SOLL
    // /** RAM 0x005A DOP_SOLL_HIGH */
    // @ext(0x06, 0x01, 0x5A)
    // model DOP_SOLL_HIGH is Memory<UCH>;
//    // @ext(0xb6, 0x11, 0x5A)
//    // model DOP_SOLL_HIGH is Memory<UIN>;

    /** RAM 0x005C Y_FD_LB */
    @ext(0x00, 0x01, 0x5C)
    model Y_FD_LB is Memory<UCH>;
//    @ext(0xb0, 0x11, 0x5C)
//    model Y_FD_LB is Memory<UIN>;

    /** RAM 0x005E OLV_KORR_KALTWARM */
    @ext(0x02, 0x01, 0x5E)
    model OLV_KORR_KALTWARM is Memory<UCH>;
//    @ext(0xb2, 0x11, 0x5E)
//    model OLV_KORR_KALTWARM is Memory<UIN>;

    /** RAM 0x005F DOP_CNT_SIG */
    @ext(0x03, 0x01, 0x5F)
    model DOP_CNT_SIG is Memory<UCH>;

    /** RAM 0x0060 DOP_AKKUABW */
    @ext(0x3c, 0x01, 0x60)
    model DOP_AKKUABW is Memory<UCH>;
//    @ext(0x8c, 0x11, 0x60)
//    model DOP_AKKUABW is Memory<UIN>;

    /** RAM 0x0062 DOP_HUB_OK */
    @ext(0x3e, 0x01, 0x62)
    model DOP_HUB_OK is Memory<UCH>;
//    @ext(0x8e, 0x11, 0x62)
//    model DOP_HUB_OK is Memory<UIN>;

    /** RAM 0x0064 DOP_TOLHUB_OK */
    @ext(0x38, 0x01, 0x64)
    model DOP_TOLHUB_OK is Memory<UCH>;
//    @ext(0x88, 0x11, 0x64)
//    model DOP_TOLHUB_OK is Memory<UIN>;

    /** RAM 0x0065 DOP_TOLHUB_NOK */
    @ext(0x39, 0x01, 0x65)
    model DOP_TOLHUB_NOK is Memory<UCH>;

    /** RAM 0x0066 BE1_50HZ_CNT */
    @ext(0x3a, 0x01, 0x66)
    model BE1_50HZ_CNT is Memory<UCH>;
//    @ext(0x8a, 0x11, 0x66)
//    model BE1_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0067 BE2_50HZ_CNT */
    @ext(0x3b, 0x01, 0x67)
    model BE2_50HZ_CNT is Memory<UCH>;

    /** RAM 0x0068 BE3_50HZ_CNT */
    @ext(0x34, 0x01, 0x68)
    model BE3_50HZ_CNT is Memory<UCH>;
//    @ext(0x84, 0x11, 0x68)
//    model BE3_50HZ_CNT is Memory<UIN>;

    /** RAM 0x0069 BE4_50HZ_CNT */
    @ext(0x35, 0x01, 0x69)
    model BE4_50HZ_CNT is Memory<UCH>;

    /** RAM 0x006A BE5_50HZ_CNT */
    @ext(0x36, 0x01, 0x6A)
    model BE5_50HZ_CNT is Memory<UCH>;
//    @ext(0x86, 0x11, 0x6A)
//    model BE5_50HZ_CNT is Memory<UIN>;

    /** RAM 0x006B ELHZ_50HZ_CNT */
    @ext(0x37, 0x01, 0x6B)
    model ELHZ_50HZ_CNT is Memory<UCH>;

    /** RAM 0x006C DOP_CNT_IMP */
    @ext(0x30, 0x01, 0x6C)
    model DOP_CNT_IMP is Memory<UCH>;
//    @ext(0x80, 0x11, 0x6C)
//    model DOP_CNT_IMP is Memory<UIN>;

    /** RAM 0x006D NGIST_CNT */
    @ext(0x31, 0x01, 0x6D)
    model NGIST_CNT is Memory<UCH>;

    /** RAM 0x006E TABGIST */
    @ext(0x32, 0x01, 0x6E)
    model TABGIST is Memory<UCH>;
//    @ext(0x82, 0x11, 0x6E)
//    model TABGIST is Memory<UIN>;

    /** RAM 0x006F TVLIST */
    @ext(0x33, 0x01, 0x6F)
    model TVLIST is Memory<UCH>;

    /** RAM 0x0070 TAUSSEN */
    @ext(0x2c, 0x01, 0x70)
    model TAUSSEN is Memory<UCH>;
//    @ext(0x9c, 0x11, 0x70)
//    model TAUSSEN is Memory<UIN>;

    /** RAM 0x0071 TB10 */
    @ext(0x2d, 0x01, 0x71)
    model TB10 is Memory<UCH>;

    /** RAM 0x0072 TB11 */
    @ext(0x2e, 0x01, 0x72)
    model TB11 is Memory<UCH>;
//    @ext(0x9e, 0x11, 0x72)
//    model TB11 is Memory<UIN>;

    /** RAM 0x0073 TB12 */
    @ext(0x2f, 0x01, 0x73)
    model TB12 is Memory<UCH>;

    /** RAM 0x0074 TWWIST */
    @ext(0x28, 0x01, 0x74)
    model TWWIST is Memory<UCH>;
//    @ext(0x98, 0x11, 0x74)
//    model TWWIST is Memory<UIN>;

    /** RAM 0x0075 TWWSOLL_HS */
    @ext(0x29, 0x01, 0x75)
    model TWWSOLL_HS is Memory<UCH>;

    /** RAM 0x0076 MAX_VKTEMP */
    @ext(0x2a, 0x01, 0x76)
    model MAX_VKTEMP is Memory<UCH>;
//    @ext(0x9a, 0x11, 0x76)
//    model MAX_VKTEMP is Memory<UIN>;

    /** RAM 0x0077 FCERR_MB */
    @ext(0x2b, 0x01, 0x77)
    model FCERR_MB is Memory<UCH>;

    /** RAM 0x0078 MENUPUNKT */
    @ext(0x24, 0x01, 0x78)
    model MENUPUNKT is Memory<UCH>;
//    @ext(0x94, 0x11, 0x78)
//    model MENUPUNKT is Memory<UIN>;

    /** RAM 0x0079 PARAMETERWERT */
    @ext(0x25, 0x01, 0x79)
    model PARAMETERWERT is Memory<UCH>;

    /** RAM 0x007A FCERR_VHI_UCHAR */
    @ext(0x26, 0x01, 0x7A)
    model FCERR_VHI_UCHAR is Memory<UCH>;
//    @ext(0x96, 0x11, 0x7A)
//    model FCERR_VHI_UCHAR is Memory<UIN>;

    /** RAM 0x007B FCERR_HIST2_PTR */
    @ext(0x27, 0x01, 0x7B)
    model FCERR_HIST2_PTR is Memory<UCH>;

    /** RAM 0x007C cnt_AbgKl_nok */
    @ext(0x20, 0x01, 0x7C)
    model cnt_AbgKl_nok is Memory<UCH>;
//    @ext(0x90, 0x11, 0x7C)
//    model cnt_AbgKl_nok is Memory<UIN>;

    /** RAM 0x007D xChg_vpa2fm */
    @ext(0x21, 0x01, 0x7D)
    model xChg_vpa2fm is Memory<UCH>;

    /** RAM 0x007E rel_nZue */
    @ext(0x22, 0x01, 0x7E)
    model rel_nZue is Memory<UCH>;
//    @ext(0x92, 0x11, 0x7E)
//    model rel_nZue is Memory<UIN>;

    /** RAM 0x0080 IRAEPKANF */
    @ext(0xdc, 0x01, 0x80)
    model IRAEPKANF is Memory<UCH>;
//    @ext(0x6c, 0x11, 0x80)
//    model IRAEPKANF is Memory<UIN>;

    // Alias of IRAEPKANF
    // /** RAM 0x0080 IRA_WTOREV */
    // @ext(0xdc, 0x01, 0x80)
    // model IRA_WTOREV is Memory<UCH>;
//    // @ext(0x6c, 0x11, 0x80)
//    // model IRA_WTOREV is Memory<UIN>;

    // Alias of IRAEPKANF
    // /** RAM 0x0080 MAXTVSOLL */
    // @ext(0xdc, 0x01, 0x80)
    // model MAXTVSOLL is Memory<UCH>;
//    // @ext(0x6c, 0x11, 0x80)
//    // model MAXTVSOLL is Memory<UIN>;

    /** RAM 0x0081 MINTVSOLL */
    @ext(0xdd, 0x01, 0x81)
    model MINTVSOLL is Memory<UCH>;

    /** RAM 0x0082 HZ_HYS */
    @ext(0xde, 0x01, 0x82)
    model HZ_HYS is Memory<UCH>;
//    @ext(0x6e, 0x11, 0x82)
//    model HZ_HYS is Memory<UIN>;

    // Alias of HZ_HYS
    // /** RAM 0x0082 IRA_BCC_IDF */
    // @ext(0xde, 0x01, 0x82)
    // model IRA_BCC_IDF is Memory<UCH>;
//    // @ext(0x6e, 0x11, 0x82)
//    // model IRA_BCC_IDF is Memory<UIN>;

    /** RAM 0x0083 TBRMINOFF */
    @ext(0xdf, 0x01, 0x83)
    model TBRMINOFF is Memory<UCH>;

    /** RAM 0x0084 HZ_KP */
    @ext(0xd8, 0x01, 0x84)
    model HZ_KP is Memory<UCH>;
//    @ext(0x68, 0x11, 0x84)
//    model HZ_KP is Memory<UIN>;

    /** RAM 0x0085 HZ_KTND */
    @ext(0xd9, 0x01, 0x85)
    model HZ_KTND is Memory<UCH>;

    // Alias of HZ_KTND
    // /** RAM 0x0085 IRA_GFATYP */
    // @ext(0xd9, 0x01, 0x85)
    // model IRA_GFATYP is Memory<UCH>;

    /** RAM 0x0086 IRA_VARIANTE */
    @ext(0xda, 0x01, 0x86)
    model IRA_VARIANTE is Memory<UCH>;
//    @ext(0x6a, 0x11, 0x86)
//    model IRA_VARIANTE is Memory<UIN>;

    // Alias of IRA_VARIANTE
    // /** RAM 0x0086 NG_NBL */
    // @ext(0xda, 0x01, 0x86)
    // model NG_NBL is Memory<UCH>;
//    // @ext(0x6a, 0x11, 0x86)
//    // model NG_NBL is Memory<UIN>;

    /** RAM 0x0087 QMINLAST_KW */
    @ext(0xdb, 0x01, 0x87)
    model QMINLAST_KW is Memory<UCH>;

    /** RAM 0x0088 QMAX_HZ_KW */
    @ext(0xd4, 0x01, 0x88)
    model QMAX_HZ_KW is Memory<UCH>;
//    @ext(0x64, 0x11, 0x88)
//    model QMAX_HZ_KW is Memory<UIN>;

    /** RAM 0x0089 QMAX_WW_KW */
    @ext(0xd5, 0x01, 0x89)
    model QMAX_WW_KW is Memory<UCH>;

    /** RAM 0x008A QZTL_KW */
    @ext(0xd6, 0x01, 0x8A)
    model QZTL_KW is Memory<UCH>;
//    @ext(0x66, 0x11, 0x8A)
//    model QZTL_KW is Memory<UIN>;

    /** RAM 0x008B QZUEND_KW */
    @ext(0xd7, 0x01, 0x8B)
    model QZUEND_KW is Memory<UCH>;

    /** RAM 0x008C QSTAB_KW */
    @ext(0xd0, 0x01, 0x8C)
    model QSTAB_KW is Memory<UCH>;
//    @ext(0x60, 0x11, 0x8C)
//    model QSTAB_KW is Memory<UIN>;

    /** RAM 0x008D NG_VSP */
    @ext(0xd1, 0x01, 0x8D)
    model NG_VSP is Memory<UCH>;

    /** RAM 0x008E DQLIM */
    @ext(0xd2, 0x01, 0x8E)
    model DQLIM is Memory<UCH>;
//    @ext(0x62, 0x11, 0x8E)
//    model DQLIM is Memory<UIN>;

    /** RAM 0x008F T_NBL */
    @ext(0xd3, 0x01, 0x8F)
    model T_NBL is Memory<UCH>;

    /** RAM 0x0090 PNL_HZ */
    @ext(0xcc, 0x01, 0x90)
    model PNL_HZ is Memory<UCH>;
//    @ext(0x7c, 0x11, 0x90)
//    model PNL_HZ is Memory<UIN>;

    /** RAM 0x0091 PUHZPWM_MIN */
    @ext(0xcd, 0x01, 0x91)
    model PUHZPWM_MIN is Memory<UCH>;

    /** RAM 0x0092 PUHZPWM_MAX */
    @ext(0xce, 0x01, 0x92)
    model PUHZPWM_MAX is Memory<UCH>;
//    @ext(0x7e, 0x11, 0x92)
//    model PUHZPWM_MAX is Memory<UIN>;

    /** RAM 0x0093 DTREGPUPWM */
    @ext(0xcf, 0x01, 0x93)
    model DTREGPUPWM is Memory<UCH>;

    /** RAM 0x0094 WW_HYS */
    @ext(0xc8, 0x01, 0x94)
    model WW_HYS is Memory<UCH>;
//    @ext(0x78, 0x11, 0x94)
//    model WW_HYS is Memory<UIN>;

    /** RAM 0x0095 TWWPLUS */
    @ext(0xc9, 0x01, 0x95)
    model TWWPLUS is Memory<UCH>;

    /** RAM 0x0096 MAXBWLADEZEIT */
    @ext(0xca, 0x01, 0x96)
    model MAXBWLADEZEIT is Memory<UCH>;
//    @ext(0x7a, 0x11, 0x96)
//    model MAXBWLADEZEIT is Memory<UIN>;

    /** RAM 0x0097 WW_ABSENK */
    @ext(0xcb, 0x01, 0x97)
    model WW_ABSENK is Memory<UCH>;

    /** RAM 0x0098 HK_S */
    @ext(0xc4, 0x01, 0x98)
    model HK_S is Memory<UCH>;
//    @ext(0x74, 0x11, 0x98)
//    model HK_S is Memory<UIN>;

    /** RAM 0x0099 TFRS_ANLAGE */
    @ext(0xc5, 0x01, 0x99)
    model TFRS_ANLAGE is Memory<UCH>;

    /** RAM 0x009A RTHZEIT */
    @ext(0xc6, 0x01, 0x9A)
    model RTHZEIT is Memory<UCH>;
//    @ext(0x76, 0x11, 0x9A)
//    model RTHZEIT is Memory<UIN>;

    /** RAM 0x009B HZSONDER */
    @ext(0xc7, 0x01, 0x9B)
    model HZSONDER is Memory<UCH>;

    /** RAM 0x009C TAUSSEN_KORR */
    @ext(0xc0, 0x01, 0x9C)
    model TAUSSEN_KORR is Memory<UCH>;
//    @ext(0x70, 0x11, 0x9C)
//    model TAUSSEN_KORR is Memory<UIN>;

    /** RAM 0x009D MAX_PARA_ATB */
    @ext(0xc1, 0x01, 0x9D)
    model MAX_PARA_ATB is Memory<UCH>;

    /** RAM 0x009E KESS_OPT */
    @ext(0xc2, 0x01, 0x9E)
    model KESS_OPT is Memory<UCH>;
//    @ext(0x72, 0x11, 0x9E)
//    model KESS_OPT is Memory<UIN>;

    /** RAM 0x009F NFS_RESERVE2 */
    @ext(0xc3, 0x01, 0x9F)
    model NFS_RESERVE2 is Memory<UCH>;

    /** RAM 0x00A0 ZUEND_SCHWELLE */
    @ext(0xfc, 0x01, 0xA0)
    model ZUEND_SCHWELLE is Memory<UCH>;
//    @ext(0x4c, 0x11, 0xA0)
//    model ZUEND_SCHWELLE is Memory<UIN>;

    /** RAM 0x00A1 PNL_WWZIRK */
    @ext(0xfd, 0x01, 0xA1)
    model PNL_WWZIRK is Memory<UCH>;

    /** RAM 0x00A2 V24_KM_ADR */
    @ext(0xfe, 0x01, 0xA2)
    model V24_KM_ADR is Memory<UCH>;
//    @ext(0x4e, 0x11, 0xA2)
//    model V24_KM_ADR is Memory<UIN>;

    /** RAM 0x00A3 WARTINTHBON */
    @ext(0xff, 0x01, 0xA3)
    model WARTINTHBON is Memory<UCH>;

    /** RAM 0x00A4 NGKORR_WARM */
    @ext(0xf8, 0x01, 0xA4)
    model NGKORR_WARM is Memory<UCH>;
//    @ext(0x48, 0x11, 0xA4)
//    model NGKORR_WARM is Memory<UIN>;

    /** RAM 0x00A5 NGKORR_KALT */
    @ext(0xf9, 0x01, 0xA5)
    model NGKORR_KALT is Memory<UCH>;

    /** RAM 0x00A6 NGKORR_MAXLAST */
    @ext(0xfa, 0x01, 0xA6)
    model NGKORR_MAXLAST is Memory<UCH>;
//    @ext(0x4a, 0x11, 0xA6)
//    model NGKORR_MAXLAST is Memory<UIN>;

    /** RAM 0x00A7 NGKORR_MINLAST */
    @ext(0xfb, 0x01, 0xA7)
    model NGKORR_MINLAST is Memory<UCH>;

    /** RAM 0x00A8 DOPKORR_OLV */
    @ext(0xf4, 0x01, 0xA8)
    model DOPKORR_OLV is Memory<UCH>;
//    @ext(0x44, 0x11, 0xA8)
//    model DOPKORR_OLV is Memory<UIN>;

    /** RAM 0x00A9 MAX_NGKORR_VK */
    @ext(0xf5, 0x01, 0xA9)
    model MAX_NGKORR_VK is Memory<UCH>;

    /** RAM 0x00AA TVK_KORRMIN */
    @ext(0xf6, 0x01, 0xAA)
    model TVK_KORRMIN is Memory<UCH>;
//    @ext(0x46, 0x11, 0xAA)
//    model TVK_KORRMIN is Memory<UIN>;

    /** RAM 0x00AB TVK_SOLL_BETR */
    @ext(0xf7, 0x01, 0xAB)
    model TVK_SOLL_BETR is Memory<UCH>;

    /** RAM 0x00AC UVW_TMITTEL */
    @ext(0xf0, 0x01, 0xAC)
    model UVW_TMITTEL is Memory<UCH>;
//    @ext(0x40, 0x11, 0xAC)
//    model UVW_TMITTEL is Memory<UIN>;

    /** RAM 0x00AD TVK_MAX */
    @ext(0xf1, 0x01, 0xAD)
    model TVK_MAX is Memory<UCH>;

    /** RAM 0x00AE NFS_RESERVE3 */
    @ext(0xf2, 0x01, 0xAE)
    model NFS_RESERVE3 is Memory<UCH>;
//    @ext(0x42, 0x11, 0xAE)
//    model NFS_RESERVE3 is Memory<UIN>;

    /** RAM 0x00AF OPTBYTE1 */
    @ext(0xf3, 0x01, 0xAF)
    model OPTBYTE1 is Memory<UCH>;

    /** RAM 0x00B0 MAX_TKLAPPE */
    @ext(0xec, 0x01, 0xB0)
    model MAX_TKLAPPE is Memory<UCH>;
//    @ext(0x5c, 0x11, 0xB0)
//    model MAX_TKLAPPE is Memory<UIN>;

    /** RAM 0x00B1 KES_DAT_CRC */
    @ext(0xed, 0x01, 0xB1)
    model KES_DAT_CRC is Memory<UCH>;

    /** RAM 0x00B2 IRAEPMANF */
    @ext(0xee, 0x01, 0xB2)
    model IRAEPMANF is Memory<UCH>;
//    @ext(0x5e, 0x11, 0xB2)
//    model IRAEPMANF is Memory<UIN>;

    // Alias of IRAEPMANF
    // /** RAM 0x00B2 TVSOLL_EPM */
    // @ext(0xee, 0x01, 0xB2)
    // model TVSOLL_EPM is Memory<UCH>;
//    // @ext(0x5e, 0x11, 0xB2)
//    // model TVSOLL_EPM is Memory<UIN>;

    /** RAM 0x00B3 TVABSENK */
    @ext(0xef, 0x01, 0xB3)
    model TVABSENK is Memory<UCH>;

    /** RAM 0x00B4 SOMMERTEMP */
    @ext(0xe8, 0x01, 0xB4)
    model SOMMERTEMP is Memory<UCH>;
//    @ext(0x58, 0x11, 0xB4)
//    model SOMMERTEMP is Memory<UIN>;

    /** RAM 0x00B5 TWWSOLL_EPM */
    @ext(0xe9, 0x01, 0xB5)
    model TWWSOLL_EPM is Memory<UCH>;

    /** RAM 0x00B6 TRAUMTAG */
    @ext(0xea, 0x01, 0xB6)
    model TRAUMTAG is Memory<UCH>;
//    @ext(0x5a, 0x11, 0xB6)
//    model TRAUMTAG is Memory<UIN>;

    /** RAM 0x00B7 TRAUMABSENK */
    @ext(0xeb, 0x01, 0xB7)
    model TRAUMABSENK is Memory<UCH>;

    /** RAM 0x00B8 MAINPARACRC */
    @ext(0xe4, 0x01, 0xB8)
    model MAINPARACRC is Memory<UCH>;
//    @ext(0x54, 0x11, 0xB8)
//    model MAINPARACRC is Memory<UIN>;

    /** RAM 0x00B9 AIN_PG_ERR_MASK */
    @ext(0xe5, 0x01, 0xB9)
    model AIN_PG_ERR_MASK is Memory<UCH>;

    /** RAM 0x00BA TKLIST */
    @ext(0xe6, 0x01, 0xBA)
    model TKLIST is Memory<UCH>;
//    @ext(0x56, 0x11, 0xBA)
//    model TKLIST is Memory<UIN>;

    /** RAM 0x00BB TKL_KOMP */
    @ext(0xe7, 0x01, 0xBB)
    model TKL_KOMP is Memory<UCH>;

    /** RAM 0x00BC TZLIST */
    @ext(0xe0, 0x01, 0xBC)
    model TZLIST is Memory<UCH>;
//    @ext(0x50, 0x11, 0xBC)
//    model TZLIST is Memory<UIN>;

    /** RAM 0x00BD TVKIST */
    @ext(0xe1, 0x01, 0xBD)
    model TVKIST is Memory<UCH>;

    /** RAM 0x00BE AIN_OPT_ERR_MASK */
    @ext(0xe2, 0x01, 0xBE)
    model AIN_OPT_ERR_MASK is Memory<UCH>;
//    @ext(0x52, 0x11, 0xBE)
//    model AIN_OPT_ERR_MASK is Memory<UIN>;

    /** RAM 0x00BF Q_SOLL */
    @ext(0xe3, 0x01, 0xBF)
    model Q_SOLL is Memory<UCH>;

    /** RAM 0x00C0 TVKSOLL */
    @ext(0x9c, 0x01, 0xC0)
    model TVKSOLL is Memory<UCH>;
//    @ext(0x2c, 0x11, 0xC0)
//    model TVKSOLL is Memory<UIN>;

    /** RAM 0x00C1 DOP_WIDTH_SIG */
    @ext(0x9d, 0x01, 0xC1)
    model DOP_WIDTH_SIG is Memory<UCH>;

    /** RAM 0x00C2 DOP_IAD */
    @ext(0x9e, 0x01, 0xC2)
    model DOP_IAD is Memory<UCH>;
//    @ext(0x2e, 0x11, 0xC2)
//    model DOP_IAD is Memory<UIN>;

    /** RAM 0x00C3 DOP_UAD */
    @ext(0x9f, 0x01, 0xC3)
    model DOP_UAD is Memory<UCH>;

    /** RAM 0x00C4 ELHZ_QREL */
    @ext(0x98, 0x01, 0xC4)
    model ELHZ_QREL is Memory<UCH>;
//    @ext(0x28, 0x11, 0xC4)
//    model ELHZ_QREL is Memory<UIN>;

    /** RAM 0x00C5 ERR_MERK_ALT */
    @ext(0x99, 0x01, 0xC5)
    model ERR_MERK_ALT is Memory<UCH>;

    /** RAM 0x00C6 ROM_DPH */
    @ext(0x9a, 0x01, 0xC6)
    model ROM_DPH is Memory<UCH>;
//    @ext(0x2a, 0x11, 0xC6)
//    model ROM_DPH is Memory<UIN>;

    /** RAM 0x00C7 ROM_DPL */
    @ext(0x9b, 0x01, 0xC7)
    model ROM_DPL is Memory<UCH>;

    /** RAM 0x00C8 ROM_H */
    @ext(0x94, 0x01, 0xC8)
    model ROM_H is Memory<UCH>;
//    @ext(0x24, 0x11, 0xC8)
//    model ROM_H is Memory<UIN>;

    /** RAM 0x00C9 ROM_L */
    @ext(0x95, 0x01, 0xC9)
    model ROM_L is Memory<UCH>;

    /** RAM 0x00CA ihilf */
    @ext(0x96, 0x01, 0xCA)
    model ihilf is Memory<UCH>;
//    @ext(0x26, 0x11, 0xCA)
//    model ihilf is Memory<UIN>;

    /** RAM 0x00CC kes_state */
    @ext(0x90, 0x01, 0xCC)
    model kes_state is Memory<UCH>;
//    @ext(0x20, 0x11, 0xCC)
//    model kes_state is Memory<UIN>;

    /** RAM 0x00CD ICL1HRS_ALT */
    @ext(0x91, 0x01, 0xCD)
    model ICL1HRS_ALT is Memory<UCH>;

    /** RAM 0x00CE RES_CNT_ALT */
    @ext(0x92, 0x01, 0xCE)
    model RES_CNT_ALT is Memory<UCH>;
//    @ext(0x22, 0x11, 0xCE)
//    model RES_CNT_ALT is Memory<UIN>;

    /** RAM 0x00CF IBN_STATE */
    @ext(0x93, 0x01, 0xCF)
    model IBN_STATE is Memory<UCH>;

    /** RAM 0x00D0 PUHZPWM */
    @ext(0x8c, 0x01, 0xD0)
    model PUHZPWM is Memory<UCH>;
//    @ext(0x3c, 0x11, 0xD0)
//    model PUHZPWM is Memory<UIN>;

    /** RAM 0x00D1 vpa_state */
    @ext(0x8d, 0x01, 0xD1)
    model vpa_state is Memory<UCH>;

    /** RAM 0x00D2 STACK */
    @ext(0x8e, 0x01, 0xD2)
    model STACK is Memory<UCH>;
//    @ext(0x3e, 0x11, 0xD2)
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

    /** SFR 0x00C2 CC1 */
    @ext(0xee, 0x04, 0xC2)
    model CC1 is Memory<UCH>;
//    @ext(0x5e, 0x14, 0xC2)
//    model CC1 is Memory<UIN>;

    // Alias of CC1
    // /** SFR 0x00C2 CCL1 */
    // @ext(0xee, 0x04, 0xC2)
    // model CCL1 is Memory<UCH>;
//    // @ext(0x5e, 0x14, 0xC2)
//    // model CCL1 is Memory<UIN>;

    // Alias of CC1
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

    /** SFR 0x00C4 CC2 */
    @ext(0xe8, 0x04, 0xC4)
    model CC2 is Memory<UCH>;
//    @ext(0x58, 0x14, 0xC4)
//    model CC2 is Memory<UIN>;

    // Alias of CC2
    // /** SFR 0x00C4 CCL2 */
    // @ext(0xe8, 0x04, 0xC4)
    // model CCL2 is Memory<UCH>;
//    // @ext(0x58, 0x14, 0xC4)
//    // model CCL2 is Memory<UIN>;

    // Alias of CC2
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

    /** SFR 0x00C7 CCH3 */
    @ext(0xeb, 0x04, 0xC7)
    model CCH3 is Memory<UCH>;

    /** SFR 0x00C8 T2CON */
    @ext(0xe4, 0x04, 0xC8)
    model T2CON is Memory<UCH>;
//    @ext(0x54, 0x14, 0xC8)
//    model T2CON is Memory<UIN>;

    /** SFR 0x00CA CRC */
    @ext(0xe6, 0x04, 0xCA)
    model CRC is Memory<UCH>;
//    @ext(0x56, 0x14, 0xCA)
//    model CRC is Memory<UIN>;

    // Alias of CRC
    // /** SFR 0x00CA CRCL */
    // @ext(0xe6, 0x04, 0xCA)
    // model CRCL is Memory<UCH>;
//    // @ext(0x56, 0x14, 0xCA)
//    // model CRCL is Memory<UIN>;

    // Alias of CRC
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

    /** Konstanten 0x0000 ACK_5002_BIT */
    @ext(0xb8, 0x02, 0x00)
    model ACK_5002_BIT is Memory<UCH>;
//    @ext(0x08, 0x12, 0x00)
//    model ACK_5002_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ACK_REG_STOP_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model ACK_REG_STOP_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ACK_REG_STOP_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ADC_SHORT */
    // @ext(0xb8, 0x02, 0x00)
    // model ADC_SHORT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ADC_SHORT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AF_BREAK_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model AF_BREAK_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AF_BREAK_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 AF_SHORT_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model AF_SHORT_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model AF_SHORT_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 EEA_PAGE_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model EEA_PAGE_DEFAULT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model EEA_PAGE_DEFAULT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ERR_NOERR */
    // @ext(0xb8, 0x02, 0x00)
    // model ERR_NOERR is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ERR_NOERR is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 HARD_C505L */
    // @ext(0xb8, 0x02, 0x00)
    // model HARD_C505L is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model HARD_C505L is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 IBN_INIT */
    // @ext(0xb8, 0x02, 0x00)
    // model IBN_INIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model IBN_INIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 KMOISSAVED_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model KMOISSAVED_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model KMOISSAVED_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 KM_OPT_KONFI_UNDEFINED */
    // @ext(0xb8, 0x02, 0x00)
    // model KM_OPT_KONFI_UNDEFINED is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model KM_OPT_KONFI_UNDEFINED is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 KONFISTATE_INKONFI_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model KONFISTATE_INKONFI_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model KONFISTATE_INKONFI_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MB_TWFEHLER__STW_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model MB_TWFEHLER__STW_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MB_TWFEHLER__STW_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_KAMINKEHRE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_KAMINKEHRE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MENU_U_CURSER_KAMINKEHRE is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 MENU_U_CURSER_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model MENU_U_CURSER_SONNE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model MENU_U_CURSER_SONNE is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 P10_KONFIG */
    // @ext(0xb8, 0x02, 0x00)
    // model P10_KONFIG is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model P10_KONFIG is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 QQ_M1 */
    // @ext(0xb8, 0x02, 0x00)
    // model QQ_M1 is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model QQ_M1 is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 STBUP_BREAK_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model STBUP_BREAK_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model STBUP_BREAK_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 STBUP_SHORT_BIT */
    // @ext(0xb8, 0x02, 0x00)
    // model STBUP_SHORT_BIT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model STBUP_SHORT_BIT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 ST_L_SONNE */
    // @ext(0xb8, 0x02, 0x00)
    // model ST_L_SONNE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model ST_L_SONNE is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 V24_KM_ADR_DEFAULT */
    // @ext(0xb8, 0x02, 0x00)
    // model V24_KM_ADR_DEFAULT is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model V24_KM_ADR_DEFAULT is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 VPA_STANDBY */
    // @ext(0xb8, 0x02, 0x00)
    // model VPA_STANDBY is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model VPA_STANDBY is Memory<UIN>;

    // Alias of ACK_5002_BIT
    // /** Konstanten 0x0000 WTOHWRELEASE */
    // @ext(0xb8, 0x02, 0x00)
    // model WTOHWRELEASE is Memory<UCH>;
//    // @ext(0x08, 0x12, 0x00)
//    // model WTOHWRELEASE is Memory<UIN>;

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
    // /** Konstanten 0x0001 AIN_OPT_ERR_AF */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_OPT_ERR_AF is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 AIN_PG_ERR_STBUP */
    // @ext(0xb9, 0x02, 0x01)
    // model AIN_PG_ERR_STBUP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 BITSERDUMP */
    // @ext(0xb9, 0x02, 0x01)
    // model BITSERDUMP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 CB_QQ_M1 */
    // @ext(0xb9, 0x02, 0x01)
    // model CB_QQ_M1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 DEVTST_S0 */
    // @ext(0xb9, 0x02, 0x01)
    // model DEVTST_S0 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 EEA_CONST_ANF */
    // @ext(0xb9, 0x02, 0x01)
    // model EEA_CONST_ANF is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ERR_MITTH */
    // @ext(0xb9, 0x02, 0x01)
    // model ERR_MITTH is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 IBN_ENTL_SW */
    // @ext(0xb9, 0x02, 0x01)
    // model IBN_ENTL_SW is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KMOB12_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model KMOB12_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KMOISSAVED */
    // @ext(0xb9, 0x02, 0x01)
    // model KMOISSAVED is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KONFISTATE_CHANGED_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model KONFISTATE_CHANGED_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 KONFISTATE__INKONFI */
    // @ext(0xb9, 0x02, 0x01)
    // model KONFISTATE__INKONFI is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MASK_RECHTS */
    // @ext(0xb9, 0x02, 0x01)
    // model MASK_RECHTS is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MB_TWFEHLER__ATW_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model MB_TWFEHLER__ATW_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MB_TWFEHLER__STW */
    // @ext(0xb9, 0x02, 0x01)
    // model MB_TWFEHLER__STW is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MENU_L_I */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_L_I is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 MENU_U_KAMINKEHRER */
    // @ext(0xb9, 0x02, 0x01)
    // model MENU_U_KAMINKEHRER is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 P11_ABGASKLAPPE */
    // @ext(0xb9, 0x02, 0x01)
    // model P11_ABGASKLAPPE is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 PI_ESCMAXP1_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model PI_ESCMAXP1_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 REGSTOPP */
    // @ext(0xb9, 0x02, 0x01)
    // model REGSTOPP is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 SEG_F */
    // @ext(0xb9, 0x02, 0x01)
    // model SEG_F is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 STBDOWN_BREAK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model STBDOWN_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 STBDOWN_SHORT_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model STBDOWN_SHORT_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 ST_R_FLAMME */
    // @ext(0xb9, 0x02, 0x01)
    // model ST_R_FLAMME is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 VPA_DOPTST_1 */
    // @ext(0xb9, 0x02, 0x01)
    // model VPA_DOPTST_1 is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 WAU_BREAK_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model WAU_BREAK_BIT is Memory<UCH>;

    // Alias of ACK_5002
    // /** Konstanten 0x0001 WAU_SHORT_BIT */
    // @ext(0xb9, 0x02, 0x01)
    // model WAU_SHORT_BIT is Memory<UCH>;

    /** Konstanten 0x0002 ACK_500A */
    @ext(0xba, 0x02, 0x02)
    model ACK_500A is Memory<UCH>;
//    @ext(0x0a, 0x12, 0x02)
//    model ACK_500A is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 AIN_OPT_ERR_WAU */
    // @ext(0xba, 0x02, 0x02)
    // model AIN_OPT_ERR_WAU is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model AIN_OPT_ERR_WAU is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 AIN_PG_ERR_STBDOWN */
    // @ext(0xba, 0x02, 0x02)
    // model AIN_PG_ERR_STBDOWN is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model AIN_PG_ERR_STBDOWN is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ASCII_B10 */
    // @ext(0xba, 0x02, 0x02)
    // model ASCII_B10 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ASCII_B10 is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ATBUP_BREAK_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ATBUP_BREAK_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ATBUP_BREAK_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ATBUP_SHORT_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model ATBUP_SHORT_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ATBUP_SHORT_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 B10_BREAK_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model B10_BREAK_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model B10_BREAK_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 B10_SHORT_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model B10_SHORT_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model B10_SHORT_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 CB_QQ_ANY */
    // @ext(0xba, 0x02, 0x02)
    // model CB_QQ_ANY is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model CB_QQ_ANY is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 DEVTST_S1 */
    // @ext(0xba, 0x02, 0x02)
    // model DEVTST_S1 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model DEVTST_S1 is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 DEVTST_S2_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model DEVTST_S2_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model DEVTST_S2_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ERR_TEMPNOTH */
    // @ext(0xba, 0x02, 0x02)
    // model ERR_TEMPNOTH is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ERR_TEMPNOTH is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 HKS_FAKT */
    // @ext(0xba, 0x02, 0x02)
    // model HKS_FAKT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model HKS_FAKT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 HZZVV2BIT */
    // @ext(0xba, 0x02, 0x02)
    // model HZZVV2BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model HZZVV2BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 I12_GED_TAUSSEN */
    // @ext(0xba, 0x02, 0x02)
    // model I12_GED_TAUSSEN is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model I12_GED_TAUSSEN is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 IBN_ENTL_OEL */
    // @ext(0xba, 0x02, 0x02)
    // model IBN_ENTL_OEL is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model IBN_ENTL_OEL is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KMOB11_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model KMOB11_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model KMOB11_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KMOB12 */
    // @ext(0xba, 0x02, 0x02)
    // model KMOB12 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model KMOB12 is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KONFISTATE_RD_AINPG_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model KONFISTATE_RD_AINPG_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model KONFISTATE_RD_AINPG_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 KONFISTATE__CHANGED */
    // @ext(0xba, 0x02, 0x02)
    // model KONFISTATE__CHANGED is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model KONFISTATE__CHANGED is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MASK_LINKS */
    // @ext(0xba, 0x02, 0x02)
    // model MASK_LINKS is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MASK_LINKS is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MB_TWFEHLER__ATW */
    // @ext(0xba, 0x02, 0x02)
    // model MB_TWFEHLER__ATW is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MB_TWFEHLER__ATW is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MB_TWFEHLER__TZL_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model MB_TWFEHLER__TZL_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MB_TWFEHLER__TZL_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MENU_L_CURSER_I */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_L_CURSER_I is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MENU_L_CURSER_I is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 MENU_U_WASSERHAHN */
    // @ext(0xba, 0x02, 0x02)
    // model MENU_U_WASSERHAHN is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model MENU_U_WASSERHAHN is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 M_SET_REGSTOPP */
    // @ext(0xba, 0x02, 0x02)
    // model M_SET_REGSTOPP is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model M_SET_REGSTOPP is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 NIMPSPERUMD */
    // @ext(0xba, 0x02, 0x02)
    // model NIMPSPERUMD is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model NIMPSPERUMD is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 P12_EBUS_ADR */
    // @ext(0xba, 0x02, 0x02)
    // model P12_EBUS_ADR is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model P12_EBUS_ADR is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 PI_ESCMAXP1 */
    // @ext(0xba, 0x02, 0x02)
    // model PI_ESCMAXP1 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model PI_ESCMAXP1 is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 PI_SIGNED_BIT */
    // @ext(0xba, 0x02, 0x02)
    // model PI_SIGNED_BIT is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model PI_SIGNED_BIT is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SEG_A */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_A is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model SEG_A is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 SEG_DP */
    // @ext(0xba, 0x02, 0x02)
    // model SEG_DP is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model SEG_DP is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 ST_R_RADIATOR */
    // @ext(0xba, 0x02, 0x02)
    // model ST_R_RADIATOR is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model ST_R_RADIATOR is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TAUFLOES_INV */
    // @ext(0xba, 0x02, 0x02)
    // model TAUFLOES_INV is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TAUFLOES_INV is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TIDLE_R2 */
    // @ext(0xba, 0x02, 0x02)
    // model TIDLE_R2 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TIDLE_R2 is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 TI_05_07_PC */
    // @ext(0xba, 0x02, 0x02)
    // model TI_05_07_PC is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model TI_05_07_PC is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 VHI_MITKOMMA */
    // @ext(0xba, 0x02, 0x02)
    // model VHI_MITKOMMA is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model VHI_MITKOMMA is Memory<UIN>;

    // Alias of ACK_500A
    // /** Konstanten 0x0002 VPA_DOPTST_2 */
    // @ext(0xba, 0x02, 0x02)
    // model VPA_DOPTST_2 is Memory<UCH>;
//    // @ext(0x0a, 0x12, 0x02)
//    // model VPA_DOPTST_2 is Memory<UIN>;

    /** Konstanten 0x0003 AIN_PG_ERR_STB */
    @ext(0xbb, 0x02, 0x03)
    model AIN_PG_ERR_STB is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 AI_STBDOWN */
    // @ext(0xbb, 0x02, 0x03)
    // model AI_STBDOWN is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 ATBDOWN_BREAK_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model ATBDOWN_BREAK_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 ATBDOWN_SHORT_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model ATBDOWN_SHORT_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 B11_BREAK_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model B11_BREAK_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 B11_SHORT_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model B11_SHORT_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 DEVTST_S3_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model DEVTST_S3_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 DOP_WIDTH_MIN */
    // @ext(0xbb, 0x02, 0x03)
    // model DOP_WIDTH_MIN is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 EP17_NOT_AUS */
    // @ext(0xbb, 0x02, 0x03)
    // model EP17_NOT_AUS is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 ERR_CLRTH */
    // @ext(0xbb, 0x02, 0x03)
    // model ERR_CLRTH is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 IBN_MINLAST1 */
    // @ext(0xbb, 0x02, 0x03)
    // model IBN_MINLAST1 is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 IBN_UVW_TOGGLE */
    // @ext(0xbb, 0x02, 0x03)
    // model IBN_UVW_TOGGLE is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 KMOB10_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model KMOB10_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 M2_REQ_REGSTP */
    // @ext(0xbb, 0x02, 0x03)
    // model M2_REQ_REGSTP is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 MENU_U_CURSER_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_MOND is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 MENU_U_CURSER_WASSERHAHN */
    // @ext(0xbb, 0x02, 0x03)
    // model MENU_U_CURSER_WASSERHAHN is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 NSY11 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY11 is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 NSY12 */
    // @ext(0xbb, 0x02, 0x03)
    // model NSY12 is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 P13_MFA */
    // @ext(0xbb, 0x02, 0x03)
    // model P13_MFA is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 PI_MITKOMMA_BIT */
    // @ext(0xbb, 0x02, 0x03)
    // model PI_MITKOMMA_BIT is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 QQ_M11 */
    // @ext(0xbb, 0x02, 0x03)
    // model QQ_M11 is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 ST_L_MOND */
    // @ext(0xbb, 0x02, 0x03)
    // model ST_L_MOND is Memory<UCH>;

    // Alias of AIN_PG_ERR_STB
    // /** Konstanten 0x0003 VPA_DOPTST_3 */
    // @ext(0xbb, 0x02, 0x03)
    // model VPA_DOPTST_3 is Memory<UCH>;

    /** Konstanten 0x0004 AIN_OPT_ERR_B10 */
    @ext(0xbc, 0x02, 0x04)
    model AIN_OPT_ERR_B10 is Memory<UCH>;
//    @ext(0x0c, 0x12, 0x04)
//    model AIN_OPT_ERR_B10 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AIN_PG_ERR_ATBUP */
    // @ext(0xbc, 0x02, 0x04)
    // model AIN_PG_ERR_ATBUP is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AIN_PG_ERR_ATBUP is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_ATBDOWN */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_ATBDOWN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_ATBDOWN is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_STBUP */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_STBUP is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_STBUP is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_TKL */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TKL is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TKL is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_TVK */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TVK is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TVK is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_TZL */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_TZL is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_TZL is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_Y1 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_Y1 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_Y1 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_Y3 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_Y3 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_Y3 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_Y4 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_Y4 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_Y4 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_Y6 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_Y6 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_Y6 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 AI_Y7 */
    // @ext(0xbc, 0x02, 0x04)
    // model AI_Y7 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model AI_Y7 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 ANZ_PGINITS */
    // @ext(0xbc, 0x02, 0x04)
    // model ANZ_PGINITS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ANZ_PGINITS is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 B12_BREAK_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model B12_BREAK_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model B12_BREAK_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 B12_SHORT_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model B12_SHORT_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model B12_SHORT_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 DEVTST_S2 */
    // @ext(0xbc, 0x02, 0x04)
    // model DEVTST_S2 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model DEVTST_S2 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 DOP_IAD_MUX */
    // @ext(0xbc, 0x02, 0x04)
    // model DOP_IAD_MUX is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model DOP_IAD_MUX is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 ERR_LOCKOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model ERR_LOCKOUT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ERR_LOCKOUT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 HZZVV2MASK */
    // @ext(0xbc, 0x02, 0x04)
    // model HZZVV2MASK is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model HZZVV2MASK is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 IBN_MIDLAST */
    // @ext(0xbc, 0x02, 0x04)
    // model IBN_MIDLAST is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model IBN_MIDLAST is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 KMOB11 */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOB11 is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model KMOB11 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 KMOPUPWM_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model KMOPUPWM_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model KMOPUPWM_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 KONFISTATE__RD_AINPG */
    // @ext(0xbc, 0x02, 0x04)
    // model KONFISTATE__RD_AINPG is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model KONFISTATE__RD_AINPG is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 MB_TWFEHLER__TZL */
    // @ext(0xbc, 0x02, 0x04)
    // model MB_TWFEHLER__TZL is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model MB_TWFEHLER__TZL is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 MENU_L_P */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_L_P is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model MENU_L_P is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 MENU_U_SCHIRM */
    // @ext(0xbc, 0x02, 0x04)
    // model MENU_U_SCHIRM is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model MENU_U_SCHIRM is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 NFSOUT */
    // @ext(0xbc, 0x02, 0x04)
    // model NFSOUT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NFSOUT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 NMVV2BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model NMVV2BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model NMVV2BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 P14_VA */
    // @ext(0xbc, 0x02, 0x04)
    // model P14_VA is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model P14_VA is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 PC_REQ_REGSTP */
    // @ext(0xbc, 0x02, 0x04)
    // model PC_REQ_REGSTP is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model PC_REQ_REGSTP is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 PI_MINVALPROC_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model PI_MINVALPROC_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model PI_MINVALPROC_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 PI_SIGNED */
    // @ext(0xbc, 0x02, 0x04)
    // model PI_SIGNED is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model PI_SIGNED is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 RES_CNT_OFF */
    // @ext(0xbc, 0x02, 0x04)
    // model RES_CNT_OFF is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model RES_CNT_OFF is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 SEG_B */
    // @ext(0xbc, 0x02, 0x04)
    // model SEG_B is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model SEG_B is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 ST_R_WASSERHAHN */
    // @ext(0xbc, 0x02, 0x04)
    // model ST_R_WASSERHAHN is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model ST_R_WASSERHAHN is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 TA_AUFLOESUNG */
    // @ext(0xbc, 0x02, 0x04)
    // model TA_AUFLOESUNG is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TA_AUFLOESUNG is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 TVK_POFFS */
    // @ext(0xbc, 0x02, 0x04)
    // model TVK_POFFS is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TVK_POFFS is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 TZL_BREAK_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model TZL_BREAK_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TZL_BREAK_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 TZL_SHORT_BIT */
    // @ext(0xbc, 0x02, 0x04)
    // model TZL_SHORT_BIT is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model TZL_SHORT_BIT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B10
    // /** Konstanten 0x0004 VPA_RUHE */
    // @ext(0xbc, 0x02, 0x04)
    // model VPA_RUHE is Memory<UCH>;
//    // @ext(0x0c, 0x12, 0x04)
//    // model VPA_RUHE is Memory<UIN>;

    /** Konstanten 0x0005 AI_ATBUP */
    @ext(0xbd, 0x02, 0x05)
    model AI_ATBUP is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 ANZ_PGTEMPAD */
    // @ext(0xbd, 0x02, 0x05)
    // model ANZ_PGTEMPAD is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 ATB_DCNT_DOWN */
    // @ext(0xbd, 0x02, 0x05)
    // model ATB_DCNT_DOWN is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 BIT_SERVICE */
    // @ext(0xbd, 0x02, 0x05)
    // model BIT_SERVICE is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 DEV_TST_0V */
    // @ext(0xbd, 0x02, 0x05)
    // model DEV_TST_0V is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 DINC_OVERTEMP */
    // @ext(0xbd, 0x02, 0x05)
    // model DINC_OVERTEMP is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 ELHZ_OK_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model ELHZ_OK_BIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 FW_WTOREV */
    // @ext(0xbd, 0x02, 0x05)
    // model FW_WTOREV is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 HYS_TKL */
    // @ext(0xbd, 0x02, 0x05)
    // model HYS_TKL is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 HZZVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model HZZVVBIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 IBN_MAXLAST */
    // @ext(0xbd, 0x02, 0x05)
    // model IBN_MAXLAST is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 IG_NETZPERIODE */
    // @ext(0xbd, 0x02, 0x05)
    // model IG_NETZPERIODE is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 KMOAF_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model KMOAF_BIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 LENPARAINFOITEM */
    // @ext(0xbd, 0x02, 0x05)
    // model LENPARAINFOITEM is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 MENU_U_CURSER_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_CURSER_SCHIRM is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 MENU_U_MOND */
    // @ext(0xbd, 0x02, 0x05)
    // model MENU_U_MOND is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 NGKORR_VK_MN */
    // @ext(0xbd, 0x02, 0x05)
    // model NGKORR_VK_MN is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 NMVVBIT */
    // @ext(0xbd, 0x02, 0x05)
    // model NMVVBIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 N_50HZ_IN */
    // @ext(0xbd, 0x02, 0x05)
    // model N_50HZ_IN is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 P15_H1IN */
    // @ext(0xbd, 0x02, 0x05)
    // model P15_H1IN is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 PI_MAXVALPROC_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model PI_MAXVALPROC_BIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 STB_DCNT_DOWN */
    // @ext(0xbd, 0x02, 0x05)
    // model STB_DCNT_DOWN is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 ST_L_SCHIRM */
    // @ext(0xbd, 0x02, 0x05)
    // model ST_L_SCHIRM is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 TVK_BREAK_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model TVK_BREAK_BIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 TVK_SHORT_BIT */
    // @ext(0xbd, 0x02, 0x05)
    // model TVK_SHORT_BIT is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 V24_KM_ADR_MAX */
    // @ext(0xbd, 0x02, 0x05)
    // model V24_KM_ADR_MAX is Memory<UCH>;

    // Alias of AI_ATBUP
    // /** Konstanten 0x0005 VPA_VORHZ */
    // @ext(0xbd, 0x02, 0x05)
    // model VPA_VORHZ is Memory<UCH>;

    /** Konstanten 0x0006 AI_4_20MA */
    @ext(0xbe, 0x02, 0x06)
    model AI_4_20MA is Memory<UCH>;
//    @ext(0x0e, 0x12, 0x06)
//    model AI_4_20MA is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 AI_TAF */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TAF is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TAF is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 AI_TB10 */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TB10 is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TB10 is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 AI_TB11 */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TB11 is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TB11 is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 AI_TB12 */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TB12 is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TB12 is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 AI_TWAU */
    // @ext(0xbe, 0x02, 0x06)
    // model AI_TWAU is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model AI_TWAU is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 ATB_MAX_DGRADC */
    // @ext(0xbe, 0x02, 0x06)
    // model ATB_MAX_DGRADC is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model ATB_MAX_DGRADC is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 BEEDITPARA */
    // @ext(0xbe, 0x02, 0x06)
    // model BEEDITPARA is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model BEEDITPARA is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 DOP_UAD_MUX */
    // @ext(0xbe, 0x02, 0x06)
    // model DOP_UAD_MUX is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model DOP_UAD_MUX is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 EXTWST */
    // @ext(0xbe, 0x02, 0x06)
    // model EXTWST is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model EXTWST is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 IBN_MINLAST2 */
    // @ext(0xbe, 0x02, 0x06)
    // model IBN_MINLAST2 is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model IBN_MINLAST2 is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 KMO4_20MA_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model KMO4_20MA_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model KMO4_20MA_BIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 KOMMA */
    // @ext(0xbe, 0x02, 0x06)
    // model KOMMA is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model KOMMA is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 LMAINPARACRC */
    // @ext(0xbe, 0x02, 0x06)
    // model LMAINPARACRC is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model LMAINPARACRC is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 MENU_L_CURSER_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_CURSER_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 MENU_L_CURSER_P */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_CURSER_P is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_CURSER_P is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 MENU_L_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_L_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_L_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 MENU_U_SCHLUESSEL */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SCHLUESSEL is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_U_SCHLUESSEL is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 MENU_U_SONNE */
    // @ext(0xbe, 0x02, 0x06)
    // model MENU_U_SONNE is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model MENU_U_SONNE is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 NHIST2DATA */
    // @ext(0xbe, 0x02, 0x06)
    // model NHIST2DATA is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model NHIST2DATA is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 NMHZBIT */
    // @ext(0xbe, 0x02, 0x06)
    // model NMHZBIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model NMHZBIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 NTC_MIN */
    // @ext(0xbe, 0x02, 0x06)
    // model NTC_MIN is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model NTC_MIN is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 OPTBYTE1__SW_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model OPTBYTE1__SW_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model OPTBYTE1__SW_BIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 P17_H2IN */
    // @ext(0xbe, 0x02, 0x06)
    // model P17_H2IN is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model P17_H2IN is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 PI_OFFVAL_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model PI_OFFVAL_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model PI_OFFVAL_BIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 STB_MAX_DGRADC */
    // @ext(0xbe, 0x02, 0x06)
    // model STB_MAX_DGRADC is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model STB_MAX_DGRADC is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 ST_R_FLAMME_AUS */
    // @ext(0xbe, 0x02, 0x06)
    // model ST_R_FLAMME_AUS is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model ST_R_FLAMME_AUS is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 TKL_BREAK_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model TKL_BREAK_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model TKL_BREAK_BIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 TKL_SHORT_BIT */
    // @ext(0xbe, 0x02, 0x06)
    // model TKL_SHORT_BIT is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model TKL_SHORT_BIT is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 V24_TECHOHW */
    // @ext(0xbe, 0x02, 0x06)
    // model V24_TECHOHW is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model V24_TECHOHW is Memory<UIN>;

    // Alias of AI_4_20MA
    // /** Konstanten 0x0006 VPA_VBL_ANF */
    // @ext(0xbe, 0x02, 0x06)
    // model VPA_VBL_ANF is Memory<UCH>;
//    // @ext(0x0e, 0x12, 0x06)
//    // model VPA_VBL_ANF is Memory<UIN>;

    /** Konstanten 0x0007 ACK_FE01_BIT */
    @ext(0xbf, 0x02, 0x07)
    model ACK_FE01_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 AI_REF */
    // @ext(0xbf, 0x02, 0x07)
    // model AI_REF is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 DEVTST_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model DEVTST_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 DEVTST_SX_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model DEVTST_SX_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 EE_PAGES */
    // @ext(0xbf, 0x02, 0x07)
    // model EE_PAGES is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 FCERR_MB__SET_FCODE_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model FCERR_MB__SET_FCODE_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 FRELI_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model FRELI_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 HZ_KTND__I */
    // @ext(0xbf, 0x02, 0x07)
    // model HZ_KTND__I is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 IBN_DRV_FAN */
    // @ext(0xbf, 0x02, 0x07)
    // model IBN_DRV_FAN is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 IBN_MAX_N_PR */
    // @ext(0xbf, 0x02, 0x07)
    // model IBN_MAX_N_PR is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 KILL_WCM_WST */
    // @ext(0xbf, 0x02, 0x07)
    // model KILL_WCM_WST is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 KMOWAU_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model KMOWAU_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 L_EE_CONST_CRC */
    // @ext(0xbf, 0x02, 0x07)
    // model L_EE_CONST_CRC is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 MENU_U_CURSER_SCHLUESSEL */
    // @ext(0xbf, 0x02, 0x07)
    // model MENU_U_CURSER_SCHLUESSEL is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 OPTBYTE1__ABGKLAPPE_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model OPTBYTE1__ABGKLAPPE_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 P18_HZ_SONDER */
    // @ext(0xbf, 0x02, 0x07)
    // model P18_HZ_SONDER is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 PI_SHOWSONDER_BIT */
    // @ext(0xbf, 0x02, 0x07)
    // model PI_SHOWSONDER_BIT is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 RTHZEIT__BRFG */
    // @ext(0xbf, 0x02, 0x07)
    // model RTHZEIT__BRFG is Memory<UCH>;

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
    // /** Konstanten 0x0007 VPA_VBL */
    // @ext(0xbf, 0x02, 0x07)
    // model VPA_VBL is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 WW_HYS__SELF */
    // @ext(0xbf, 0x02, 0x07)
    // model WW_HYS__SELF is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 RTHZEIT__BRFG__M07 */
    // @ext(0xbf, 0x02, 0x07)
    // model RTHZEIT__BRFG__M07 is Memory<UCH>;

    // Alias of ACK_FE01_BIT
    // /** Konstanten 0x0007 TFRS_ANLAGE__WWFG__M07 */
    // @ext(0xbf, 0x02, 0x07)
    // model TFRS_ANLAGE__WWFG__M07 is Memory<UCH>;

    /** Konstanten 0x0008 AIN_OPT_ERR_B11 */
    @ext(0xb0, 0x02, 0x08)
    model AIN_OPT_ERR_B11 is Memory<UCH>;
//    @ext(0x00, 0x12, 0x08)
//    model AIN_OPT_ERR_B11 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 AIN_PG_ERR_ATBDOWN */
    // @ext(0xb0, 0x02, 0x08)
    // model AIN_PG_ERR_ATBDOWN is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model AIN_PG_ERR_ATBDOWN is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 ASCII_B11 */
    // @ext(0xb0, 0x02, 0x08)
    // model ASCII_B11 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model ASCII_B11 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 ASCII_MIN */
    // @ext(0xb0, 0x02, 0x08)
    // model ASCII_MIN is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model ASCII_MIN is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 DEVTST_S3 */
    // @ext(0xb0, 0x02, 0x08)
    // model DEVTST_S3 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model DEVTST_S3 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 EEA_CONST_CRC */
    // @ext(0xb0, 0x02, 0x08)
    // model EEA_CONST_CRC is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model EEA_CONST_CRC is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 IBN_OFF */
    // @ext(0xb0, 0x02, 0x08)
    // model IBN_OFF is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model IBN_OFF is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 IBN_TIMEOUT */
    // @ext(0xb0, 0x02, 0x08)
    // model IBN_TIMEOUT is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model IBN_TIMEOUT is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 KMOB10 */
    // @ext(0xb0, 0x02, 0x08)
    // model KMOB10 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model KMOB10 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 M_SET_M2_RQ_RS */
    // @ext(0xb0, 0x02, 0x08)
    // model M_SET_M2_RQ_RS is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model M_SET_M2_RQ_RS is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 NGREGNORM */
    // @ext(0xb0, 0x02, 0x08)
    // model NGREGNORM is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model NGREGNORM is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 P20_KORR_AF */
    // @ext(0xb0, 0x02, 0x08)
    // model P20_KORR_AF is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model P20_KORR_AF is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 PI_MITKOMMA */
    // @ext(0xb0, 0x02, 0x08)
    // model PI_MITKOMMA is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model PI_MITKOMMA is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 REGBNK_TASK_1 */
    // @ext(0xb0, 0x02, 0x08)
    // model REGBNK_TASK_1 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model REGBNK_TASK_1 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 SEG_G */
    // @ext(0xb0, 0x02, 0x08)
    // model SEG_G is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model SEG_G is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 TEMP_6MA */
    // @ext(0xb0, 0x02, 0x08)
    // model TEMP_6MA is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model TEMP_6MA is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 TFRS */
    // @ext(0xb0, 0x02, 0x08)
    // model TFRS is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model TFRS is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 VPA_ZUEND_ANF */
    // @ext(0xb0, 0x02, 0x08)
    // model VPA_ZUEND_ANF is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model VPA_ZUEND_ANF is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B11
    // /** Konstanten 0x0008 ZZ_SADR_M11 */
    // @ext(0xb0, 0x02, 0x08)
    // model ZZ_SADR_M11 is Memory<UCH>;
//    // @ext(0x00, 0x12, 0x08)
//    // model ZZ_SADR_M11 is Memory<UIN>;

    /** Konstanten 0x0009 ANZ_TEILN */
    @ext(0xb1, 0x02, 0x09)
    model ANZ_TEILN is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 DOP_WIDTH_MAX */
    // @ext(0xb1, 0x02, 0x09)
    // model DOP_WIDTH_MAX is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 EE_RAM_ANF */
    // @ext(0xb1, 0x02, 0x09)
    // model EE_RAM_ANF is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 IBN_KKB */
    // @ext(0xb1, 0x02, 0x09)
    // model IBN_KKB is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 L_MB2_EE_CONST_CRC */
    // @ext(0xb1, 0x02, 0x09)
    // model L_MB2_EE_CONST_CRC is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 P21_GEBAEUDE */
    // @ext(0xb1, 0x02, 0x09)
    // model P21_GEBAEUDE is Memory<UCH>;

    // Alias of ANZ_TEILN
    // /** Konstanten 0x0009 VPA_IZUEND_NOK */
    // @ext(0xb1, 0x02, 0x09)
    // model VPA_IZUEND_NOK is Memory<UCH>;

    /** Konstanten 0x000A DEV_TST_ESTB2 */
    @ext(0xb2, 0x02, 0x0A)
    model DEV_TST_ESTB2 is Memory<UCH>;
//    @ext(0x02, 0x12, 0x0A)
//    model DEV_TST_ESTB2 is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A DOP_QUANT */
    // @ext(0xb2, 0x02, 0x0A)
    // model DOP_QUANT is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model DOP_QUANT is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A ELHZ_FAULT_TIME */
    // @ext(0xb2, 0x02, 0x0A)
    // model ELHZ_FAULT_TIME is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model ELHZ_FAULT_TIME is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A ERRCNT2_ZUE_MAX */
    // @ext(0xb2, 0x02, 0x0A)
    // model ERRCNT2_ZUE_MAX is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model ERRCNT2_ZUE_MAX is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A FW_GFATYP */
    // @ext(0xb2, 0x02, 0x0A)
    // model FW_GFATYP is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model FW_GFATYP is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A IG_NETZP_NRESET */
    // @ext(0xb2, 0x02, 0x0A)
    // model IG_NETZP_NRESET is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model IG_NETZP_NRESET is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A LCZ_A */
    // @ext(0xb2, 0x02, 0x0A)
    // model LCZ_A is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model LCZ_A is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A NHISTERR */
    // @ext(0xb2, 0x02, 0x0A)
    // model NHISTERR is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model NHISTERR is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A P22_HK_STEILHEIT */
    // @ext(0xb2, 0x02, 0x0A)
    // model P22_HK_STEILHEIT is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model P22_HK_STEILHEIT is Memory<UIN>;

    // Alias of DEV_TST_ESTB2
    // /** Konstanten 0x000A VPA_VORZUEND */
    // @ext(0xb2, 0x02, 0x0A)
    // model VPA_VORZUEND is Memory<UCH>;
//    // @ext(0x02, 0x12, 0x0A)
//    // model VPA_VORZUEND is Memory<UIN>;

    /** Konstanten 0x000B EEAEPIANF */
    @ext(0xb3, 0x02, 0x0B)
    model EEAEPIANF is Memory<UCH>;

    // Alias of EEAEPIANF
    // /** Konstanten 0x000B FC_MAX_STB */
    // @ext(0xb3, 0x02, 0x0B)
    // model FC_MAX_STB is Memory<UCH>;

    // Alias of EEAEPIANF
    // /** Konstanten 0x000B LIMMIN_NOFFS */
    // @ext(0xb3, 0x02, 0x0B)
    // model LIMMIN_NOFFS is Memory<UCH>;

    // Alias of EEAEPIANF
    // /** Konstanten 0x000B L_PRUEF_DAT_CRC */
    // @ext(0xb3, 0x02, 0x0B)
    // model L_PRUEF_DAT_CRC is Memory<UCH>;

    // Alias of EEAEPIANF
    // /** Konstanten 0x000B P23_TFROST */
    // @ext(0xb3, 0x02, 0x0B)
    // model P23_TFROST is Memory<UCH>;

    // Alias of EEAEPIANF
    // /** Konstanten 0x000B VPA_ZUEND */
    // @ext(0xb3, 0x02, 0x0B)
    // model VPA_ZUEND is Memory<UCH>;

    /** Konstanten 0x000C AIN_OPT_B10B11 */
    @ext(0xb4, 0x02, 0x0C)
    model AIN_OPT_B10B11 is Memory<UCH>;
//    @ext(0x04, 0x12, 0x0C)
//    model AIN_OPT_B10B11 is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C AIN_PG_ERR_ATB */
    // @ext(0xb4, 0x02, 0x0C)
    // model AIN_PG_ERR_ATB is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model AIN_PG_ERR_ATB is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C DOP_ANST_BREITE */
    // @ext(0xb4, 0x02, 0x0C)
    // model DOP_ANST_BREITE is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model DOP_ANST_BREITE is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C ELHZ_MAXCNT_TST */
    // @ext(0xb4, 0x02, 0x0C)
    // model ELHZ_MAXCNT_TST is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model ELHZ_MAXCNT_TST is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C FC_MAX_STW */
    // @ext(0xb4, 0x02, 0x0C)
    // model FC_MAX_STW is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model FC_MAX_STW is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C I27_BADDOP */
    // @ext(0xb4, 0x02, 0x0C)
    // model I27_BADDOP is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model I27_BADDOP is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C IBN_UVW_MODULO */
    // @ext(0xb4, 0x02, 0x0C)
    // model IBN_UVW_MODULO is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model IBN_UVW_MODULO is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C KMO_B10B11 */
    // @ext(0xb4, 0x02, 0x0C)
    // model KMO_B10B11 is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model KMO_B10B11 is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C LCZ_C */
    // @ext(0xb4, 0x02, 0x0C)
    // model LCZ_C is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model LCZ_C is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C NG_LIMMIN */
    // @ext(0xb4, 0x02, 0x0C)
    // model NG_LIMMIN is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model NG_LIMMIN is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C P30_MINTVSOLL */
    // @ext(0xb4, 0x02, 0x0C)
    // model P30_MINTVSOLL is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model P30_MINTVSOLL is Memory<UIN>;

    // Alias of AIN_OPT_B10B11
    // /** Konstanten 0x000C VPA_FLSTAB */
    // @ext(0xb4, 0x02, 0x0C)
    // model VPA_FLSTAB is Memory<UCH>;
//    // @ext(0x04, 0x12, 0x0C)
//    // model VPA_FLSTAB is Memory<UIN>;

    /** Konstanten 0x000D BAUDRATE_TAKT */
    @ext(0xb5, 0x02, 0x0D)
    model BAUDRATE_TAKT is Memory<UCH>;

    // Alias of BAUDRATE_TAKT
    // /** Konstanten 0x000D FC_MAX_ATB */
    // @ext(0xb5, 0x02, 0x0D)
    // model FC_MAX_ATB is Memory<UCH>;

    // Alias of BAUDRATE_TAKT
    // /** Konstanten 0x000D P31_MAXTVSOLL */
    // @ext(0xb5, 0x02, 0x0D)
    // model P31_MAXTVSOLL is Memory<UCH>;

    // Alias of BAUDRATE_TAKT
    // /** Konstanten 0x000D VPA_ZTL */
    // @ext(0xb5, 0x02, 0x0D)
    // model VPA_ZTL is Memory<UCH>;

    /** Konstanten 0x000E FC_GRADTVLIST */
    @ext(0xb6, 0x02, 0x0E)
    model FC_GRADTVLIST is Memory<UCH>;
//    @ext(0x06, 0x12, 0x0E)
//    model FC_GRADTVLIST is Memory<UIN>;

    // Alias of FC_GRADTVLIST
    // /** Konstanten 0x000E LCZ_E */
    // @ext(0xb6, 0x02, 0x0E)
    // model LCZ_E is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model LCZ_E is Memory<UIN>;

    // Alias of FC_GRADTVLIST
    // /** Konstanten 0x000E L_EPIPARA */
    // @ext(0xb6, 0x02, 0x0E)
    // model L_EPIPARA is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model L_EPIPARA is Memory<UIN>;

    // Alias of FC_GRADTVLIST
    // /** Konstanten 0x000E NHIST2ERR */
    // @ext(0xb6, 0x02, 0x0E)
    // model NHIST2ERR is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model NHIST2ERR is Memory<UIN>;

    // Alias of FC_GRADTVLIST
    // /** Konstanten 0x000E P32_VL_HYS */
    // @ext(0xb6, 0x02, 0x0E)
    // model P32_VL_HYS is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model P32_VL_HYS is Memory<UIN>;

    // Alias of FC_GRADTVLIST
    // /** Konstanten 0x000E VPA_RBETRIEB */
    // @ext(0xb6, 0x02, 0x0E)
    // model VPA_RBETRIEB is Memory<UCH>;
//    // @ext(0x06, 0x12, 0x0E)
//    // model VPA_RBETRIEB is Memory<UIN>;

    /** Konstanten 0x000F DQLIM__NEG */
    @ext(0xb7, 0x02, 0x0F)
    model DQLIM__NEG is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F DTREGPUPWM__W */
    // @ext(0xb7, 0x02, 0x0F)
    // model DTREGPUPWM__W is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F ERRCNT2_ZUEND */
    // @ext(0xb7, 0x02, 0x0F)
    // model ERRCNT2_ZUEND is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F FC_DTMAXWT */
    // @ext(0xb7, 0x02, 0x0F)
    // model FC_DTMAXWT is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F KESS_OPT__MFA */
    // @ext(0xb7, 0x02, 0x0F)
    // model KESS_OPT__MFA is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F LCZ_F */
    // @ext(0xb7, 0x02, 0x0F)
    // model LCZ_F is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F L_S5_DAT_CRC */
    // @ext(0xb7, 0x02, 0x0F)
    // model L_S5_DAT_CRC is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F MASKFSOUT */
    // @ext(0xb7, 0x02, 0x0F)
    // model MASKFSOUT is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F MAX_NSW__FLAUS */
    // @ext(0xb7, 0x02, 0x0F)
    // model MAX_NSW__FLAUS is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F MAX_OLV_ABW__OLV */
    // @ext(0xb7, 0x02, 0x0F)
    // model MAX_OLV_ABW__OLV is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F NG_REG_ANPASS__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model NG_REG_ANPASS__SELF is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F NM_TI_MASK */
    // @ext(0xb7, 0x02, 0x0F)
    // model NM_TI_MASK is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F OPTBYTE1__TCZTL */
    // @ext(0xb7, 0x02, 0x0F)
    // model OPTBYTE1__TCZTL is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F P33_ATB */
    // @ext(0xb7, 0x02, 0x0F)
    // model P33_ATB is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F TBRMINOFF__SELF */
    // @ext(0xb7, 0x02, 0x0F)
    // model TBRMINOFF__SELF is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F TCSP__VSP */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCSP__VSP is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F TCSZA__START */
    // @ext(0xb7, 0x02, 0x0F)
    // model TCSZA__START is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F TI_05_07MAX */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07MAX is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F TI_05_07_BEKAS */
    // @ext(0xb7, 0x02, 0x0F)
    // model TI_05_07_BEKAS is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F VPA_NBL_ANF */
    // @ext(0xb7, 0x02, 0x0F)
    // model VPA_NBL_ANF is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F Kess_Opt__MFA__M0F */
    // @ext(0xb7, 0x02, 0x0F)
    // model Kess_Opt__MFA__M0F is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F tBrMinOff__Self__M0F */
    // @ext(0xb7, 0x02, 0x0F)
    // model tBrMinOff__Self__M0F is Memory<UCH>;

    // Alias of DQLIM__NEG
    // /** Konstanten 0x000F OptByte1__tcZTL__M0F */
    // @ext(0xb7, 0x02, 0x0F)
    // model OptByte1__tcZTL__M0F is Memory<UCH>;

    /** Konstanten 0x0010 AIN_OPT_ERR_B12 */
    @ext(0xa8, 0x02, 0x10)
    model AIN_OPT_ERR_B12 is Memory<UCH>;
//    @ext(0x18, 0x12, 0x10)
//    model AIN_OPT_ERR_B12 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 AIN_PG_ERR_TZL */
    // @ext(0xa8, 0x02, 0x10)
    // model AIN_PG_ERR_TZL is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model AIN_PG_ERR_TZL is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 DEVTST_S4 */
    // @ext(0xa8, 0x02, 0x10)
    // model DEVTST_S4 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model DEVTST_S4 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 FC_MAX_ATW */
    // @ext(0xa8, 0x02, 0x10)
    // model FC_MAX_ATW is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model FC_MAX_ATW is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 KMOPUPWM */
    // @ext(0xa8, 0x02, 0x10)
    // model KMOPUPWM is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model KMOPUPWM is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 M_SET_PC_RQ_RS */
    // @ext(0xa8, 0x02, 0x10)
    // model M_SET_PC_RQ_RS is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model M_SET_PC_RQ_RS is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 P34_TAKTSPERRE */
    // @ext(0xa8, 0x02, 0x10)
    // model P34_TAKTSPERRE is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model P34_TAKTSPERRE is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 PI_MINVALPROC */
    // @ext(0xa8, 0x02, 0x10)
    // model PI_MINVALPROC is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model PI_MINVALPROC is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 QQ_M2 */
    // @ext(0xa8, 0x02, 0x10)
    // model QQ_M2 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model QQ_M2 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 REGBANK_TASK_2 */
    // @ext(0xa8, 0x02, 0x10)
    // model REGBANK_TASK_2 is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model REGBANK_TASK_2 is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 SEG_C */
    // @ext(0xa8, 0x02, 0x10)
    // model SEG_C is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model SEG_C is Memory<UIN>;

    // Alias of AIN_OPT_ERR_B12
    // /** Konstanten 0x0010 VPA_NBL */
    // @ext(0xa8, 0x02, 0x10)
    // model VPA_NBL is Memory<UCH>;
//    // @ext(0x18, 0x12, 0x10)
//    // model VPA_NBL is Memory<UIN>;

    /** Konstanten 0x0011 DE_MIN_CNT */
    @ext(0xa9, 0x02, 0x11)
    model DE_MIN_CNT is Memory<UCH>;

    // Alias of DE_MIN_CNT
    // /** Konstanten 0x0011 FC_MAX_TZL */
    // @ext(0xa9, 0x02, 0x11)
    // model FC_MAX_TZL is Memory<UCH>;

    // Alias of DE_MIN_CNT
    // /** Konstanten 0x0011 LCZ_H */
    // @ext(0xa9, 0x02, 0x11)
    // model LCZ_H is Memory<UCH>;

    // Alias of DE_MIN_CNT
    // /** Konstanten 0x0011 NHISTDATA */
    // @ext(0xa9, 0x02, 0x11)
    // model NHISTDATA is Memory<UCH>;

    // Alias of DE_MIN_CNT
    // /** Konstanten 0x0011 P36_QMINLAST_KW */
    // @ext(0xa9, 0x02, 0x11)
    // model P36_QMINLAST_KW is Memory<UCH>;

    // Alias of DE_MIN_CNT
    // /** Konstanten 0x0011 VPA_ENTLUFT_OL */
    // @ext(0xa9, 0x02, 0x11)
    // model VPA_ENTLUFT_OL is Memory<UCH>;

    /** Konstanten 0x0012 DDSPERRZAEHLER */
    @ext(0xaa, 0x02, 0x12)
    model DDSPERRZAEHLER is Memory<UCH>;
//    @ext(0x1a, 0x12, 0x12)
//    model DDSPERRZAEHLER is Memory<UIN>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 LCZ_I */
    // @ext(0xaa, 0x02, 0x12)
    // model LCZ_I is Memory<UCH>;
//    // @ext(0x1a, 0x12, 0x12)
//    // model LCZ_I is Memory<UIN>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 P37_QMAX_HZ */
    // @ext(0xaa, 0x02, 0x12)
    // model P37_QMAX_HZ is Memory<UCH>;
//    // @ext(0x1a, 0x12, 0x12)
//    // model P37_QMAX_HZ is Memory<UIN>;

    // Alias of DDSPERRZAEHLER
    // /** Konstanten 0x0012 VPA_ZBL_ANF */
    // @ext(0xaa, 0x02, 0x12)
    // model VPA_ZBL_ANF is Memory<UCH>;
//    // @ext(0x1a, 0x12, 0x12)
//    // model VPA_ZBL_ANF is Memory<UIN>;

    /** Konstanten 0x0013 DDRX_OFFSET_S1 */
    @ext(0xab, 0x02, 0x13)
    model DDRX_OFFSET_S1 is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 FC_MAX_TVK */
    // @ext(0xab, 0x02, 0x13)
    // model FC_MAX_TVK is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 P38_QMAX_WW */
    // @ext(0xab, 0x02, 0x13)
    // model P38_QMAX_WW is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 QQ_M12 */
    // @ext(0xab, 0x02, 0x13)
    // model QQ_M12 is Memory<UCH>;

    // Alias of DDRX_OFFSET_S1
    // /** Konstanten 0x0013 VPA_ZBL */
    // @ext(0xab, 0x02, 0x13)
    // model VPA_ZBL is Memory<UCH>;

    /** Konstanten 0x0014 ASCII_1 */
    @ext(0xac, 0x02, 0x14)
    model ASCII_1 is Memory<UCH>;
//    @ext(0x1c, 0x12, 0x14)
//    model ASCII_1 is Memory<UIN>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 DDTX_OFFSET_CNT */
    // @ext(0xac, 0x02, 0x14)
    // model DDTX_OFFSET_CNT is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DDTX_OFFSET_CNT is Memory<UIN>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 DOP_MIN_SET */
    // @ext(0xac, 0x02, 0x14)
    // model DOP_MIN_SET is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model DOP_MIN_SET is Memory<UIN>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 P40_PU_DL */
    // @ext(0xac, 0x02, 0x14)
    // model P40_PU_DL is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model P40_PU_DL is Memory<UIN>;

    // Alias of ASCII_1
    // /** Konstanten 0x0014 VPA_ERROR */
    // @ext(0xac, 0x02, 0x14)
    // model VPA_ERROR is Memory<UCH>;
//    // @ext(0x1c, 0x12, 0x14)
//    // model VPA_ERROR is Memory<UIN>;

    /** Konstanten 0x0015 ASCII_1X */
    @ext(0xad, 0x02, 0x15)
    model ASCII_1X is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 FC_KFLBILDUNG */
    // @ext(0xad, 0x02, 0x15)
    // model FC_KFLBILDUNG is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 LIMMAX_OFFS */
    // @ext(0xad, 0x02, 0x15)
    // model LIMMAX_OFFS is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 NIT_MIN */
    // @ext(0xad, 0x02, 0x15)
    // model NIT_MIN is Memory<UCH>;

    // Alias of ASCII_1X
    // /** Konstanten 0x0015 P41_PU_NL */
    // @ext(0xad, 0x02, 0x15)
    // model P41_PU_NL is Memory<UCH>;

    /** Konstanten 0x0016 FC_FLAUSFALL */
    @ext(0xae, 0x02, 0x16)
    model FC_FLAUSFALL is Memory<UCH>;
//    @ext(0x1e, 0x12, 0x16)
//    model FC_FLAUSFALL is Memory<UIN>;

    // Alias of FC_FLAUSFALL
    // /** Konstanten 0x0016 P42_PU_QMIN */
    // @ext(0xae, 0x02, 0x16)
    // model P42_PU_QMIN is Memory<UCH>;
//    // @ext(0x1e, 0x12, 0x16)
//    // model P42_PU_QMIN is Memory<UIN>;

    // Alias of FC_FLAUSFALL
    // /** Konstanten 0x0016 WAIT_A_2 */
    // @ext(0xae, 0x02, 0x16)
    // model WAIT_A_2 is Memory<UCH>;
//    // @ext(0x1e, 0x12, 0x16)
//    // model WAIT_A_2 is Memory<UIN>;

    /** Konstanten 0x0017 FC_FRELI */
    @ext(0xaf, 0x02, 0x17)
    model FC_FRELI is Memory<UCH>;

    // Alias of FC_FRELI
    // /** Konstanten 0x0017 P43_PU_QMAX */
    // @ext(0xaf, 0x02, 0x17)
    // model P43_PU_QMAX is Memory<UCH>;

    // Alias of FC_FRELI
    // /** Konstanten 0x0017 QQ_M17 */
    // @ext(0xaf, 0x02, 0x17)
    // model QQ_M17 is Memory<UCH>;

    /** Konstanten 0x0018 FC_NOT_AUS */
    @ext(0xa0, 0x02, 0x18)
    model FC_NOT_AUS is Memory<UCH>;
//    @ext(0x10, 0x12, 0x18)
//    model FC_NOT_AUS is Memory<UIN>;

    // Alias of FC_NOT_AUS
    // /** Konstanten 0x0018 MAXIMPS */
    // @ext(0xa0, 0x02, 0x18)
    // model MAXIMPS is Memory<UCH>;
//    // @ext(0x10, 0x12, 0x18)
//    // model MAXIMPS is Memory<UIN>;

    // Alias of FC_NOT_AUS
    // /** Konstanten 0x0018 P44_PU_DTSOLL */
    // @ext(0xa0, 0x02, 0x18)
    // model P44_PU_DTSOLL is Memory<UCH>;
//    // @ext(0x10, 0x12, 0x18)
//    // model P44_PU_DTSOLL is Memory<UIN>;

    // Alias of FC_NOT_AUS
    // /** Konstanten 0x0018 REGB_TIRP */
    // @ext(0xa0, 0x02, 0x18)
    // model REGB_TIRP is Memory<UCH>;
//    // @ext(0x10, 0x12, 0x18)
//    // model REGB_TIRP is Memory<UIN>;

    /** Konstanten 0x0019 EEAEPICRC */
    @ext(0xa1, 0x02, 0x19)
    model EEAEPICRC is Memory<UCH>;

    // Alias of EEAEPICRC
    // /** Konstanten 0x0019 LCZ_P */
    // @ext(0xa1, 0x02, 0x19)
    // model LCZ_P is Memory<UCH>;

    // Alias of EEAEPICRC
    // /** Konstanten 0x0019 LIMMIN_QMIN */
    // @ext(0xa1, 0x02, 0x19)
    // model LIMMIN_QMIN is Memory<UCH>;

    // Alias of EEAEPICRC
    // /** Konstanten 0x0019 P45_PU_QWW */
    // @ext(0xa1, 0x02, 0x19)
    // model P45_PU_QWW is Memory<UCH>;

    // Alias of EEAEPICRC
    // /** Konstanten 0x0019 ROM_END_L */
    // @ext(0xa1, 0x02, 0x19)
    // model ROM_END_L is Memory<UCH>;

    /** Konstanten 0x001A P50_TWWPLUS */
    @ext(0xa2, 0x02, 0x1A)
    model P50_TWWPLUS is Memory<UCH>;
//    @ext(0x12, 0x12, 0x1A)
//    model P50_TWWPLUS is Memory<UIN>;

    /** Konstanten 0x001B P51_WW_HYS */
    @ext(0xa3, 0x02, 0x1B)
    model P51_WW_HYS is Memory<UCH>;

    /** Konstanten 0x001C I45_WARTUNG */
    @ext(0xa4, 0x02, 0x1C)
    model I45_WARTUNG is Memory<UCH>;
//    @ext(0x14, 0x12, 0x1C)
//    model I45_WARTUNG is Memory<UIN>;

    // Alias of I45_WARTUNG
    // /** Konstanten 0x001C LCZ_S */
    // @ext(0xa4, 0x02, 0x1C)
    // model LCZ_S is Memory<UCH>;
//    // @ext(0x14, 0x12, 0x1C)
//    // model LCZ_S is Memory<UIN>;

    // Alias of I45_WARTUNG
    // /** Konstanten 0x001C P52_MAXBWLADEZEIT */
    // @ext(0xa4, 0x02, 0x1C)
    // model P52_MAXBWLADEZEIT is Memory<UCH>;
//    // @ext(0x14, 0x12, 0x1C)
//    // model P52_MAXBWLADEZEIT is Memory<UIN>;

    /** Konstanten 0x001D ASCII_4 */
    @ext(0xa5, 0x02, 0x1D)
    model ASCII_4 is Memory<UCH>;

    // Alias of ASCII_4
    // /** Konstanten 0x001D EEAEPKANF */
    // @ext(0xa5, 0x02, 0x1D)
    // model EEAEPKANF is Memory<UCH>;

    // Alias of ASCII_4
    // /** Konstanten 0x001D LCZ_T */
    // @ext(0xa5, 0x02, 0x1D)
    // model LCZ_T is Memory<UCH>;

    // Alias of ASCII_4
    // /** Konstanten 0x001D P53_WW_ABSENK */
    // @ext(0xa5, 0x02, 0x1D)
    // model P53_WW_ABSENK is Memory<UCH>;

    // Alias of ASCII_4
    // /** Konstanten 0x001D TWWSOLL_DISABLE */
    // @ext(0xa5, 0x02, 0x1D)
    // model TWWSOLL_DISABLE is Memory<UCH>;

    /** Konstanten 0x001E FAKT_NGISTTOUPM */
    @ext(0xa6, 0x02, 0x1E)
    model FAKT_NGISTTOUPM is Memory<UCH>;
//    @ext(0x16, 0x12, 0x1E)
//    model FAKT_NGISTTOUPM is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E FAKT_TO_NGMAX */
    // @ext(0xa6, 0x02, 0x1E)
    // model FAKT_TO_NGMAX is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model FAKT_TO_NGMAX is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E FC_TVLIST */
    // @ext(0xa6, 0x02, 0x1E)
    // model FC_TVLIST is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model FC_TVLIST is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E LCZ_U */
    // @ext(0xa6, 0x02, 0x1E)
    // model LCZ_U is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model LCZ_U is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E LIMDTMAXWT */
    // @ext(0xa6, 0x02, 0x1E)
    // model LIMDTMAXWT is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model LIMDTMAXWT is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E NGFAKT */
    // @ext(0xa6, 0x02, 0x1E)
    // model NGFAKT is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model NGFAKT is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E P54_PNL_WWZIRK */
    // @ext(0xa6, 0x02, 0x1E)
    // model P54_PNL_WWZIRK is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model P54_PNL_WWZIRK is Memory<UIN>;

    // Alias of FAKT_NGISTTOUPM
    // /** Konstanten 0x001E VPA_OFF */
    // @ext(0xa6, 0x02, 0x1E)
    // model VPA_OFF is Memory<UCH>;
//    // @ext(0x16, 0x12, 0x1E)
//    // model VPA_OFF is Memory<UIN>;

    /** Konstanten 0x001F FC_TABGIST */
    @ext(0xa7, 0x02, 0x1F)
    model FC_TABGIST is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F I48_NFLAUSFALL */
    // @ext(0xa7, 0x02, 0x1F)
    // model I48_NFLAUSFALL is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F MASKDIGOUT */
    // @ext(0xa7, 0x02, 0x1F)
    // model MASKDIGOUT is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F MASK_EBDE_INV */
    // @ext(0xa7, 0x02, 0x1F)
    // model MASK_EBDE_INV is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F P60_QZTL_KW */
    // @ext(0xa7, 0x02, 0x1F)
    // model P60_QZTL_KW is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F QQ_M22 */
    // @ext(0xa7, 0x02, 0x1F)
    // model QQ_M22 is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F SOMMERTEMP__SELF */
    // @ext(0xa7, 0x02, 0x1F)
    // model SOMMERTEMP__SELF is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F VPA_ANLAUF */
    // @ext(0xa7, 0x02, 0x1F)
    // model VPA_ANLAUF is Memory<UCH>;

    // Alias of FC_TABGIST
    // /** Konstanten 0x001F SommerTemp__Self__M1F */
    // @ext(0xa7, 0x02, 0x1F)
    // model SommerTemp__Self__M1F is Memory<UCH>;

    /** Konstanten 0x0020 AIN_PG_ERR_TVK */
    @ext(0x98, 0x02, 0x20)
    model AIN_PG_ERR_TVK is Memory<UCH>;
//    @ext(0x28, 0x12, 0x20)
//    model AIN_PG_ERR_TVK is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 DEVTST_S5 */
    // @ext(0x98, 0x02, 0x20)
    // model DEVTST_S5 is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model DEVTST_S5 is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 FC_TVKIST */
    // @ext(0x98, 0x02, 0x20)
    // model FC_TVKIST is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model FC_TVKIST is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 HZZVVMASK */
    // @ext(0x98, 0x02, 0x20)
    // model HZZVVMASK is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model HZZVVMASK is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 I49_MAX_VKTEMP */
    // @ext(0x98, 0x02, 0x20)
    // model I49_MAX_VKTEMP is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model I49_MAX_VKTEMP is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 KMOAF */
    // @ext(0x98, 0x02, 0x20)
    // model KMOAF is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model KMOAF is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 LCZ_W */
    // @ext(0x98, 0x02, 0x20)
    // model LCZ_W is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model LCZ_W is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 MASK_RESET */
    // @ext(0x98, 0x02, 0x20)
    // model MASK_RESET is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model MASK_RESET is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 P61_TZTL */
    // @ext(0x98, 0x02, 0x20)
    // model P61_TZTL is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model P61_TZTL is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 PI_MAXVALPROC */
    // @ext(0x98, 0x02, 0x20)
    // model PI_MAXVALPROC is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model PI_MAXVALPROC is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 SEG_E */
    // @ext(0x98, 0x02, 0x20)
    // model SEG_E is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model SEG_E is Memory<UIN>;

    // Alias of AIN_PG_ERR_TVK
    // /** Konstanten 0x0020 VPA_BETRIEB */
    // @ext(0x98, 0x02, 0x20)
    // model VPA_BETRIEB is Memory<UCH>;
//    // @ext(0x28, 0x12, 0x20)
//    // model VPA_BETRIEB is Memory<UIN>;

    /** Konstanten 0x0021 FC_TAUSSEN */
    @ext(0x99, 0x02, 0x21)
    model FC_TAUSSEN is Memory<UCH>;

    // Alias of FC_TAUSSEN
    // /** Konstanten 0x0021 GENPOLY8SIG */
    // @ext(0x99, 0x02, 0x21)
    // model GENPOLY8SIG is Memory<UCH>;

    // Alias of FC_TAUSSEN
    // /** Konstanten 0x0021 P62_TNBL */
    // @ext(0x99, 0x02, 0x21)
    // model P62_TNBL is Memory<UCH>;

    // Alias of FC_TAUSSEN
    // /** Konstanten 0x0021 VPA_BLUFT */
    // @ext(0x99, 0x02, 0x21)
    // model VPA_BLUFT is Memory<UCH>;

    /** Konstanten 0x0022 FC_TWWIST */
    @ext(0x9a, 0x02, 0x22)
    model FC_TWWIST is Memory<UCH>;
//    @ext(0x2a, 0x12, 0x22)
//    model FC_TWWIST is Memory<UIN>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0022 P63_IG_SCHWELLE */
    // @ext(0x9a, 0x02, 0x22)
    // model P63_IG_SCHWELLE is Memory<UCH>;
//    // @ext(0x2a, 0x12, 0x22)
//    // model P63_IG_SCHWELLE is Memory<UIN>;

    // Alias of FC_TWWIST
    // /** Konstanten 0x0022 VPA_OELLUFT */
    // @ext(0x9a, 0x02, 0x22)
    // model VPA_OELLUFT is Memory<UCH>;
//    // @ext(0x2a, 0x12, 0x22)
//    // model VPA_OELLUFT is Memory<UIN>;

    /** Konstanten 0x0023 FC_TB12 */
    @ext(0x9b, 0x02, 0x23)
    model FC_TB12 is Memory<UCH>;

    // Alias of FC_TB12
    // /** Konstanten 0x0023 P70_WARTINTERVALL */
    // @ext(0x9b, 0x02, 0x23)
    // model P70_WARTINTERVALL is Memory<UCH>;

    // Alias of FC_TB12
    // /** Konstanten 0x0023 VPA_IN_ERR */
    // @ext(0x9b, 0x02, 0x23)
    // model VPA_IN_ERR is Memory<UCH>;

    /** Konstanten 0x0024 FC_WDW */
    @ext(0x9c, 0x02, 0x24)
    model FC_WDW is Memory<UCH>;
//    @ext(0x2c, 0x12, 0x24)
//    model FC_WDW is Memory<UIN>;

    // Alias of FC_WDW
    // /** Konstanten 0x0024 LCZBLANK */
    // @ext(0x9c, 0x02, 0x24)
    // model LCZBLANK is Memory<UCH>;
//    // @ext(0x2c, 0x12, 0x24)
//    // model LCZBLANK is Memory<UIN>;

    // Alias of FC_WDW
    // /** Konstanten 0x0024 P71_EBUSSPEISUNG */
    // @ext(0x9c, 0x02, 0x24)
    // model P71_EBUSSPEISUNG is Memory<UCH>;
//    // @ext(0x2c, 0x12, 0x24)
//    // model P71_EBUSSPEISUNG is Memory<UIN>;

    // Alias of FC_WDW
    // /** Konstanten 0x0024 VPA_MC_FL */
    // @ext(0x9c, 0x02, 0x24)
    // model VPA_MC_FL is Memory<UCH>;
//    // @ext(0x2c, 0x12, 0x24)
//    // model VPA_MC_FL is Memory<UIN>;

    /** Konstanten 0x0025 FC_TZLIST */
    @ext(0x9d, 0x02, 0x25)
    model FC_TZLIST is Memory<UCH>;

    // Alias of FC_TZLIST
    // /** Konstanten 0x0025 LCZGRAD */
    // @ext(0x9d, 0x02, 0x25)
    // model LCZGRAD is Memory<UCH>;

    // Alias of FC_TZLIST
    // /** Konstanten 0x0025 P73_IBN */
    // @ext(0x9d, 0x02, 0x25)
    // model P73_IBN is Memory<UCH>;

    // Alias of FC_TZLIST
    // /** Konstanten 0x0025 VPA_MC_NG_NOK */
    // @ext(0x9d, 0x02, 0x25)
    // model VPA_MC_NG_NOK is Memory<UCH>;

    /** Konstanten 0x0026 FAKT_FOR_REST */
    @ext(0x9e, 0x02, 0x26)
    model FAKT_FOR_REST is Memory<UCH>;
//    @ext(0x2e, 0x12, 0x26)
//    model FAKT_FOR_REST is Memory<UIN>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 FC_TB10 */
    // @ext(0x9e, 0x02, 0x26)
    // model FC_TB10 is Memory<UCH>;
//    // @ext(0x2e, 0x12, 0x26)
//    // model FC_TB10 is Memory<UIN>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 LCZMINUS */
    // @ext(0x9e, 0x02, 0x26)
    // model LCZMINUS is Memory<UCH>;
//    // @ext(0x2e, 0x12, 0x26)
//    // model LCZMINUS is Memory<UIN>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 P77_NG_KORR_QMAX */
    // @ext(0x9e, 0x02, 0x26)
    // model P77_NG_KORR_QMAX is Memory<UCH>;
//    // @ext(0x2e, 0x12, 0x26)
//    // model P77_NG_KORR_QMAX is Memory<UIN>;

    // Alias of FAKT_FOR_REST
    // /** Konstanten 0x0026 RX_BUF_LEN */
    // @ext(0x9e, 0x02, 0x26)
    // model RX_BUF_LEN is Memory<UCH>;
//    // @ext(0x2e, 0x12, 0x26)
//    // model RX_BUF_LEN is Memory<UIN>;

    /** Konstanten 0x0027 FC_TB11 */
    @ext(0x9f, 0x02, 0x27)
    model FC_TB11 is Memory<UCH>;

    // Alias of FC_TB11
    // /** Konstanten 0x0027 P78_NG_KORR_QMIN */
    // @ext(0x9f, 0x02, 0x27)
    // model P78_NG_KORR_QMIN is Memory<UCH>;

    /** Konstanten 0x0028 ASCII_R */
    @ext(0x90, 0x02, 0x28)
    model ASCII_R is Memory<UCH>;
//    @ext(0x20, 0x12, 0x28)
//    model ASCII_R is Memory<UIN>;

    // Alias of ASCII_R
    // /** Konstanten 0x0028 P79_DOP_KORR */
    // @ext(0x90, 0x02, 0x28)
    // model P79_DOP_KORR is Memory<UCH>;
//    // @ext(0x20, 0x12, 0x28)
//    // model P79_DOP_KORR is Memory<UIN>;

    // Alias of ASCII_R
    // /** Konstanten 0x0028 TVK_NOFFS */
    // @ext(0x90, 0x02, 0x28)
    // model TVK_NOFFS is Memory<UCH>;
//    // @ext(0x20, 0x12, 0x28)
//    // model TVK_NOFFS is Memory<UIN>;

    // Alias of ASCII_R
    // /** Konstanten 0x0028 VPA_EC_ERROR */
    // @ext(0x90, 0x02, 0x28)
    // model VPA_EC_ERROR is Memory<UCH>;
//    // @ext(0x20, 0x12, 0x28)
//    // model VPA_EC_ERROR is Memory<UIN>;

    /** Konstanten 0x0029 FC_ABGASKLAPPE */
    @ext(0x91, 0x02, 0x29)
    model FC_ABGASKLAPPE is Memory<UCH>;

    // Alias of FC_ABGASKLAPPE
    // /** Konstanten 0x0029 MIN_TAUTOSYN */
    // @ext(0x91, 0x02, 0x29)
    // model MIN_TAUTOSYN is Memory<UCH>;

    // Alias of FC_ABGASKLAPPE
    // /** Konstanten 0x0029 NPARAITEM */
    // @ext(0x91, 0x02, 0x29)
    // model NPARAITEM is Memory<UCH>;

    // Alias of FC_ABGASKLAPPE
    // /** Konstanten 0x0029 VPA_EC_ATB */
    // @ext(0x91, 0x02, 0x29)
    // model VPA_EC_ATB is Memory<UCH>;

    /** Konstanten 0x002A FC_PWMPUMPE */
    @ext(0x92, 0x02, 0x2A)
    model FC_PWMPUMPE is Memory<UCH>;
//    @ext(0x22, 0x12, 0x2A)
//    model FC_PWMPUMPE is Memory<UIN>;

    // Alias of FC_PWMPUMPE
    // /** Konstanten 0x002A VPA_EC_ATW */
    // @ext(0x92, 0x02, 0x2A)
    // model VPA_EC_ATW is Memory<UCH>;
//    // @ext(0x22, 0x12, 0x2A)
//    // model VPA_EC_ATW is Memory<UIN>;

    /** Konstanten 0x002B ASCII_F */
    @ext(0x93, 0x02, 0x2B)
    model ASCII_F is Memory<UCH>;

    // Alias of ASCII_F
    // /** Konstanten 0x002B FC_NO_NGSOLL */
    // @ext(0x93, 0x02, 0x2B)
    // model FC_NO_NGSOLL is Memory<UCH>;

    // Alias of ASCII_F
    // /** Konstanten 0x002B VPA_EC_STB */
    // @ext(0x93, 0x02, 0x2B)
    // model VPA_EC_STB is Memory<UCH>;

    /** Konstanten 0x002C FC_NO_NGRUHE */
    @ext(0x94, 0x02, 0x2C)
    model FC_NO_NGRUHE is Memory<UCH>;
//    @ext(0x24, 0x12, 0x2C)
//    model FC_NO_NGRUHE is Memory<UIN>;

    // Alias of FC_NO_NGRUHE
    // /** Konstanten 0x002C VPA_EC_STW */
    // @ext(0x94, 0x02, 0x2C)
    // model VPA_EC_STW is Memory<UCH>;
//    // @ext(0x24, 0x12, 0x2C)
//    // model VPA_EC_STW is Memory<UIN>;

    /** Konstanten 0x002D ATB_MAX_TABW */
    @ext(0x95, 0x02, 0x2D)
    model ATB_MAX_TABW is Memory<UCH>;

    // Alias of ATB_MAX_TABW
    // /** Konstanten 0x002D FC_DOP */
    // @ext(0x95, 0x02, 0x2D)
    // model FC_DOP is Memory<UCH>;

    // Alias of ATB_MAX_TABW
    // /** Konstanten 0x002D IG_PERIODE */
    // @ext(0x95, 0x02, 0x2D)
    // model IG_PERIODE is Memory<UCH>;

    // Alias of ATB_MAX_TABW
    // /** Konstanten 0x002D STB_MAX_TABW */
    // @ext(0x95, 0x02, 0x2D)
    // model STB_MAX_TABW is Memory<UCH>;

    // Alias of ATB_MAX_TABW
    // /** Konstanten 0x002D VPA_EC_NO_TVK */
    // @ext(0x95, 0x02, 0x2D)
    // model VPA_EC_NO_TVK is Memory<UCH>;

    /** Konstanten 0x002E AF_MIN */
    @ext(0x96, 0x02, 0x2E)
    model AF_MIN is Memory<UCH>;
//    @ext(0x26, 0x12, 0x2E)
//    model AF_MIN is Memory<UIN>;

    // Alias of AF_MIN
    // /** Konstanten 0x002E FC_ELHZ */
    // @ext(0x96, 0x02, 0x2E)
    // model FC_ELHZ is Memory<UCH>;
//    // @ext(0x26, 0x12, 0x2E)
//    // model FC_ELHZ is Memory<UIN>;

    // Alias of AF_MIN
    // /** Konstanten 0x002E VPA_EC_NO_TVKSTART */
    // @ext(0x96, 0x02, 0x2E)
    // model VPA_EC_NO_TVKSTART is Memory<UCH>;
//    // @ext(0x26, 0x12, 0x2E)
//    // model VPA_EC_NO_TVKSTART is Memory<UIN>;

    // Alias of AF_MIN
    // /** Konstanten 0x002E WAIT_A_1 */
    // @ext(0x96, 0x02, 0x2E)
    // model WAIT_A_1 is Memory<UCH>;
//    // @ext(0x26, 0x12, 0x2E)
//    // model WAIT_A_1 is Memory<UIN>;

    /** Konstanten 0x002F ASCII_P */
    @ext(0x97, 0x02, 0x2F)
    model ASCII_P is Memory<UCH>;

    // Alias of ASCII_P
    // /** Konstanten 0x002F FC_ZUEND */
    // @ext(0x97, 0x02, 0x2F)
    // model FC_ZUEND is Memory<UCH>;

    // Alias of ASCII_P
    // /** Konstanten 0x002F VPA_EC_NO_TVK_GRAD */
    // @ext(0x97, 0x02, 0x2F)
    // model VPA_EC_NO_TVK_GRAD is Memory<UCH>;

    /** Konstanten 0x0030 FC_OLV */
    @ext(0x88, 0x02, 0x30)
    model FC_OLV is Memory<UCH>;
//    @ext(0x38, 0x12, 0x30)
//    model FC_OLV is Memory<UIN>;

    // Alias of FC_OLV
    // /** Konstanten 0x0030 QQ_M3 */
    // @ext(0x88, 0x02, 0x30)
    // model QQ_M3 is Memory<UCH>;
//    // @ext(0x38, 0x12, 0x30)
//    // model QQ_M3 is Memory<UIN>;

    // Alias of FC_OLV
    // /** Konstanten 0x0030 VPA_EC_TVK_MINMAX */
    // @ext(0x88, 0x02, 0x30)
    // model VPA_EC_TVK_MINMAX is Memory<UCH>;
//    // @ext(0x38, 0x12, 0x30)
//    // model VPA_EC_TVK_MINMAX is Memory<UIN>;

    /** Konstanten 0x0031 FC_OFP */
    @ext(0x89, 0x02, 0x31)
    model FC_OFP is Memory<UCH>;

    // Alias of FC_OFP
    // /** Konstanten 0x0031 L_KES_DAT_CRC */
    // @ext(0x89, 0x02, 0x31)
    // model L_KES_DAT_CRC is Memory<UCH>;

    // Alias of FC_OFP
    // /** Konstanten 0x0031 VPA_EC_TZL */
    // @ext(0x89, 0x02, 0x31)
    // model VPA_EC_TZL is Memory<UCH>;

    /** Konstanten 0x0032 DOP_IAD_DIS */
    @ext(0x8a, 0x02, 0x32)
    model DOP_IAD_DIS is Memory<UCH>;
//    @ext(0x3a, 0x12, 0x32)
//    model DOP_IAD_DIS is Memory<UIN>;

    // Alias of DOP_IAD_DIS
    // /** Konstanten 0x0032 FC_FCODE */
    // @ext(0x8a, 0x02, 0x32)
    // model FC_FCODE is Memory<UCH>;
//    // @ext(0x3a, 0x12, 0x32)
//    // model FC_FCODE is Memory<UIN>;

    // Alias of DOP_IAD_DIS
    // /** Konstanten 0x0032 MAXN_OVERTEMP */
    // @ext(0x8a, 0x02, 0x32)
    // model MAXN_OVERTEMP is Memory<UCH>;
//    // @ext(0x3a, 0x12, 0x32)
//    // model MAXN_OVERTEMP is Memory<UIN>;

    // Alias of DOP_IAD_DIS
    // /** Konstanten 0x0032 RES_MAX_TIME */
    // @ext(0x8a, 0x02, 0x32)
    // model RES_MAX_TIME is Memory<UCH>;
//    // @ext(0x3a, 0x12, 0x32)
//    // model RES_MAX_TIME is Memory<UIN>;

    /** Konstanten 0x0033 AD_4MA */
    @ext(0x8b, 0x02, 0x33)
    model AD_4MA is Memory<UCH>;

    // Alias of AD_4MA
    // /** Konstanten 0x0033 FC_EPK_INCON */
    // @ext(0x8b, 0x02, 0x33)
    // model FC_EPK_INCON is Memory<UCH>;

    /** Konstanten 0x0034 FC_EPB_INCON */
    @ext(0x8c, 0x02, 0x34)
    model FC_EPB_INCON is Memory<UCH>;
//    @ext(0x3c, 0x12, 0x34)
//    model FC_EPB_INCON is Memory<UIN>;

    // Alias of FC_EPB_INCON
    // /** Konstanten 0x0034 TVK_DUMMY */
    // @ext(0x8c, 0x02, 0x34)
    // model TVK_DUMMY is Memory<UCH>;
//    // @ext(0x3c, 0x12, 0x34)
//    // model TVK_DUMMY is Memory<UIN>;

    /** Konstanten 0x0035 FC_AIN_REF_OK */
    @ext(0x8d, 0x02, 0x35)
    model FC_AIN_REF_OK is Memory<UCH>;

    /** Konstanten 0x0036 FC_SYSFEHLER */
    @ext(0x8e, 0x02, 0x36)
    model FC_SYSFEHLER is Memory<UCH>;
//    @ext(0x3e, 0x12, 0x36)
//    model FC_SYSFEHLER is Memory<UIN>;

    /** Konstanten 0x0037 ERRCNT_RELTEST */
    @ext(0x8f, 0x02, 0x37)
    model ERRCNT_RELTEST is Memory<UCH>;

    // Alias of ERRCNT_RELTEST
    // /** Konstanten 0x0037 FC_CVPA_INCON */
    // @ext(0x8f, 0x02, 0x37)
    // model FC_CVPA_INCON is Memory<UCH>;

    // Alias of ERRCNT_RELTEST
    // /** Konstanten 0x0037 QQ_M18 */
    // @ext(0x8f, 0x02, 0x37)
    // model QQ_M18 is Memory<UCH>;

    /** Konstanten 0x0038 ASCII_N */
    @ext(0x80, 0x02, 0x38)
    model ASCII_N is Memory<UCH>;
//    @ext(0x30, 0x12, 0x38)
//    model ASCII_N is Memory<UIN>;

    // Alias of ASCII_N
    // /** Konstanten 0x0038 FC_NEGDEVTST */
    // @ext(0x80, 0x02, 0x38)
    // model FC_NEGDEVTST is Memory<UCH>;
//    // @ext(0x30, 0x12, 0x38)
//    // model FC_NEGDEVTST is Memory<UIN>;

    /** Konstanten 0x0039 DOP_IAD_MIN */
    @ext(0x81, 0x02, 0x39)
    model DOP_IAD_MIN is Memory<UCH>;

    // Alias of DOP_IAD_MIN
    // /** Konstanten 0x0039 FC_TKLIST */
    // @ext(0x81, 0x02, 0x39)
    // model FC_TKLIST is Memory<UCH>;

    /** Konstanten 0x003A FC_MAX_TKL */
    @ext(0x82, 0x02, 0x3A)
    model FC_MAX_TKL is Memory<UCH>;
//    @ext(0x32, 0x12, 0x3A)
//    model FC_MAX_TKL is Memory<UIN>;

    // Alias of FC_MAX_TKL
    // /** Konstanten 0x003A VPA_T1_LO */
    // @ext(0x82, 0x02, 0x3A)
    // model VPA_T1_LO is Memory<UCH>;
//    // @ext(0x32, 0x12, 0x3A)
//    // model VPA_T1_LO is Memory<UIN>;

    /** Konstanten 0x003B NXCL1SEC */
    @ext(0x83, 0x02, 0x3B)
    model NXCL1SEC is Memory<UCH>;

    /** Konstanten 0x003C ERRCNT_ELHZ_MAX */
    @ext(0x84, 0x02, 0x3C)
    model ERRCNT_ELHZ_MAX is Memory<UCH>;
//    @ext(0x34, 0x12, 0x3C)
//    model ERRCNT_ELHZ_MAX is Memory<UIN>;

    // Alias of ERRCNT_ELHZ_MAX
    // /** Konstanten 0x003C FCODE_NOT */
    // @ext(0x84, 0x02, 0x3C)
    // model FCODE_NOT is Memory<UCH>;
//    // @ext(0x34, 0x12, 0x3C)
//    // model FCODE_NOT is Memory<UIN>;

    // Alias of ERRCNT_ELHZ_MAX
    // /** Konstanten 0x003C MB01_LOBITS */
    // @ext(0x84, 0x02, 0x3C)
    // model MB01_LOBITS is Memory<UCH>;
//    // @ext(0x34, 0x12, 0x3C)
//    // model MB01_LOBITS is Memory<UIN>;

    // Alias of ERRCNT_ELHZ_MAX
    // /** Konstanten 0x003C VPA_EC_NO_NGRUHE */
    // @ext(0x84, 0x02, 0x3C)
    // model VPA_EC_NO_NGRUHE is Memory<UCH>;
//    // @ext(0x34, 0x12, 0x3C)
//    // model VPA_EC_NO_NGRUHE is Memory<UIN>;

    /** Konstanten 0x003D ASCII_H */
    @ext(0x85, 0x02, 0x3D)
    model ASCII_H is Memory<UCH>;

    // Alias of ASCII_H
    // /** Konstanten 0x003D MAX_TAUTOSYN */
    // @ext(0x85, 0x02, 0x3D)
    // model MAX_TAUTOSYN is Memory<UCH>;

    // Alias of ASCII_H
    // /** Konstanten 0x003D VPA_EC_NO_NGSOLL */
    // @ext(0x85, 0x02, 0x3D)
    // model VPA_EC_NO_NGSOLL is Memory<UCH>;

    /** Konstanten 0x003E VPA_EC_NG_MINMAX */
    @ext(0x86, 0x02, 0x3E)
    model VPA_EC_NG_MINMAX is Memory<UCH>;
//    @ext(0x36, 0x12, 0x3E)
//    model VPA_EC_NG_MINMAX is Memory<UIN>;

    /** Konstanten 0x003F ASCII_A */
    @ext(0x87, 0x02, 0x3F)
    model ASCII_A is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F ERRCNT_ELHZ */
    // @ext(0x87, 0x02, 0x3F)
    // model ERRCNT_ELHZ is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F PNL_HZ__SELF */
    // @ext(0x87, 0x02, 0x3F)
    // model PNL_HZ__SELF is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F SHOFF_MASK_DIG_OFF */
    // @ext(0x87, 0x02, 0x3F)
    // model SHOFF_MASK_DIG_OFF is Memory<UCH>;

    // Alias of ASCII_A
    // /** Konstanten 0x003F PNL_HZ__Self__M3F */
    // @ext(0x87, 0x02, 0x3F)
    // model PNL_HZ__Self__M3F is Memory<UCH>;

    /** Konstanten 0x0040 AIN_PG_ERR_TKL */
    @ext(0xf8, 0x02, 0x40)
    model AIN_PG_ERR_TKL is Memory<UCH>;
//    @ext(0x48, 0x12, 0x40)
//    model AIN_PG_ERR_TKL is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 ATB_MAX_CNTABW */
    // @ext(0xf8, 0x02, 0x40)
    // model ATB_MAX_CNTABW is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model ATB_MAX_CNTABW is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 DEVTST_S6 */
    // @ext(0xf8, 0x02, 0x40)
    // model DEVTST_S6 is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model DEVTST_S6 is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 ERRCNT_DVT_ADD */
    // @ext(0xf8, 0x02, 0x40)
    // model ERRCNT_DVT_ADD is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model ERRCNT_DVT_ADD is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 ESC_ON */
    // @ext(0xf8, 0x02, 0x40)
    // model ESC_ON is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model ESC_ON is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 KMO4_20MA */
    // @ext(0xf8, 0x02, 0x40)
    // model KMO4_20MA is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model KMO4_20MA is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 LCDMASK_SCHLUESSEL */
    // @ext(0xf8, 0x02, 0x40)
    // model LCDMASK_SCHLUESSEL is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model LCDMASK_SCHLUESSEL is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 MASK_SERVICE */
    // @ext(0xf8, 0x02, 0x40)
    // model MASK_SERVICE is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model MASK_SERVICE is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 M_SET_EXTWST */
    // @ext(0xf8, 0x02, 0x40)
    // model M_SET_EXTWST is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model M_SET_EXTWST is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 OPTBYTE1__SW */
    // @ext(0xf8, 0x02, 0x40)
    // model OPTBYTE1__SW is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model OPTBYTE1__SW is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 PI_OFFVAL */
    // @ext(0xf8, 0x02, 0x40)
    // model PI_OFFVAL is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model PI_OFFVAL is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 PNL_HZ__HAUS */
    // @ext(0xf8, 0x02, 0x40)
    // model PNL_HZ__HAUS is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model PNL_HZ__HAUS is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 STB_MAX_CNTABW */
    // @ext(0xf8, 0x02, 0x40)
    // model STB_MAX_CNTABW is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model STB_MAX_CNTABW is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 TBRMINOFF__EBUSSPEISUNG */
    // @ext(0xf8, 0x02, 0x40)
    // model TBRMINOFF__EBUSSPEISUNG is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model TBRMINOFF__EBUSSPEISUNG is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 PNL_HZ__Haus__M40 */
    // @ext(0xf8, 0x02, 0x40)
    // model PNL_HZ__Haus__M40 is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model PNL_HZ__Haus__M40 is Memory<UIN>;

    // Alias of AIN_PG_ERR_TKL
    // /** Konstanten 0x0040 tBrMinOff__eBusSpeisung__M40 */
    // @ext(0xf8, 0x02, 0x40)
    // model tBrMinOff__eBusSpeisung__M40 is Memory<UCH>;
//    // @ext(0x48, 0x12, 0x40)
//    // model tBrMinOff__eBusSpeisung__M40 is Memory<UIN>;

    /** Konstanten 0x0046 FC_NO_TVKSOLL */
    @ext(0xfe, 0x02, 0x46)
    model FC_NO_TVKSOLL is Memory<UCH>;
//    @ext(0x4e, 0x12, 0x46)
//    model FC_NO_TVKSOLL is Memory<UIN>;

    // Alias of FC_NO_TVKSOLL
    // /** Konstanten 0x0046 VPA_EC_FRELI */
    // @ext(0xfe, 0x02, 0x46)
    // model VPA_EC_FRELI is Memory<UCH>;
//    // @ext(0x4e, 0x12, 0x46)
//    // model VPA_EC_FRELI is Memory<UIN>;

    /** Konstanten 0x0047 FCODE_MAX */
    @ext(0xff, 0x02, 0x47)
    model FCODE_MAX is Memory<UCH>;

    // Alias of FCODE_MAX
    // /** Konstanten 0x0047 FC_TVKGRAD */
    // @ext(0xff, 0x02, 0x47)
    // model FC_TVKGRAD is Memory<UCH>;

    // Alias of FCODE_MAX
    // /** Konstanten 0x0047 VPA_EC_KFLB */
    // @ext(0xff, 0x02, 0x47)
    // model VPA_EC_KFLB is Memory<UCH>;

    /** Konstanten 0x0048 VPA_EC_FLAUSFALL */
    @ext(0xf0, 0x02, 0x48)
    model VPA_EC_FLAUSFALL is Memory<UCH>;
//    @ext(0x40, 0x12, 0x48)
//    model VPA_EC_FLAUSFALL is Memory<UIN>;

    /** Konstanten 0x0049 AD_6MA */
    @ext(0xf1, 0x02, 0x49)
    model AD_6MA is Memory<UCH>;

    /** Konstanten 0x004E EEAEPKCRC */
    @ext(0xf6, 0x02, 0x4E)
    model EEAEPKCRC is Memory<UCH>;
//    @ext(0x46, 0x12, 0x4E)
//    model EEAEPKCRC is Memory<UIN>;

    /** Konstanten 0x004F EEAEPMANF */
    @ext(0xf7, 0x02, 0x4F)
    model EEAEPMANF is Memory<UCH>;

    /** Konstanten 0x0050 DE_MAX_CNT */
    @ext(0xe8, 0x02, 0x50)
    model DE_MAX_CNT is Memory<UCH>;
//    @ext(0x58, 0x12, 0x50)
//    model DE_MAX_CNT is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 FC_EBUS */
    // @ext(0xe8, 0x02, 0x50)
    // model FC_EBUS is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model FC_EBUS is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 K_ID */
    // @ext(0xe8, 0x02, 0x50)
    // model K_ID is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model K_ID is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 MAX_TKL */
    // @ext(0xe8, 0x02, 0x50)
    // model MAX_TKL is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model MAX_TKL is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 VPA_EC_DOP */
    // @ext(0xe8, 0x02, 0x50)
    // model VPA_EC_DOP is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model VPA_EC_DOP is Memory<UIN>;

    // Alias of DE_MAX_CNT
    // /** Konstanten 0x0050 WTOHWVERSION */
    // @ext(0xe8, 0x02, 0x50)
    // model WTOHWVERSION is Memory<UCH>;
//    // @ext(0x58, 0x12, 0x50)
//    // model WTOHWVERSION is Memory<UIN>;

    /** Konstanten 0x0051 VPA_EC_ELHZ */
    @ext(0xe9, 0x02, 0x51)
    model VPA_EC_ELHZ is Memory<UCH>;

    /** Konstanten 0x0052 VPA_EC_ZUEND */
    @ext(0xea, 0x02, 0x52)
    model VPA_EC_ZUEND is Memory<UCH>;
//    @ext(0x5a, 0x12, 0x52)
//    model VPA_EC_ZUEND is Memory<UIN>;

    /** Konstanten 0x0053 VPA_EC_OFP */
    @ext(0xeb, 0x02, 0x53)
    model VPA_EC_OFP is Memory<UCH>;

    /** Konstanten 0x0054 VPA_EC_U230V */
    @ext(0xec, 0x02, 0x54)
    model VPA_EC_U230V is Memory<UCH>;
//    @ext(0x5c, 0x12, 0x54)
//    model VPA_EC_U230V is Memory<UIN>;

    /** Konstanten 0x0055 EEAEPMCRC */
    @ext(0xed, 0x02, 0x55)
    model EEAEPMCRC is Memory<UCH>;

    // Alias of EEAEPMCRC
    // /** Konstanten 0x0055 VPA_EC_WDW */
    // @ext(0xed, 0x02, 0x55)
    // model VPA_EC_WDW is Memory<UCH>;

    /** Konstanten 0x0056 EEA_VPASTART */
    @ext(0xee, 0x02, 0x56)
    model EEA_VPASTART is Memory<UCH>;
//    @ext(0x5e, 0x12, 0x56)
//    model EEA_VPASTART is Memory<UIN>;

    // Alias of EEA_VPASTART
    // /** Konstanten 0x0056 VPA_EC_OLV */
    // @ext(0xee, 0x02, 0x56)
    // model VPA_EC_OLV is Memory<UCH>;
//    // @ext(0x5e, 0x12, 0x56)
//    // model VPA_EC_OLV is Memory<UIN>;

    /** Konstanten 0x0057 EEA_VPASTARTINV */
    @ext(0xef, 0x02, 0x57)
    model EEA_VPASTARTINV is Memory<UCH>;

    // Alias of EEA_VPASTARTINV
    // /** Konstanten 0x0057 VPA_EC_ABGKL */
    // @ext(0xef, 0x02, 0x57)
    // model VPA_EC_ABGKL is Memory<UCH>;

    /** Konstanten 0x0058 EEA_KM_OPT */
    @ext(0xe0, 0x02, 0x58)
    model EEA_KM_OPT is Memory<UCH>;
//    @ext(0x50, 0x12, 0x58)
//    model EEA_KM_OPT is Memory<UIN>;

    /** Konstanten 0x0059 EEA_W_CODE */
    @ext(0xe1, 0x02, 0x59)
    model EEA_W_CODE is Memory<UCH>;

    // Alias of EEA_W_CODE
    // /** Konstanten 0x0059 KLKOMP_FAKT */
    // @ext(0xe1, 0x02, 0x59)
    // model KLKOMP_FAKT is Memory<UCH>;

    /** Konstanten 0x005A EEA_PRUEF_ANF */
    @ext(0xe2, 0x02, 0x5A)
    model EEA_PRUEF_ANF is Memory<UCH>;
//    @ext(0x52, 0x12, 0x5A)
//    model EEA_PRUEF_ANF is Memory<UIN>;

    // Alias of EEA_PRUEF_ANF
    // /** Konstanten 0x005A EEA_PRUEF_LOW */
    // @ext(0xe2, 0x02, 0x5A)
    // model EEA_PRUEF_LOW is Memory<UCH>;
//    // @ext(0x52, 0x12, 0x5A)
//    // model EEA_PRUEF_LOW is Memory<UIN>;

    // Alias of EEA_PRUEF_ANF
    // /** Konstanten 0x005A EEA_WTOREV */
    // @ext(0xe2, 0x02, 0x5A)
    // model EEA_WTOREV is Memory<UCH>;
//    // @ext(0x52, 0x12, 0x5A)
//    // model EEA_WTOREV is Memory<UIN>;

    // Alias of EEA_PRUEF_ANF
    // /** Konstanten 0x005A VPA_EC_TRUHE_TO */
    // @ext(0xe2, 0x02, 0x5A)
    // model VPA_EC_TRUHE_TO is Memory<UCH>;
//    // @ext(0x52, 0x12, 0x5A)
//    // model VPA_EC_TRUHE_TO is Memory<UIN>;

    /** Konstanten 0x005B VPA_EC_TARB_TO */
    @ext(0xe3, 0x02, 0x5B)
    model VPA_EC_TARB_TO is Memory<UCH>;

    /** Konstanten 0x005C EEA_BCC_IDF */
    @ext(0xe4, 0x02, 0x5C)
    model EEA_BCC_IDF is Memory<UCH>;
//    @ext(0x54, 0x12, 0x5C)
//    model EEA_BCC_IDF is Memory<UIN>;

    // Alias of EEA_BCC_IDF
    // /** Konstanten 0x005C VPA_EC_TNBL_TO */
    // @ext(0xe4, 0x02, 0x5C)
    // model VPA_EC_TNBL_TO is Memory<UCH>;
//    // @ext(0x54, 0x12, 0x5C)
//    // model VPA_EC_TNBL_TO is Memory<UIN>;

    /** Konstanten 0x005D EEA_BAUSTAND */
    @ext(0xe5, 0x02, 0x5D)
    model EEA_BAUSTAND is Memory<UCH>;

    /** Konstanten 0x005F EEA_GFATYP */
    @ext(0xe7, 0x02, 0x5F)
    model EEA_GFATYP is Memory<UCH>;

    // Alias of EEA_GFATYP
    // /** Konstanten 0x005F EEA_KUNDE */
    // @ext(0xe7, 0x02, 0x5F)
    // model EEA_KUNDE is Memory<UCH>;

    /** Konstanten 0x0060 EEA_VARIANTE */
    @ext(0xd8, 0x02, 0x60)
    model EEA_VARIANTE is Memory<UCH>;
//    @ext(0x68, 0x12, 0x60)
//    model EEA_VARIANTE is Memory<UIN>;

    // Alias of EEA_VARIANTE
    // /** Konstanten 0x0060 SOMMERTEMP__TBD */
    // @ext(0xd8, 0x02, 0x60)
    // model SOMMERTEMP__TBD is Memory<UCH>;
//    // @ext(0x68, 0x12, 0x60)
//    // model SOMMERTEMP__TBD is Memory<UIN>;

    /** Konstanten 0x0062 EEA_SERIAL_NO */
    @ext(0xda, 0x02, 0x62)
    model EEA_SERIAL_NO is Memory<UCH>;
//    @ext(0x6a, 0x12, 0x62)
//    model EEA_SERIAL_NO is Memory<UIN>;

    /** Konstanten 0x0064 SCHEDULE_TAKT */
    @ext(0xdc, 0x02, 0x64)
    model SCHEDULE_TAKT is Memory<UCH>;
//    @ext(0x6c, 0x12, 0x64)
//    model SCHEDULE_TAKT is Memory<UIN>;

    // Alias of SCHEDULE_TAKT
    // /** Konstanten 0x0064 TAUSWERT_MSEC */
    // @ext(0xdc, 0x02, 0x64)
    // model TAUSWERT_MSEC is Memory<UCH>;
//    // @ext(0x6c, 0x12, 0x64)
//    // model TAUSWERT_MSEC is Memory<UIN>;

    // Alias of SCHEDULE_TAKT
    // /** Konstanten 0x0064 WARTINTHBON_GAIN */
    // @ext(0xdc, 0x02, 0x64)
    // model WARTINTHBON_GAIN is Memory<UCH>;
//    // @ext(0x6c, 0x12, 0x64)
//    // model WARTINTHBON_GAIN is Memory<UIN>;

    /** Konstanten 0x0065 EEA_PRUEF_CRC */
    @ext(0xdd, 0x02, 0x65)
    model EEA_PRUEF_CRC is Memory<UCH>;

    /** Konstanten 0x0066 EEA_FCODE */
    @ext(0xde, 0x02, 0x66)
    model EEA_FCODE is Memory<UCH>;
//    @ext(0x6e, 0x12, 0x66)
//    model EEA_FCODE is Memory<UIN>;

    /** Konstanten 0x006E NXCL1SEC_COLD */
    @ext(0xd6, 0x02, 0x6E)
    model NXCL1SEC_COLD is Memory<UCH>;
//    @ext(0x66, 0x12, 0x6E)
//    model NXCL1SEC_COLD is Memory<UIN>;

    /** Konstanten 0x0070 QQ_M4 */
    @ext(0xc8, 0x02, 0x70)
    model QQ_M4 is Memory<UCH>;
//    @ext(0x78, 0x12, 0x70)
//    model QQ_M4 is Memory<UIN>;

    /** Konstanten 0x0073 REF_MINAUS */
    @ext(0xcb, 0x02, 0x73)
    model REF_MINAUS is Memory<UCH>;

    /** Konstanten 0x0075 ASCII_W */
    @ext(0xcd, 0x02, 0x75)
    model ASCII_W is Memory<UCH>;

    /** Konstanten 0x0077 QQ_M19 */
    @ext(0xcf, 0x02, 0x77)
    model QQ_M19 is Memory<UCH>;

    /** Konstanten 0x007C ADX_TEST */
    @ext(0xc4, 0x02, 0x7C)
    model ADX_TEST is Memory<UCH>;
//    @ext(0x74, 0x12, 0x7C)
//    model ADX_TEST is Memory<UIN>;

    /** Konstanten 0x007F LIMMIN_STEIG */
    @ext(0xc7, 0x02, 0x7F)
    model LIMMIN_STEIG is Memory<UCH>;

    // Alias of LIMMIN_STEIG
    // /** Konstanten 0x007F M_CLR_KILL_WWST */
    // @ext(0xc7, 0x02, 0x7F)
    // model M_CLR_KILL_WWST is Memory<UCH>;

    // Alias of LIMMIN_STEIG
    // /** Konstanten 0x007F ROM_PAGES */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGES is Memory<UCH>;

    // Alias of LIMMIN_STEIG
    // /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    // @ext(0xc7, 0x02, 0x7F)
    // model ROM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0080 ACK_FE01 */
    @ext(0x38, 0x02, 0x80)
    model ACK_FE01 is Memory<UCH>;
//    @ext(0x88, 0x12, 0x80)
//    model ACK_FE01 is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 AIN_PG_ERR_DEV */
    // @ext(0x38, 0x02, 0x80)
    // model AIN_PG_ERR_DEV is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model AIN_PG_ERR_DEV is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 DEVTST_SX */
    // @ext(0x38, 0x02, 0x80)
    // model DEVTST_SX is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model DEVTST_SX is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 KMOWAU */
    // @ext(0x38, 0x02, 0x80)
    // model KMOWAU is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model KMOWAU is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 MB_2_INIT */
    // @ext(0x38, 0x02, 0x80)
    // model MB_2_INIT is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model MB_2_INIT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 M_SET_KILL_WWST */
    // @ext(0x38, 0x02, 0x80)
    // model M_SET_KILL_WWST is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model M_SET_KILL_WWST is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 OPTBYTE1__ABGKLAPPE */
    // @ext(0x38, 0x02, 0x80)
    // model OPTBYTE1__ABGKLAPPE is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model OPTBYTE1__ABGKLAPPE is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PI_SHOWSONDER */
    // @ext(0x38, 0x02, 0x80)
    // model PI_SHOWSONDER is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PI_SHOWSONDER is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PNL_HZ__PDL */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__PDL is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PWM_TEILER */
    // @ext(0x38, 0x02, 0x80)
    // model PWM_TEILER is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PWM_TEILER is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SEG_D */
    // @ext(0x38, 0x02, 0x80)
    // model SEG_D is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model SEG_D is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SOMMERTEMP__BIT */
    // @ext(0x38, 0x02, 0x80)
    // model SOMMERTEMP__BIT is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model SOMMERTEMP__BIT is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 OptByte1__AbgKlappe__M80 */
    // @ext(0x38, 0x02, 0x80)
    // model OptByte1__AbgKlappe__M80 is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model OptByte1__AbgKlappe__M80 is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 PNL_HZ__PDL__M80 */
    // @ext(0x38, 0x02, 0x80)
    // model PNL_HZ__PDL__M80 is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model PNL_HZ__PDL__M80 is Memory<UIN>;

    // Alias of ACK_FE01
    // /** Konstanten 0x0080 SommerTemp__Bit__M80 */
    // @ext(0x38, 0x02, 0x80)
    // model SommerTemp__Bit__M80 is Memory<UCH>;
//    // @ext(0x88, 0x12, 0x80)
//    // model SommerTemp__Bit__M80 is Memory<UIN>;

    /** Konstanten 0x0082 ASCII_B10B11 */
    @ext(0x3a, 0x02, 0x82)
    model ASCII_B10B11 is Memory<UCH>;
//    @ext(0x8a, 0x12, 0x82)
//    model ASCII_B10B11 is Memory<UIN>;

    // Alias of ASCII_B10B11
    // /** Konstanten 0x0082 EM_STACKOVFLOW */
    // @ext(0x3a, 0x02, 0x82)
    // model EM_STACKOVFLOW is Memory<UCH>;
//    // @ext(0x8a, 0x12, 0x82)
//    // model EM_STACKOVFLOW is Memory<UIN>;

    // Alias of ASCII_B10B11
    // /** Konstanten 0x0082 KMO_WWFUEHLER */
    // @ext(0x3a, 0x02, 0x82)
    // model KMO_WWFUEHLER is Memory<UCH>;
//    // @ext(0x8a, 0x12, 0x82)
//    // model KMO_WWFUEHLER is Memory<UIN>;

    /** Konstanten 0x0089 EEA_WRONG_ADR */
    @ext(0x31, 0x02, 0x89)
    model EEA_WRONG_ADR is Memory<UCH>;

    /** Konstanten 0x008A EEA_MAX_VKTEMP */
    @ext(0x32, 0x02, 0x8A)
    model EEA_MAX_VKTEMP is Memory<UCH>;
//    @ext(0x82, 0x12, 0x8A)
//    model EEA_MAX_VKTEMP is Memory<UIN>;

    /** Konstanten 0x008B EEA_TST_EEPROM */
    @ext(0x33, 0x02, 0x8B)
    model EEA_TST_EEPROM is Memory<UCH>;

    // Alias of EEA_TST_EEPROM
    // /** Konstanten 0x008B EEA_TST_EEPROM_LO */
    // @ext(0x33, 0x02, 0x8B)
    // model EEA_TST_EEPROM_LO is Memory<UCH>;

    /** Konstanten 0x008C EEA_TST_EEPROM_HI */
    @ext(0x34, 0x02, 0x8C)
    model EEA_TST_EEPROM_HI is Memory<UCH>;
//    @ext(0x84, 0x12, 0x8C)
//    model EEA_TST_EEPROM_HI is Memory<UIN>;

    /** Konstanten 0x008D EEA_WARTINTHBON */
    @ext(0x35, 0x02, 0x8D)
    model EEA_WARTINTHBON is Memory<UCH>;

    /** Konstanten 0x008F EEA_FCODE_NOT */
    @ext(0x37, 0x02, 0x8F)
    model EEA_FCODE_NOT is Memory<UCH>;

    /** Konstanten 0x0091 EEA_FC_71 */
    @ext(0x29, 0x02, 0x91)
    model EEA_FC_71 is Memory<UCH>;

    /** Konstanten 0x0093 EEA_FC_70 */
    @ext(0x2b, 0x02, 0x93)
    model EEA_FC_70 is Memory<UCH>;

    /** Konstanten 0x0095 EEA_FC_58 */
    @ext(0x2d, 0x02, 0x95)
    model EEA_FC_58 is Memory<UCH>;

    /** Konstanten 0x0097 EEA_FC_57 */
    @ext(0x2f, 0x02, 0x97)
    model EEA_FC_57 is Memory<UCH>;

    /** Konstanten 0x0099 EEA_FC_56 */
    @ext(0x21, 0x02, 0x99)
    model EEA_FC_56 is Memory<UCH>;

    // Alias of EEA_FC_56
    // /** Konstanten 0x0099 REF_MINEIN */
    // @ext(0x21, 0x02, 0x99)
    // model REF_MINEIN is Memory<UCH>;

    /** Konstanten 0x009B ASCII_5 */
    @ext(0x23, 0x02, 0x9B)
    model ASCII_5 is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B ASCII_S */
    // @ext(0x23, 0x02, 0x9B)
    // model ASCII_S is Memory<UCH>;

    // Alias of ASCII_5
    // /** Konstanten 0x009B EEA_FC_55 */
    // @ext(0x23, 0x02, 0x9B)
    // model EEA_FC_55 is Memory<UCH>;

    /** Konstanten 0x009D EEA_FC_53 */
    @ext(0x25, 0x02, 0x9D)
    model EEA_FC_53 is Memory<UCH>;

    /** Konstanten 0x009E ASCII_3 */
    @ext(0x26, 0x02, 0x9E)
    model ASCII_3 is Memory<UCH>;
//    @ext(0x96, 0x12, 0x9E)
//    model ASCII_3 is Memory<UIN>;

    /** Konstanten 0x009F EEA_FC_52 */
    @ext(0x27, 0x02, 0x9F)
    model EEA_FC_52 is Memory<UCH>;

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

    // Alias of ASCII_L
    // /** Konstanten 0x00A1 EEA_FC_51 */
    // @ext(0x19, 0x02, 0xA1)
    // model EEA_FC_51 is Memory<UCH>;

    /** Konstanten 0x00A3 ASCII_C */
    @ext(0x1b, 0x02, 0xA3)
    model ASCII_C is Memory<UCH>;

    // Alias of ASCII_C
    // /** Konstanten 0x00A3 EEA_FC_50 */
    // @ext(0x1b, 0x02, 0xA3)
    // model EEA_FC_50 is Memory<UCH>;

    /** Konstanten 0x00A5 EEA_FC_49 */
    @ext(0x1d, 0x02, 0xA5)
    model EEA_FC_49 is Memory<UCH>;

    /** Konstanten 0x00A7 DOP_UAD_MIN */
    @ext(0x1f, 0x02, 0xA7)
    model DOP_UAD_MIN is Memory<UCH>;

    // Alias of DOP_UAD_MIN
    // /** Konstanten 0x00A7 EEA_FC_48 */
    // @ext(0x1f, 0x02, 0xA7)
    // model EEA_FC_48 is Memory<UCH>;

    /** Konstanten 0x00A8 ASCII_CE */
    @ext(0x10, 0x02, 0xA8)
    model ASCII_CE is Memory<UCH>;
//    @ext(0xa0, 0x12, 0xA8)
//    model ASCII_CE is Memory<UIN>;

    // Alias of ASCII_CE
    // /** Konstanten 0x00A8 NCL1HRS */
    // @ext(0x10, 0x02, 0xA8)
    // model NCL1HRS is Memory<UCH>;
//    // @ext(0xa0, 0x12, 0xA8)
//    // model NCL1HRS is Memory<UIN>;

    /** Konstanten 0x00A9 ASCII_T */
    @ext(0x11, 0x02, 0xA9)
    model ASCII_T is Memory<UCH>;

    // Alias of ASCII_T
    // /** Konstanten 0x00A9 DOP_IAD_MAX */
    // @ext(0x11, 0x02, 0xA9)
    // model DOP_IAD_MAX is Memory<UCH>;

    // Alias of ASCII_T
    // /** Konstanten 0x00A9 EEA_FC_47 */
    // @ext(0x11, 0x02, 0xA9)
    // model EEA_FC_47 is Memory<UCH>;

    /** Konstanten 0x00AB ASCII_E */
    @ext(0x13, 0x02, 0xAB)
    model ASCII_E is Memory<UCH>;

    // Alias of ASCII_E
    // /** Konstanten 0x00AB EEA_FC_46 */
    // @ext(0x13, 0x02, 0xAB)
    // model EEA_FC_46 is Memory<UCH>;

    /** Konstanten 0x00AD EEA_FC_45 */
    @ext(0x15, 0x02, 0xAD)
    model EEA_FC_45 is Memory<UCH>;

    /** Konstanten 0x00AE ASCII_2 */
    @ext(0x16, 0x02, 0xAE)
    model ASCII_2 is Memory<UCH>;
//    @ext(0xa6, 0x12, 0xAE)
//    model ASCII_2 is Memory<UIN>;

    // Alias of ASCII_2
    // /** Konstanten 0x00AE CS_BYTE_WR */
    // @ext(0x16, 0x02, 0xAE)
    // model CS_BYTE_WR is Memory<UCH>;
//    // @ext(0xa6, 0x12, 0xAE)
//    // model CS_BYTE_WR is Memory<UIN>;

    /** Konstanten 0x00AF CS_BYTE_RD */
    @ext(0x17, 0x02, 0xAF)
    model CS_BYTE_RD is Memory<UCH>;

    // Alias of CS_BYTE_RD
    // /** Konstanten 0x00AF EEA_FC_44 */
    // @ext(0x17, 0x02, 0xAF)
    // model EEA_FC_44 is Memory<UCH>;

    /** Konstanten 0x00B1 EEA_FC_43 */
    @ext(0x09, 0x02, 0xB1)
    model EEA_FC_43 is Memory<UCH>;

    /** Konstanten 0x00B3 EEA_FC_42 */
    @ext(0x0b, 0x02, 0xB3)
    model EEA_FC_42 is Memory<UCH>;

    /** Konstanten 0x00B4 NCL20SEC */
    @ext(0x0c, 0x02, 0xB4)
    model NCL20SEC is Memory<UCH>;
//    @ext(0xbc, 0x12, 0xB4)
//    model NCL20SEC is Memory<UIN>;

    /** Konstanten 0x00B5 EEA_FC_41 */
    @ext(0x0d, 0x02, 0xB5)
    model EEA_FC_41 is Memory<UCH>;

    /** Konstanten 0x00B7 ASCII_0 */
    @ext(0x0f, 0x02, 0xB7)
    model ASCII_0 is Memory<UCH>;

    // Alias of ASCII_0
    // /** Konstanten 0x00B7 EEA_FC_39 */
    // @ext(0x0f, 0x02, 0xB7)
    // model EEA_FC_39 is Memory<UCH>;

    /** Konstanten 0x00B8 ASCII_O */
    @ext(0x00, 0x02, 0xB8)
    model ASCII_O is Memory<UCH>;
//    @ext(0xb0, 0x12, 0xB8)
//    model ASCII_O is Memory<UIN>;

    /** Konstanten 0x00B9 ASCII_B */
    @ext(0x01, 0x02, 0xB9)
    model ASCII_B is Memory<UCH>;

    // Alias of ASCII_B
    // /** Konstanten 0x00B9 EEA_FC_38 */
    // @ext(0x01, 0x02, 0xB9)
    // model EEA_FC_38 is Memory<UCH>;

    /** Konstanten 0x00BB EEA_FC_37 */
    @ext(0x03, 0x02, 0xBB)
    model EEA_FC_37 is Memory<UCH>;

    /** Konstanten 0x00BC ASCII_D */
    @ext(0x04, 0x02, 0xBC)
    model ASCII_D is Memory<UCH>;
//    @ext(0xb4, 0x12, 0xBC)
//    model ASCII_D is Memory<UIN>;

    /** Konstanten 0x00BD EEA_FC_36 */
    @ext(0x05, 0x02, 0xBD)
    model EEA_FC_36 is Memory<UCH>;

    /** Konstanten 0x00BF EEA_FC_35 */
    @ext(0x07, 0x02, 0xBF)
    model EEA_FC_35 is Memory<UCH>;

    // Alias of EEA_FC_35
    // /** Konstanten 0x00BF M_CLR_EXTWST */
    // @ext(0x07, 0x02, 0xBF)
    // model M_CLR_EXTWST is Memory<UCH>;

    /** Konstanten 0x00C0 ERRCNT_DEVTST */
    @ext(0x78, 0x02, 0xC0)
    model ERRCNT_DEVTST is Memory<UCH>;
//    @ext(0xc8, 0x12, 0xC0)
//    model ERRCNT_DEVTST is Memory<UIN>;

    // Alias of ERRCNT_DEVTST
    // /** Konstanten 0x00C0 ERRCNT_DVT_MAX */
    // @ext(0x78, 0x02, 0xC0)
    // model ERRCNT_DVT_MAX is Memory<UCH>;
//    // @ext(0xc8, 0x12, 0xC0)
//    // model ERRCNT_DVT_MAX is Memory<UIN>;

    // Alias of ERRCNT_DEVTST
    // /** Konstanten 0x00C0 IDENT_BWZ2 */
    // @ext(0x78, 0x02, 0xC0)
    // model IDENT_BWZ2 is Memory<UCH>;
//    // @ext(0xc8, 0x12, 0xC0)
//    // model IDENT_BWZ2 is Memory<UIN>;

    /** Konstanten 0x00C1 EEA_FC_34 */
    @ext(0x79, 0x02, 0xC1)
    model EEA_FC_34 is Memory<UCH>;

    /** Konstanten 0x00C3 EEA_FC_33 */
    @ext(0x7b, 0x02, 0xC3)
    model EEA_FC_33 is Memory<UCH>;

    /** Konstanten 0x00C5 EEA_FC_32 */
    @ext(0x7d, 0x02, 0xC5)
    model EEA_FC_32 is Memory<UCH>;

    /** Konstanten 0x00C7 EEA_FC_31 */
    @ext(0x7f, 0x02, 0xC7)
    model EEA_FC_31 is Memory<UCH>;

    /** Konstanten 0x00C8 DOP_PER_MIN */
    @ext(0x70, 0x02, 0xC8)
    model DOP_PER_MIN is Memory<UCH>;
//    @ext(0xc0, 0x12, 0xC8)
//    model DOP_PER_MIN is Memory<UIN>;

    // Alias of DOP_PER_MIN
    // /** Konstanten 0x00C8 MAXDELTAT */
    // @ext(0x70, 0x02, 0xC8)
    // model MAXDELTAT is Memory<UCH>;
//    // @ext(0xc0, 0x12, 0xC8)
//    // model MAXDELTAT is Memory<UIN>;

    // Alias of DOP_PER_MIN
    // /** Konstanten 0x00C8 NCL100MSEC */
    // @ext(0x70, 0x02, 0xC8)
    // model NCL100MSEC is Memory<UCH>;
//    // @ext(0xc0, 0x12, 0xC8)
//    // model NCL100MSEC is Memory<UIN>;

    // Alias of DOP_PER_MIN
    // /** Konstanten 0x00C8 NGKORR_VK_Y1 */
    // @ext(0x70, 0x02, 0xC8)
    // model NGKORR_VK_Y1 is Memory<UCH>;
//    // @ext(0xc0, 0x12, 0xC8)
//    // model NGKORR_VK_Y1 is Memory<UIN>;

    /** Konstanten 0x00C9 EEA_FC_30 */
    @ext(0x71, 0x02, 0xC9)
    model EEA_FC_30 is Memory<UCH>;

    /** Konstanten 0x00CB EEA_FC_24 */
    @ext(0x73, 0x02, 0xCB)
    model EEA_FC_24 is Memory<UCH>;

    /** Konstanten 0x00CD EEA_FC_23 */
    @ext(0x75, 0x02, 0xCD)
    model EEA_FC_23 is Memory<UCH>;

    /** Konstanten 0x00CF EEA_FC_22 */
    @ext(0x77, 0x02, 0xCF)
    model EEA_FC_22 is Memory<UCH>;

    /** Konstanten 0x00D1 EEA_FC_21 */
    @ext(0x69, 0x02, 0xD1)
    model EEA_FC_21 is Memory<UCH>;

    /** Konstanten 0x00D3 AD_20MA */
    @ext(0x6b, 0x02, 0xD3)
    model AD_20MA is Memory<UCH>;

    // Alias of AD_20MA
    // /** Konstanten 0x00D3 EEA_FC_19 */
    // @ext(0x6b, 0x02, 0xD3)
    // model EEA_FC_19 is Memory<UCH>;

    /** Konstanten 0x00D5 EEA_FC_17 */
    @ext(0x6d, 0x02, 0xD5)
    model EEA_FC_17 is Memory<UCH>;

    /** Konstanten 0x00D7 EEA_FC_16 */
    @ext(0x6f, 0x02, 0xD7)
    model EEA_FC_16 is Memory<UCH>;

    /** Konstanten 0x00D9 EEA_FC_15 */
    @ext(0x61, 0x02, 0xD9)
    model EEA_FC_15 is Memory<UCH>;

    /** Konstanten 0x00DA REF_MAXEIN */
    @ext(0x62, 0x02, 0xDA)
    model REF_MAXEIN is Memory<UCH>;
//    @ext(0xd2, 0x12, 0xDA)
//    model REF_MAXEIN is Memory<UIN>;

    /** Konstanten 0x00DB EEA_FC_14 */
    @ext(0x63, 0x02, 0xDB)
    model EEA_FC_14 is Memory<UCH>;

    /** Konstanten 0x00DD AD_21MA */
    @ext(0x65, 0x02, 0xDD)
    model AD_21MA is Memory<UCH>;

    // Alias of AD_21MA
    // /** Konstanten 0x00DD EEA_FC_13 */
    // @ext(0x65, 0x02, 0xDD)
    // model EEA_FC_13 is Memory<UCH>;

    // Alias of AD_21MA
    // /** Konstanten 0x00DD LIMMAX_STEIG */
    // @ext(0x65, 0x02, 0xDD)
    // model LIMMAX_STEIG is Memory<UCH>;

    /** Konstanten 0x00DF EEA_FC_12 */
    @ext(0x67, 0x02, 0xDF)
    model EEA_FC_12 is Memory<UCH>;

    /** Konstanten 0x00E0 MASKDIGOUT_INV */
    @ext(0x58, 0x02, 0xE0)
    model MASKDIGOUT_INV is Memory<UCH>;
//    @ext(0xe8, 0x12, 0xE0)
//    model MASKDIGOUT_INV is Memory<UIN>;

    // Alias of MASKDIGOUT_INV
    // /** Konstanten 0x00E0 MASK_EBDE */
    // @ext(0x58, 0x02, 0xE0)
    // model MASK_EBDE is Memory<UCH>;
//    // @ext(0xe8, 0x12, 0xE0)
//    // model MASK_EBDE is Memory<UIN>;

    /** Konstanten 0x00E1 EEA_FC_11 */
    @ext(0x59, 0x02, 0xE1)
    model EEA_FC_11 is Memory<UCH>;

    // Alias of EEA_FC_11
    // /** Konstanten 0x00E1 REF_MAXAUS */
    // @ext(0x59, 0x02, 0xE1)
    // model REF_MAXAUS is Memory<UCH>;

    /** Konstanten 0x00E2 DOP_UAD_MAX */
    @ext(0x5a, 0x02, 0xE2)
    model DOP_UAD_MAX is Memory<UCH>;
//    @ext(0xea, 0x12, 0xE2)
//    model DOP_UAD_MAX is Memory<UIN>;

    /** Konstanten 0x00E3 EEA_RES_CNT */
    @ext(0x5b, 0x02, 0xE3)
    model EEA_RES_CNT is Memory<UCH>;

    /** Konstanten 0x00E6 EEA_SHUT_OFF */
    @ext(0x5e, 0x02, 0xE6)
    model EEA_SHUT_OFF is Memory<UCH>;
//    @ext(0xee, 0x12, 0xE6)
//    model EEA_SHUT_OFF is Memory<UIN>;

    /** Konstanten 0x00E8 EEA_N_KON */
    @ext(0x50, 0x02, 0xE8)
    model EEA_N_KON is Memory<UCH>;
//    @ext(0xe0, 0x12, 0xE8)
//    model EEA_N_KON is Memory<UIN>;

    /** Konstanten 0x00EA EEA_N_PON */
    @ext(0x52, 0x02, 0xEA)
    model EEA_N_PON is Memory<UCH>;
//    @ext(0xe2, 0x12, 0xEA)
//    model EEA_N_PON is Memory<UIN>;

    /** Konstanten 0x00EB AF_MAX */
    @ext(0x53, 0x02, 0xEB)
    model AF_MAX is Memory<UCH>;

    /** Konstanten 0x00EC EEA_H_PON */
    @ext(0x54, 0x02, 0xEC)
    model EEA_H_PON is Memory<UCH>;
//    @ext(0xe4, 0x12, 0xEC)
//    model EEA_H_PON is Memory<UIN>;

    // Alias of EEA_H_PON
    // /** Konstanten 0x00EC NIT_MAX */
    // @ext(0x54, 0x02, 0xEC)
    // model NIT_MAX is Memory<UCH>;
//    // @ext(0xe4, 0x12, 0xEC)
//    // model NIT_MAX is Memory<UIN>;

    /** Konstanten 0x00EF EEA_IG_BADCNT */
    @ext(0x57, 0x02, 0xEF)
    model EEA_IG_BADCNT is Memory<UCH>;

    // Alias of EEA_IG_BADCNT
    // /** Konstanten 0x00EF M_CLR_PC_RQ_RS */
    // @ext(0x57, 0x02, 0xEF)
    // model M_CLR_PC_RQ_RS is Memory<UCH>;

    /** Konstanten 0x00F0 DQLIM__POS */
    @ext(0x48, 0x02, 0xF0)
    model DQLIM__POS is Memory<UCH>;
//    @ext(0xf8, 0x12, 0xF0)
//    model DQLIM__POS is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 KESS_OPT__VA */
    // @ext(0x48, 0x02, 0xF0)
    // model KESS_OPT__VA is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model KESS_OPT__VA is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 MASKFSOUT_INV */
    // @ext(0x48, 0x02, 0xF0)
    // model MASKFSOUT_INV is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model MASKFSOUT_INV is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 MAX_NSW__BRSTART */
    // @ext(0x48, 0x02, 0xF0)
    // model MAX_NSW__BRSTART is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model MAX_NSW__BRSTART is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 NGIST_MAX */
    // @ext(0x48, 0x02, 0xF0)
    // model NGIST_MAX is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NGIST_MAX is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 NG_REG_ANPASS__START */
    // @ext(0x48, 0x02, 0xF0)
    // model NG_REG_ANPASS__START is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NG_REG_ANPASS__START is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 NM_TI_FG_MASK */
    // @ext(0x48, 0x02, 0xF0)
    // model NM_TI_FG_MASK is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model NM_TI_FG_MASK is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 QQ_M5 */
    // @ext(0x48, 0x02, 0xF0)
    // model QQ_M5 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model QQ_M5 is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 TCSZA__BETRIEB */
    // @ext(0x48, 0x02, 0xF0)
    // model TCSZA__BETRIEB is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model TCSZA__BETRIEB is Memory<UIN>;

    // Alias of DQLIM__POS
    // /** Konstanten 0x00F0 Kess_Opt__VA__MF0 */
    // @ext(0x48, 0x02, 0xF0)
    // model Kess_Opt__VA__MF0 is Memory<UCH>;
//    // @ext(0xf8, 0x12, 0xF0)
//    // model Kess_Opt__VA__MF0 is Memory<UIN>;

    /** Konstanten 0x00F1 EEA_NZUEND_HI */
    @ext(0x49, 0x02, 0xF1)
    model EEA_NZUEND_HI is Memory<UCH>;

    // Alias of EEA_NZUEND_HI
    // /** Konstanten 0x00F1 QQ_M10 */
    // @ext(0x49, 0x02, 0xF1)
    // model QQ_M10 is Memory<UCH>;

    // Alias of EEA_NZUEND_HI
    // /** Konstanten 0x00F1 TVK_STEIG */
    // @ext(0x49, 0x02, 0xF1)
    // model TVK_STEIG is Memory<UCH>;

    /** Konstanten 0x00F3 AIN_PG_ERR_ATB_INV */
    @ext(0x4b, 0x02, 0xF3)
    model AIN_PG_ERR_ATB_INV is Memory<UCH>;

    // Alias of AIN_PG_ERR_ATB_INV
    // /** Konstanten 0x00F3 EEA_NZUEND_LO */
    // @ext(0x4b, 0x02, 0xF3)
    // model EEA_NZUEND_LO is Memory<UCH>;

    /** Konstanten 0x00F5 EEA_HBRON_HI */
    @ext(0x4d, 0x02, 0xF5)
    model EEA_HBRON_HI is Memory<UCH>;

    /** Konstanten 0x00F6 TVK_AD_MAX */
    @ext(0x4e, 0x02, 0xF6)
    model TVK_AD_MAX is Memory<UCH>;
//    @ext(0xfe, 0x12, 0xF6)
//    model TVK_AD_MAX is Memory<UIN>;

    // Alias of TVK_AD_MAX
    // /** Konstanten 0x00F6 ZZ_SADR_M10 */
    // @ext(0x4e, 0x02, 0xF6)
    // model ZZ_SADR_M10 is Memory<UCH>;
//    // @ext(0xfe, 0x12, 0xF6)
//    // model ZZ_SADR_M10 is Memory<UIN>;

    /** Konstanten 0x00F7 EEA_HBRON_LO */
    @ext(0x4f, 0x02, 0xF7)
    model EEA_HBRON_LO is Memory<UCH>;

    // Alias of EEA_HBRON_LO
    // /** Konstanten 0x00F7 M_CLR_M2_RQ_RS */
    // @ext(0x4f, 0x02, 0xF7)
    // model M_CLR_M2_RQ_RS is Memory<UCH>;

    // Alias of EEA_HBRON_LO
    // /** Konstanten 0x00F7 QQ_M20 */
    // @ext(0x4f, 0x02, 0xF7)
    // model QQ_M20 is Memory<UCH>;

    /** Konstanten 0x00F8 HZ_KTND__D */
    @ext(0x40, 0x02, 0xF8)
    model HZ_KTND__D is Memory<UCH>;
//    @ext(0xf0, 0x12, 0xF8)
//    model HZ_KTND__D is Memory<UIN>;

    // Alias of HZ_KTND__D
    // /** Konstanten 0x00F8 TFRS_ANLAGE__SELF */
    // @ext(0x40, 0x02, 0xF8)
    // model TFRS_ANLAGE__SELF is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model TFRS_ANLAGE__SELF is Memory<UIN>;

    // Alias of HZ_KTND__D
    // /** Konstanten 0x00F8 WW_HYS__WWPWM */
    // @ext(0x40, 0x02, 0xF8)
    // model WW_HYS__WWPWM is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model WW_HYS__WWPWM is Memory<UIN>;

    // Alias of HZ_KTND__D
    // /** Konstanten 0x00F8 tFrS_Anlage__Self__MF8 */
    // @ext(0x40, 0x02, 0xF8)
    // model tFrS_Anlage__Self__MF8 is Memory<UCH>;
//    // @ext(0xf0, 0x12, 0xF8)
//    // model tFrS_Anlage__Self__MF8 is Memory<UIN>;

    /** Konstanten 0x00F9 EEA_LOEL_HI */
    @ext(0x41, 0x02, 0xF9)
    model EEA_LOEL_HI is Memory<UCH>;

    // Alias of EEA_LOEL_HI
    // /** Konstanten 0x00F9 NTC_MAX */
    // @ext(0x41, 0x02, 0xF9)
    // model NTC_MAX is Memory<UCH>;

    /** Konstanten 0x00FA DEV_TST_5V */
    @ext(0x42, 0x02, 0xFA)
    model DEV_TST_5V is Memory<UCH>;
//    @ext(0xf2, 0x12, 0xFA)
//    model DEV_TST_5V is Memory<UIN>;

    // Alias of DEV_TST_5V
    // /** Konstanten 0x00FA MX_RES_CYCL */
    // @ext(0x42, 0x02, 0xFA)
    // model MX_RES_CYCL is Memory<UCH>;
//    // @ext(0xf2, 0x12, 0xFA)
//    // model MX_RES_CYCL is Memory<UIN>;

    /** Konstanten 0x00FB EEA_LOEL_LO */
    @ext(0x43, 0x02, 0xFB)
    model EEA_LOEL_LO is Memory<UCH>;

    /** Konstanten 0x00FC AIN_PG_ERR_STB_INV */
    @ext(0x44, 0x02, 0xFC)
    model AIN_PG_ERR_STB_INV is Memory<UCH>;
//    @ext(0xf4, 0x12, 0xFC)
//    model AIN_PG_ERR_STB_INV is Memory<UIN>;

    /** Konstanten 0x00FD EEA_NFLAUSFALL */
    @ext(0x45, 0x02, 0xFD)
    model EEA_NFLAUSFALL is Memory<UCH>;

    // Alias of EEA_NFLAUSFALL
    // /** Konstanten 0x00FD M_CLR_REGSTOPP */
    // @ext(0x45, 0x02, 0xFD)
    // model M_CLR_REGSTOPP is Memory<UCH>;

    /** Konstanten 0x00FE EEA_MAX_ADR */
    @ext(0x46, 0x02, 0xFE)
    model EEA_MAX_ADR is Memory<UCH>;
//    @ext(0xf6, 0x12, 0xFE)
//    model EEA_MAX_ADR is Memory<UIN>;

    /** Konstanten 0x00FF ADC_BREAK */
    @ext(0x47, 0x02, 0xFF)
    model ADC_BREAK is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF CNTVPA_ERRMERK */
    // @ext(0x47, 0x02, 0xFF)
    // model CNTVPA_ERRMERK is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF DOP_AUS */
    // @ext(0x47, 0x02, 0xFF)
    // model DOP_AUS is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF EEA_HL_HIADR */
    // @ext(0x47, 0x02, 0xFF)
    // model EEA_HL_HIADR is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF OLV_TOL */
    // @ext(0x47, 0x02, 0xFF)
    // model OLV_TOL is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF XRAM_PAGE_DEFAULT */
    // @ext(0x47, 0x02, 0xFF)
    // model XRAM_PAGE_DEFAULT is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF v24_KM_Adr__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model v24_KM_Adr__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF HzSonder__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model HzSonder__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tAussen_Korr__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tAussen_Korr__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF hk_s__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model hk_s__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF mintVsoll__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model mintVsoll__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF maxtVsoll__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model maxtVsoll__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF HZ_Hys__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model HZ_Hys__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_para_ATB__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_para_ATB__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qminLast_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qminLast_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qmax_HZ_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qmax_HZ_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qmax_WW_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qmax_WW_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF PuHZpwm_min__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model PuHZpwm_min__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF PuHZpwm_max__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model PuHZpwm_max__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dtRegPuPwm__w__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dtRegPuPwm__w__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF WW_Hys__WWPWM__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model WW_Hys__WWPWM__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tWWplus__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tWWplus__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF WW_Hys__Self__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model WW_Hys__Self__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF maxBWLadezeit__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model maxBWLadezeit__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF WW_Absenk__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model WW_Absenk__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF pnl_WWzirk__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model pnl_WWzirk__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qZTL_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qZTL_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF t_NBL__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model t_NBL__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF zuend_schwelle__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model zuend_schwelle__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF WartInthBOn__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model WartInthBOn__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nGKorr_maxLast__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nGKorr_maxLast__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nGKorr_minLast__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nGKorr_minLast__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dopKorr_OLV__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dopKorr_OLV__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF OptByte1__SW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model OptByte1__SW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF HZ_KP__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model HZ_KP__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF HZ_KTnD__I__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model HZ_KTnD__I__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF HZ_KTnD__D__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model HZ_KTnD__D__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_KorrMin__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_KorrMin__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_soll_betr__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_soll_betr__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_max__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_max__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qStab_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qStab_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dqLim__pos__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dqLim__pos__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dqLim__neg__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dqLim__neg__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_VSP__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_VSP__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qZuend_kW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qZuend_kW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nGKorr_kalt__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nGKorr_kalt__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nGKorr_warm__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nGKorr_warm__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_nGkorr_VK__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_nGkorr_VK__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF uvw_tMittel__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model uvw_tMittel__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_NBL__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_NBL__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_tKlappe__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_tKlappe__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVsoll_epm__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVsoll_epm__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVAbsenk__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVAbsenk__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tWWsoll_epm__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tWWsoll_epm__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tRaumTag__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tRaumTag__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tRaumAbsenk__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tRaumAbsenk__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF opt_entl_oel__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model opt_entl_oel__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF opt_zuend__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model opt_zuend__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF opt_BCC__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model opt_BCC__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF opt_cntTWerr__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model opt_cntTWerr__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF opt_BSDMon__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model opt_BSDMon__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF optNoEmergencyReset__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model optNoEmergencyReset__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tcSZA__start__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tcSZA__start__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tcSP__VSP__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tcSP__VSP__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tStab__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tStab__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nG_max__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nG_max__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF nG_min__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model nG_min__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qnenn_KW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qnenn_KW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF qmin_KW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model qmin_KW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_nSW__Flaus__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_nSW__Flaus__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_nSW__BrStart__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_nSW__BrStart__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF MAX_STW__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model MAX_STW__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_startfrei__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_startfrei__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_abkuehl__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_abkuehl__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF tVK_kaltwarm__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model tVK_kaltwarm__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dop_tdmax__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dop_tdmax__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF dop_nHub__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model dop_nHub__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_KP__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_KP__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_KTN__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_KTN__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_REG_ANPASS__SELF__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_REG_ANPASS__SELF__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF NG_REG_ANPASS__START__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model NG_REG_ANPASS__START__MFF is Memory<UCH>;

    // Alias of ADC_BREAK
    // /** Konstanten 0x00FF max_olv_abw__MFF */
    // @ext(0x47, 0x02, 0xFF)
    // model max_olv_abw__MFF is Memory<UCH>;

    /** Konstanten 0x0100 EEAEPHANF */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model EEAEPHANF is Memory<UCH>;
//    @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    model EEAEPHANF is Memory<UIN>;

    // Alias of EEAEPHANF
    // /** Konstanten 0x0100 EEAHIST_ERRCODE */
    // @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    // model EEAHIST_ERRCODE is Memory<UCH>;
//    // @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    // model EEAHIST_ERRCODE is Memory<UIN>;

    // Alias of EEAEPHANF
    // /** Konstanten 0x0100 EEAHIST_FCODE_1 */
    // @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    // model EEAHIST_FCODE_1 is Memory<UCH>;
//    // @ext(0x84, 0x06, 0x01, 0x12, 0x00)
//    // model EEAHIST_FCODE_1 is Memory<UIN>;

    /** Konstanten 0x0101 EEAHIST_STATE */
    @ext(0x35, 0x06, 0x01, 0x02, 0x01)
    model EEAHIST_STATE is Memory<UCH>;

    /** Konstanten 0x0102 EEAHIST_MODIST */
    @ext(0x36, 0x06, 0x01, 0x02, 0x02)
    model EEAHIST_MODIST is Memory<UCH>;
//    @ext(0x86, 0x06, 0x01, 0x12, 0x02)
//    model EEAHIST_MODIST is Memory<UIN>;

    /** Konstanten 0x0103 EEAHIST_CNTBETR */
    @ext(0x37, 0x06, 0x01, 0x02, 0x03)
    model EEAHIST_CNTBETR is Memory<UCH>;

    /** Konstanten 0x0104 EEAHIST_DOPREL */
    @ext(0x30, 0x06, 0x01, 0x02, 0x04)
    model EEAHIST_DOPREL is Memory<UCH>;
//    @ext(0x80, 0x06, 0x01, 0x12, 0x04)
//    model EEAHIST_DOPREL is Memory<UIN>;

    /** Konstanten 0x0105 EEAHIST_IZUEND */
    @ext(0x31, 0x06, 0x01, 0x02, 0x05)
    model EEAHIST_IZUEND is Memory<UCH>;

    /** Konstanten 0x0106 EEAHIST_TVLIST */
    @ext(0x32, 0x06, 0x01, 0x02, 0x06)
    model EEAHIST_TVLIST is Memory<UCH>;
//    @ext(0x82, 0x06, 0x01, 0x12, 0x06)
//    model EEAHIST_TVLIST is Memory<UIN>;

    /** Konstanten 0x0107 EEAHIST_TABGIST */
    @ext(0x33, 0x06, 0x01, 0x02, 0x07)
    model EEAHIST_TABGIST is Memory<UCH>;

    /** Konstanten 0x0108 EEAHIST_TVKIST */
    @ext(0x3c, 0x06, 0x01, 0x02, 0x08)
    model EEAHIST_TVKIST is Memory<UCH>;
//    @ext(0x8c, 0x06, 0x01, 0x12, 0x08)
//    model EEAHIST_TVKIST is Memory<UIN>;

    /** Konstanten 0x0109 EEAHIST_TAUSSEN */
    @ext(0x3d, 0x06, 0x01, 0x02, 0x09)
    model EEAHIST_TAUSSEN is Memory<UCH>;

    /** Konstanten 0x010A EEAHIST_TWWIST */
    @ext(0x3e, 0x06, 0x01, 0x02, 0x0A)
    model EEAHIST_TWWIST is Memory<UCH>;
//    @ext(0x8e, 0x06, 0x01, 0x12, 0x0A)
//    model EEAHIST_TWWIST is Memory<UIN>;

    /** Konstanten 0x010B EEAHIST_TB12 */
    @ext(0x3f, 0x06, 0x01, 0x02, 0x0B)
    model EEAHIST_TB12 is Memory<UCH>;

    /** Konstanten 0x010C EEAHIST_TZLIST */
    @ext(0x38, 0x06, 0x01, 0x02, 0x0C)
    model EEAHIST_TZLIST is Memory<UCH>;
//    @ext(0x88, 0x06, 0x01, 0x12, 0x0C)
//    model EEAHIST_TZLIST is Memory<UIN>;

    /** Konstanten 0x010D EEAHIST_TB10 */
    @ext(0x39, 0x06, 0x01, 0x02, 0x0D)
    model EEAHIST_TB10 is Memory<UCH>;

    /** Konstanten 0x010E EEAHIST_TB11 */
    @ext(0x3a, 0x06, 0x01, 0x02, 0x0E)
    model EEAHIST_TB11 is Memory<UCH>;
//    @ext(0x8a, 0x06, 0x01, 0x12, 0x0E)
//    model EEAHIST_TB11 is Memory<UIN>;

    /** Konstanten 0x010F EEAHIST_NZUE */
    @ext(0x3b, 0x06, 0x01, 0x02, 0x0F)
    model EEAHIST_NZUE is Memory<UCH>;

    /** Konstanten 0x0110 EEAHIST_XCHG */
    @ext(0x24, 0x06, 0x01, 0x02, 0x10)
    model EEAHIST_XCHG is Memory<UCH>;
//    @ext(0x94, 0x06, 0x01, 0x12, 0x10)
//    model EEAHIST_XCHG is Memory<UIN>;

    /** Konstanten 0x0111 EEAHIST_FCODE_2 */
    @ext(0x25, 0x06, 0x01, 0x02, 0x11)
    model EEAHIST_FCODE_2 is Memory<UCH>;

    /** Konstanten 0x0118 TZL_KORR_OFFS */
    @ext(0x2c, 0x06, 0x01, 0x02, 0x18)
    model TZL_KORR_OFFS is Memory<UCH>;
//    @ext(0x9c, 0x06, 0x01, 0x12, 0x18)
//    model TZL_KORR_OFFS is Memory<UIN>;

    /** Konstanten 0x0122 EEAHIST_FCODE_3 */
    @ext(0x16, 0x06, 0x01, 0x02, 0x22)
    model EEAHIST_FCODE_3 is Memory<UCH>;
//    @ext(0xa6, 0x06, 0x01, 0x12, 0x22)
//    model EEAHIST_FCODE_3 is Memory<UIN>;

    /** Konstanten 0x0133 EEAHIST_FCODE_4 */
    @ext(0x07, 0x06, 0x01, 0x02, 0x33)
    model EEAHIST_FCODE_4 is Memory<UCH>;

    /** Konstanten 0x0144 EEAHIST_FCODE_5 */
    @ext(0x70, 0x06, 0x01, 0x02, 0x44)
    model EEAHIST_FCODE_5 is Memory<UCH>;
//    @ext(0xc0, 0x06, 0x01, 0x12, 0x44)
//    model EEAHIST_FCODE_5 is Memory<UIN>;

    /** Konstanten 0x0155 EEAHIST_FCODE_6 */
    @ext(0x61, 0x06, 0x01, 0x02, 0x55)
    model EEAHIST_FCODE_6 is Memory<UCH>;

    /** Konstanten 0x0166 EEAHIST_FCODE_7 */
    @ext(0x52, 0x06, 0x01, 0x02, 0x66)
    model EEAHIST_FCODE_7 is Memory<UCH>;
//    @ext(0xe2, 0x06, 0x01, 0x12, 0x66)
//    model EEAHIST_FCODE_7 is Memory<UIN>;

    /** Konstanten 0x0177 EEAHIST_FCODE_8 */
    @ext(0x43, 0x06, 0x01, 0x02, 0x77)
    model EEAHIST_FCODE_8 is Memory<UCH>;

    /** Konstanten 0x0188 EEAHIST_FCODE_9 */
    @ext(0xbc, 0x06, 0x01, 0x02, 0x88)
    model EEAHIST_FCODE_9 is Memory<UCH>;
//    @ext(0x0c, 0x06, 0x01, 0x12, 0x88)
//    model EEAHIST_FCODE_9 is Memory<UIN>;

    /** Konstanten 0x0199 EEAHIST_FCODE_A */
    @ext(0xad, 0x06, 0x01, 0x02, 0x99)
    model EEAHIST_FCODE_A is Memory<UCH>;

    /** Konstanten 0x01A9 EEAEPHEND */
    @ext(0x9d, 0x06, 0x01, 0x02, 0xA9)
    model EEAEPHEND is Memory<UCH>;

    /** Konstanten 0x01AA EEAEPHWRPNT */
    @ext(0x9e, 0x06, 0x01, 0x02, 0xAA)
    model EEAEPHWRPNT is Memory<UCH>;
//    @ext(0x2e, 0x06, 0x01, 0x12, 0xAA)
//    model EEAEPHWRPNT is Memory<UIN>;

    /** Konstanten 0x01AB EEAHIST2ANF */
    @ext(0x9f, 0x06, 0x01, 0x02, 0xAB)
    model EEAHIST2ANF is Memory<UCH>;

    // Alias of EEAHIST2ANF
    // /** Konstanten 0x01AB EEAHIST2_1 */
    // @ext(0x9f, 0x06, 0x01, 0x02, 0xAB)
    // model EEAHIST2_1 is Memory<UCH>;

    // Alias of EEAHIST2ANF
    // /** Konstanten 0x01AB EEAHIST2_XCHG_VPA2FM */
    // @ext(0x9f, 0x06, 0x01, 0x02, 0xAB)
    // model EEAHIST2_XCHG_VPA2FM is Memory<UCH>;

    /** Konstanten 0x01AC EEAHIST2_VPA_PREV */
    @ext(0x98, 0x06, 0x01, 0x02, 0xAC)
    model EEAHIST2_VPA_PREV is Memory<UCH>;
//    @ext(0x28, 0x06, 0x01, 0x12, 0xAC)
//    model EEAHIST2_VPA_PREV is Memory<UIN>;

    /** Konstanten 0x01AD EEAHIST2_VPA_T1_HI */
    @ext(0x99, 0x06, 0x01, 0x02, 0xAD)
    model EEAHIST2_VPA_T1_HI is Memory<UCH>;

    /** Konstanten 0x01AE EEAHIST2_VPA_T1_LO */
    @ext(0x9a, 0x06, 0x01, 0x02, 0xAE)
    model EEAHIST2_VPA_T1_LO is Memory<UCH>;
//    @ext(0x2a, 0x06, 0x01, 0x12, 0xAE)
//    model EEAHIST2_VPA_T1_LO is Memory<UIN>;

    /** Konstanten 0x01AF EEAHIST2_AIN_PG_ERR_MASK */
    @ext(0x9b, 0x06, 0x01, 0x02, 0xAF)
    model EEAHIST2_AIN_PG_ERR_MASK is Memory<UCH>;

    /** Konstanten 0x01B0 EEAHIST2_ERRCNT2 */
    @ext(0x84, 0x06, 0x01, 0x02, 0xB0)
    model EEAHIST2_ERRCNT2 is Memory<UCH>;
//    @ext(0x34, 0x06, 0x01, 0x12, 0xB0)
//    model EEAHIST2_ERRCNT2 is Memory<UIN>;

    /** Konstanten 0x01B1 EEAHIST2_2 */
    @ext(0x85, 0x06, 0x01, 0x02, 0xB1)
    model EEAHIST2_2 is Memory<UCH>;

    /** Konstanten 0x01B7 EEAHIST2_3 */
    @ext(0x83, 0x06, 0x01, 0x02, 0xB7)
    model EEAHIST2_3 is Memory<UCH>;

    /** Konstanten 0x01BD EEAHIST2_4 */
    @ext(0x89, 0x06, 0x01, 0x02, 0xBD)
    model EEAHIST2_4 is Memory<UCH>;

    /** Konstanten 0x01C3 EEAHIST2_5 */
    @ext(0xf7, 0x06, 0x01, 0x02, 0xC3)
    model EEAHIST2_5 is Memory<UCH>;

    /** Konstanten 0x01C7 FIKALTSTART */
    @ext(0xf3, 0x06, 0x01, 0x02, 0xC7)
    model FIKALTSTART is Memory<UCH>;

    /** Konstanten 0x01C9 EEAHIST2_6 */
    @ext(0xfd, 0x06, 0x01, 0x02, 0xC9)
    model EEAHIST2_6 is Memory<UCH>;

    /** Konstanten 0x01CF EEAHIST2_7 */
    @ext(0xfb, 0x06, 0x01, 0x02, 0xCF)
    model EEAHIST2_7 is Memory<UCH>;

    /** Konstanten 0x01D5 EEAHIST2_8 */
    @ext(0xe1, 0x06, 0x01, 0x02, 0xD5)
    model EEAHIST2_8 is Memory<UCH>;

    /** Konstanten 0x01DB EEAHIST2_9 */
    @ext(0xef, 0x06, 0x01, 0x02, 0xDB)
    model EEAHIST2_9 is Memory<UCH>;

    /** Konstanten 0x01E1 EEAHIST2_A */
    @ext(0xd5, 0x06, 0x01, 0x02, 0xE1)
    model EEAHIST2_A is Memory<UCH>;

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

    /** Konstanten 0x01FE EEAHIST2END */
    @ext(0xca, 0x06, 0x01, 0x02, 0xFE)
    model EEAHIST2END is Memory<UCH>;
//    @ext(0x7a, 0x06, 0x01, 0x12, 0xFE)
//    model EEAHIST2END is Memory<UIN>;

    /** Konstanten 0x0200 EEA_PAGE_2 */
    @ext(0xac, 0x06, 0x02, 0x02, 0x00)
    model EEA_PAGE_2 is Memory<UCH>;
//    @ext(0x1c, 0x06, 0x02, 0x12, 0x00)
//    model EEA_PAGE_2 is Memory<UIN>;

    /** Konstanten 0x0201 EEA_0201 */
    @ext(0xad, 0x06, 0x02, 0x02, 0x01)
    model EEA_0201 is Memory<UCH>;

    /** Konstanten 0x0300 EEA_PAGE_3 */
    @ext(0x10, 0x06, 0x03, 0x02, 0x00)
    model EEA_PAGE_3 is Memory<UCH>;
//    @ext(0xa0, 0x06, 0x03, 0x12, 0x00)
//    model EEA_PAGE_3 is Memory<UIN>;

    /** Konstanten 0x0301 EEA_0301 */
    @ext(0x11, 0x06, 0x03, 0x02, 0x01)
    model EEA_0301 is Memory<UCH>;

}
