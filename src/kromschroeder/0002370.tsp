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

    /** RAM 0x0020 be1_50hz_cnt */
    @ext(0x7c, 0x01, 0x20)
    model be1_50hz_cnt is Memory<UCH>;

    /** RAM 0x0021 be2_50hz_cnt */
    @ext(0x7d, 0x01, 0x21)
    model be2_50hz_cnt is Memory<UCH>;

    /** RAM 0x0022 systimer_start_SIRT_u8 */
    @ext(0x7e, 0x01, 0x22)
    model systimer_start_SIRT_u8 is Memory<UCH>;

    /** RAM 0x0024 tde_sample_soll_ui */
    @ext(0x78, 0x01, 0x24)
    model tde_sample_soll_ui is Memory<UCH>;

    /** RAM 0x0026 digout_val_ui */
    @ext(0x7a, 0x01, 0x26)
    model digout_val_ui is Memory<UCH>;

    /** RAM 0x0028 tdo_mask_ui */
    @ext(0x74, 0x01, 0x28)
    model tdo_mask_ui is Memory<UCH>;

    /** RAM 0x002A e_Syn_timer_u16 */
    @ext(0x76, 0x01, 0x2A)
    model e_Syn_timer_u16 is Memory<UCH>;

    /** RAM 0x002C sp_1st_user_irpt_ui */
    @ext(0x70, 0x01, 0x2C)
    model sp_1st_user_irpt_ui is Memory<UCH>;

    /** RAM 0x002E tst_ram_adr_ui */
    @ext(0x72, 0x01, 0x2E)
    model tst_ram_adr_ui is Memory<UCH>;

    /** RAM 0x0030 romcrc_padr_pu8 */
    @ext(0x6c, 0x01, 0x30)
    model romcrc_padr_pu8 is Memory<UCH>;

    /** RAM 0x0032 mode_SecCode_ui */
    @ext(0x6e, 0x01, 0x32)
    model mode_SecCode_ui is Memory<UCH>;

    /** RAM 0x0034 cnt_Pruefstand_ui */
    @ext(0x68, 0x01, 0x34)
    model cnt_Pruefstand_ui is Memory<UCH>;

    /** RAM 0x0036 cpy_MK0_ui */
    @ext(0x6a, 0x01, 0x36)
    model cpy_MK0_ui is Memory<UCH>;

    /** RAM 0x0038 cpy_MK1_ui */
    @ext(0x64, 0x01, 0x38)
    model cpy_MK1_ui is Memory<UCH>;

    /** RAM 0x003A m_stati_ui */
    @ext(0x66, 0x01, 0x3A)
    model m_stati_ui is Memory<UCH>;

    /** RAM 0x003C OS_VAR_ANF */
    @ext(0x60, 0x01, 0x3C)
    model OS_VAR_ANF is Memory<UCH>;

    // Alias of OS_VAR_ANF
    // /** RAM 0x003C err_merk_ui */
    // @ext(0x60, 0x01, 0x3C)
    // model err_merk_ui is Memory<UCH>;

    /** RAM 0x003E err_merk_alt_ui */
    @ext(0x62, 0x01, 0x3E)
    model err_merk_alt_ui is Memory<UCH>;

    /** RAM 0x0040 res_cycl_cnt */
    @ext(0x1c, 0x01, 0x40)
    model res_cycl_cnt is Memory<UCH>;

    /** RAM 0x0042 m_kaltstart_uc */
    @ext(0x1e, 0x01, 0x42)
    model m_kaltstart_uc is Memory<UCH>;

    /** RAM 0x0043 m_kaltstart_alt_uc */
    @ext(0x1f, 0x01, 0x43)
    model m_kaltstart_alt_uc is Memory<UCH>;

    /** RAM 0x0044 system_modus_uc */
    @ext(0x18, 0x01, 0x44)
    model system_modus_uc is Memory<UCH>;

    /** RAM 0x0045 res_cnt_uc */
    @ext(0x19, 0x01, 0x45)
    model res_cnt_uc is Memory<UCH>;

    /** RAM 0x0046 res_cnt_inv_uc */
    @ext(0x1a, 0x01, 0x46)
    model res_cnt_inv_uc is Memory<UCH>;

    /** RAM 0x0047 os_var_crc */
    @ext(0x1b, 0x01, 0x47)
    model os_var_crc is Memory<UCH>;

    /** RAM 0x0048 _A_ep_sys_opt */
    @ext(0x14, 0x01, 0x48)
    model _A_ep_sys_opt is Memory<UCH>;

    // Alias of _A_ep_sys_opt
    // /** RAM 0x0048 ep_sys_opt */
    // @ext(0x14, 0x01, 0x48)
    // model ep_sys_opt is Memory<UCH>;

    // Alias of _A_ep_sys_opt
    // /** RAM 0x0048 fs_system_anf */
    // @ext(0x14, 0x01, 0x48)
    // model fs_system_anf is Memory<UCH>;

    // Alias of _A_ep_sys_opt
    // /** RAM 0x0048 ram_fs_system_anf */
    // @ext(0x14, 0x01, 0x48)
    // model ram_fs_system_anf is Memory<UCH>;

    /** RAM 0x0049 ep_sys_para_2 */
    @ext(0x15, 0x01, 0x49)
    model ep_sys_para_2 is Memory<UCH>;

    /** RAM 0x004A ep_sys_para_3 */
    @ext(0x16, 0x01, 0x4A)
    model ep_sys_para_3 is Memory<UCH>;

    /** RAM 0x004B ep_tdi_limit */
    @ext(0x17, 0x01, 0x4B)
    model ep_tdi_limit is Memory<UCH>;

    /** RAM 0x004C ep_sys_crc */
    @ext(0x10, 0x01, 0x4C)
    model ep_sys_crc is Memory<UCH>;

    // Alias of ep_sys_crc
    // /** RAM 0x004C ram_fs_system_crc */
    // @ext(0x10, 0x01, 0x4C)
    // model ram_fs_system_crc is Memory<UCH>;

    /** RAM 0x004D comm_level_ist */
    @ext(0x11, 0x01, 0x4D)
    model comm_level_ist is Memory<UCH>;

    /** RAM 0x004E comm_timeout_uc */
    @ext(0x12, 0x01, 0x4E)
    model comm_timeout_uc is Memory<UCH>;

    /** RAM 0x004F buffer_index_u8 */
    @ext(0x13, 0x01, 0x4F)
    model buffer_index_u8 is Memory<UCH>;

    /** RAM 0x0050 tde_cnt_uc */
    @ext(0x0c, 0x01, 0x50)
    model tde_cnt_uc is Memory<UCH>;

    /** RAM 0x0051 tdo_cnt_uc */
    @ext(0x0d, 0x01, 0x51)
    model tdo_cnt_uc is Memory<UCH>;

    /** RAM 0x0052 tdo_limit_uc */
    @ext(0x0e, 0x01, 0x52)
    model tdo_limit_uc is Memory<UCH>;

    /** RAM 0x0053 tdo_mode_uc */
    @ext(0x0f, 0x01, 0x53)
    model tdo_mode_uc is Memory<UCH>;

    /** RAM 0x0054 tdo_booster_uc */
    @ext(0x08, 0x01, 0x54)
    model tdo_booster_uc is Memory<UCH>;

    /** RAM 0x0055 tdo_error_uc */
    @ext(0x09, 0x01, 0x55)
    model tdo_error_uc is Memory<UCH>;

    /** RAM 0x0056 ebus_StatFlag_a_u8 */
    @ext(0x0a, 0x01, 0x56)
    model ebus_StatFlag_a_u8 is Memory<UCH>;

    /** RAM 0x0057 ebus_StatFlag_b_u8 */
    @ext(0x0b, 0x01, 0x57)
    model ebus_StatFlag_b_u8 is Memory<UCH>;

    /** RAM 0x0058 e_RxCnt_u8 */
    @ext(0x04, 0x01, 0x58)
    model e_RxCnt_u8 is Memory<UCH>;

    /** RAM 0x0059 e_TxCnt_u8 */
    @ext(0x05, 0x01, 0x59)
    model e_TxCnt_u8 is Memory<UCH>;

    /** RAM 0x005A e_Err_ISR_u8 */
    @ext(0x06, 0x01, 0x5A)
    model e_Err_ISR_u8 is Memory<UCH>;

    /** RAM 0x005B e_Tx_expand_u8 */
    @ext(0x07, 0x01, 0x5B)
    model e_Tx_expand_u8 is Memory<UCH>;

    /** RAM 0x005C FIFO */
    @ext(0x00, 0x01, 0x5C)
    model FIFO is Memory<UCH>;

    /** RAM 0x0066 e_Sperrzaehler_u8 */
    @ext(0x3a, 0x01, 0x66)
    model e_Sperrzaehler_u8 is Memory<UCH>;

    /** RAM 0x0067 systimer_tirpend_u8 */
    @ext(0x3b, 0x01, 0x67)
    model systimer_tirpend_u8 is Memory<UCH>;

    /** RAM 0x0068 romcrc_err_uc */
    @ext(0x34, 0x01, 0x68)
    model romcrc_err_uc is Memory<UCH>;

    /** RAM 0x0069 romcrc_save_uc */
    @ext(0x35, 0x01, 0x69)
    model romcrc_save_uc is Memory<UCH>;

    /** RAM 0x006A romcrc_bank_test_uc */
    @ext(0x36, 0x01, 0x6A)
    model romcrc_bank_test_uc is Memory<UCH>;

    /** RAM 0x006B icl100msec */
    @ext(0x37, 0x01, 0x6B)
    model icl100msec is Memory<UCH>;

    /** RAM 0x006C icl20sec */
    @ext(0x30, 0x01, 0x6C)
    model icl20sec is Memory<UCH>;

    /** RAM 0x006D icl1hrs */
    @ext(0x31, 0x01, 0x6D)
    model icl1hrs is Memory<UCH>;

    /** RAM 0x006E icl1hrs_lo_test_uc */
    @ext(0x32, 0x01, 0x6E)
    model icl1hrs_lo_test_uc is Memory<UCH>;

    /** RAM 0x006F idle_loop_cnt */
    @ext(0x33, 0x01, 0x6F)
    model idle_loop_cnt is Memory<UCH>;

    /** RAM 0x0070 req_SystemMode_uc */
    @ext(0x2c, 0x01, 0x70)
    model req_SystemMode_uc is Memory<UCH>;

    /** RAM 0x0071 exception_anf_IRPT */
    @ext(0x2d, 0x01, 0x71)
    model exception_anf_IRPT is Memory<UCH>;

    /** RAM 0x0072 exception_anf_TASK */
    @ext(0x2e, 0x01, 0x72)
    model exception_anf_TASK is Memory<UCH>;

    /** RAM 0x0073 exception_anf_IDLE */
    @ext(0x2f, 0x01, 0x73)
    model exception_anf_IDLE is Memory<UCH>;

    /** RAM 0x0074 proglauf_status_uc */
    @ext(0x28, 0x01, 0x74)
    model proglauf_status_uc is Memory<UCH>;

    /** RAM 0x0075 _A_test_flag_uc */
    @ext(0x29, 0x01, 0x75)
    model _A_test_flag_uc is Memory<UCH>;

    /** RAM 0x0076 _A_eb_inter */
    @ext(0x2a, 0x01, 0x76)
    model _A_eb_inter is Memory<UCH>;

    /** RAM 0x0077 consis_mark_uc */
    @ext(0x2b, 0x01, 0x77)
    model consis_mark_uc is Memory<UCH>;

    /** RAM 0x0078 consis_alt_uc */
    @ext(0x24, 0x01, 0x78)
    model consis_alt_uc is Memory<UCH>;

    /** RAM 0x0079 ipc1_mailbox_uc */
    @ext(0x25, 0x01, 0x79)
    model ipc1_mailbox_uc is Memory<UCH>;

    /** RAM 0x007F ipc2_mailbox_uc */
    @ext(0x23, 0x01, 0x7F)
    model ipc2_mailbox_uc is Memory<UCH>;

    /** RAM 0x008A uc_IPC2Step */
    @ext(0xd6, 0x01, 0x8A)
    model uc_IPC2Step is Memory<UCH>;

    /** RAM 0x008B p_stati_uc */
    @ext(0xd7, 0x01, 0x8B)
    model p_stati_uc is Memory<UCH>;

    /** RAM 0x008C ts1_os_order */
    @ext(0xd0, 0x01, 0x8C)
    model ts1_os_order is Memory<UCH>;

    /** RAM 0x008D thUser */
    @ext(0xd1, 0x01, 0x8D)
    model thUser is Memory<UCH>;

    /** RAM 0x0090 thDiag */
    @ext(0xcc, 0x01, 0x90)
    model thDiag is Memory<UCH>;

    /** RAM 0x0093 thTask_a1 */
    @ext(0xcf, 0x01, 0x93)
    model thTask_a1 is Memory<UCH>;

    /** RAM 0x0096 thTask_s1 */
    @ext(0xca, 0x01, 0x96)
    model thTask_s1 is Memory<UCH>;

    /** RAM 0x009A adr_tirp_ui */
    @ext(0xc6, 0x01, 0x9A)
    model adr_tirp_ui is Memory<UCH>;

    /** RAM 0x00E0 RB3_X */
    @ext(0xbc, 0x01, 0xE0)
    model RB3_X is Memory<UCH>;

    // Alias of RB3_X
    // /** RAM 0x00E0 RB3_AX */
    // @ext(0xbc, 0x01, 0xE0)
    // model RB3_AX is Memory<UCH>;

    /** RAM 0x00E1 RB3_A */
    @ext(0xbd, 0x01, 0xE1)
    model RB3_A is Memory<UCH>;

    /** RAM 0x00E2 RB3_C */
    @ext(0xbe, 0x01, 0xE2)
    model RB3_C is Memory<UCH>;

    // Alias of RB3_C
    // /** RAM 0x00E2 RB3_BC */
    // @ext(0xbe, 0x01, 0xE2)
    // model RB3_BC is Memory<UCH>;

    /** RAM 0x00E3 RB3_B */
    @ext(0xbf, 0x01, 0xE3)
    model RB3_B is Memory<UCH>;

    /** RAM 0x00E4 RB3_E */
    @ext(0xb8, 0x01, 0xE4)
    model RB3_E is Memory<UCH>;

    // Alias of RB3_E
    // /** RAM 0x00E4 RB3_DE */
    // @ext(0xb8, 0x01, 0xE4)
    // model RB3_DE is Memory<UCH>;

    /** RAM 0x00E5 RB3_D */
    @ext(0xb9, 0x01, 0xE5)
    model RB3_D is Memory<UCH>;

    /** RAM 0x00E6 RB3_L */
    @ext(0xba, 0x01, 0xE6)
    model RB3_L is Memory<UCH>;

    // Alias of RB3_L
    // /** RAM 0x00E6 RB3_HL */
    // @ext(0xba, 0x01, 0xE6)
    // model RB3_HL is Memory<UCH>;

    /** RAM 0x00E7 RB3_H */
    @ext(0xbb, 0x01, 0xE7)
    model RB3_H is Memory<UCH>;

    /** RAM 0x00F8 RB0_X */
    @ext(0xa4, 0x01, 0xF8)
    model RB0_X is Memory<UCH>;

    // Alias of RB0_X
    // /** RAM 0x00F8 RB0_AX */
    // @ext(0xa4, 0x01, 0xF8)
    // model RB0_AX is Memory<UCH>;

    // Alias of RB0_X
    // /** RAM 0x00F8 AX_u16 */
    // @ext(0xa4, 0x01, 0xF8)
    // model AX_u16 is Memory<UCH>;

    /** RAM 0x00F9 RB0_A */
    @ext(0xa5, 0x01, 0xF9)
    model RB0_A is Memory<UCH>;

    // Alias of RB0_A
    // /** RAM 0x00F9 Acc_u8 */
    // @ext(0xa5, 0x01, 0xF9)
    // model Acc_u8 is Memory<UCH>;

    /** RAM 0x00FA RB0_C */
    @ext(0xa6, 0x01, 0xFA)
    model RB0_C is Memory<UCH>;

    // Alias of RB0_C
    // /** RAM 0x00FA RB0_BC */
    // @ext(0xa6, 0x01, 0xFA)
    // model RB0_BC is Memory<UCH>;

    /** RAM 0x00FB RB0_B */
    @ext(0xa7, 0x01, 0xFB)
    model RB0_B is Memory<UCH>;

    /** RAM 0x00FC RB0_E */
    @ext(0xa0, 0x01, 0xFC)
    model RB0_E is Memory<UCH>;

    // Alias of RB0_E
    // /** RAM 0x00FC RB0_DE */
    // @ext(0xa0, 0x01, 0xFC)
    // model RB0_DE is Memory<UCH>;

    /** RAM 0x00FD RB0_D */
    @ext(0xa1, 0x01, 0xFD)
    model RB0_D is Memory<UCH>;

    /** RAM 0x00FE RB0_L */
    @ext(0xa2, 0x01, 0xFE)
    model RB0_L is Memory<UCH>;

    // Alias of RB0_L
    // /** RAM 0x00FE RB0_HL */
    // @ext(0xa2, 0x01, 0xFE)
    // model RB0_HL is Memory<UCH>;

    /** RAM 0x00FF RB0_H */
    @ext(0xa3, 0x01, 0xFF)
    model RB0_H is Memory<UCH>;


    // ====================================
    // --- SFR ---
    // ====================================

    /** SFR 0x0000 _A_P0 */
    @ext(0x2c, 0x04, 0x00)
    model _A_P0 is Memory<UCH>;

    /** SFR 0x0001 _A_P1 */
    @ext(0x2d, 0x04, 0x01)
    model _A_P1 is Memory<UCH>;

    /** SFR 0x0003 _A_P3 */
    @ext(0x2f, 0x04, 0x03)
    model _A_P3 is Memory<UCH>;

    /** SFR 0x0004 _A_P4 */
    @ext(0x28, 0x04, 0x04)
    model _A_P4 is Memory<UCH>;

    /** SFR 0x0005 _A_P5 */
    @ext(0x29, 0x04, 0x05)
    model _A_P5 is Memory<UCH>;

    /** SFR 0x0006 _A_P6 */
    @ext(0x2a, 0x04, 0x06)
    model _A_P6 is Memory<UCH>;

    /** SFR 0x0007 _A_P7 */
    @ext(0x2b, 0x04, 0x07)
    model _A_P7 is Memory<UCH>;

    /** SFR 0x0008 _A_ADCR */
    @ext(0x24, 0x04, 0x08)
    model _A_ADCR is Memory<UCH>;

    /** SFR 0x000A RXB6 */
    @ext(0x26, 0x04, 0x0A)
    model RXB6 is Memory<UCH>;

    /** SFR 0x000B TXB6 */
    @ext(0x27, 0x04, 0x0B)
    model TXB6 is Memory<UCH>;

    /** SFR 0x000D _A_P13 */
    @ext(0x21, 0x04, 0x0D)
    model _A_P13 is Memory<UCH>;

    /** SFR 0x000E _A_P14 */
    @ext(0x22, 0x04, 0x0E)
    model _A_P14 is Memory<UCH>;

    /** SFR 0x000F SIO10 */
    @ext(0x23, 0x04, 0x0F)
    model SIO10 is Memory<UCH>;

    /** SFR 0x0017 _A_CR50 */
    @ext(0x3b, 0x04, 0x17)
    model _A_CR50 is Memory<UCH>;

    /** SFR 0x0018 CMP00 */
    @ext(0x34, 0x04, 0x18)
    model CMP00 is Memory<UCH>;

    /** SFR 0x0019 CMP10 */
    @ext(0x35, 0x04, 0x19)
    model CMP10 is Memory<UCH>;

    /** SFR 0x001A CMP01 */
    @ext(0x36, 0x04, 0x1A)
    model CMP01 is Memory<UCH>;

    /** SFR 0x001B CMP11 */
    @ext(0x37, 0x04, 0x1B)
    model CMP11 is Memory<UCH>;

    /** SFR 0x001C SP_Lo */
    @ext(0x30, 0x04, 0x1C)
    model SP_Lo is Memory<UCH>;

    /** SFR 0x001D SP_Hi */
    @ext(0x31, 0x04, 0x1D)
    model SP_Hi is Memory<UCH>;

    /** SFR 0x001E PSW */
    @ext(0x32, 0x04, 0x1E)
    model PSW is Memory<UCH>;

    /** SFR 0x001F TM51 */
    @ext(0x33, 0x04, 0x1F)
    model TM51 is Memory<UCH>;

    /** SFR 0x0020 _A_PM0 */
    @ext(0x0c, 0x04, 0x20)
    model _A_PM0 is Memory<UCH>;

    /** SFR 0x0021 _A_PM1 */
    @ext(0x0d, 0x04, 0x21)
    model _A_PM1 is Memory<UCH>;

    /** SFR 0x0022 _A_PM2 */
    @ext(0x0e, 0x04, 0x22)
    model _A_PM2 is Memory<UCH>;

    /** SFR 0x0023 _A_PM3 */
    @ext(0x0f, 0x04, 0x23)
    model _A_PM3 is Memory<UCH>;

    /** SFR 0x0024 _A_PM4 */
    @ext(0x08, 0x04, 0x24)
    model _A_PM4 is Memory<UCH>;

    /** SFR 0x0025 _A_PM5 */
    @ext(0x09, 0x04, 0x25)
    model _A_PM5 is Memory<UCH>;

    /** SFR 0x0026 _A_PM6 */
    @ext(0x0a, 0x04, 0x26)
    model _A_PM6 is Memory<UCH>;

    /** SFR 0x0027 _A_PM7 */
    @ext(0x0b, 0x04, 0x27)
    model _A_PM7 is Memory<UCH>;

    /** SFR 0x0028 _A_ADM */
    @ext(0x04, 0x04, 0x28)
    model _A_ADM is Memory<UCH>;

    /** SFR 0x0029 _A_ADS */
    @ext(0x05, 0x04, 0x29)
    model _A_ADS is Memory<UCH>;

    /** SFR 0x002C _A_PM12 */
    @ext(0x00, 0x04, 0x2C)
    model _A_PM12 is Memory<UCH>;

    /** SFR 0x002E _A_PM14 */
    @ext(0x02, 0x04, 0x2E)
    model _A_PM14 is Memory<UCH>;

    /** SFR 0x002F _A_ADPC */
    @ext(0x03, 0x04, 0x2F)
    model _A_ADPC is Memory<UCH>;

    /** SFR 0x0031 _A_PU1 */
    @ext(0x1d, 0x04, 0x31)
    model _A_PU1 is Memory<UCH>;

    /** SFR 0x0041 _A_CR51 */
    @ext(0x6d, 0x04, 0x41)
    model _A_CR51 is Memory<UCH>;

    /** SFR 0x0043 _A_TMC51 */
    @ext(0x6f, 0x04, 0x43)
    model _A_TMC51 is Memory<UCH>;

    /** SFR 0x004A SIO11 */
    @ext(0x66, 0x04, 0x4A)
    model SIO11 is Memory<UCH>;

    /** SFR 0x004C SOTB11 */
    @ext(0x60, 0x04, 0x4C)
    model SOTB11 is Memory<UCH>;

    /** SFR 0x0050 _A_ASIM6 */
    @ext(0x7c, 0x04, 0x50)
    model _A_ASIM6 is Memory<UCH>;

    /** SFR 0x0056 CKSR6 */
    @ext(0x7a, 0x04, 0x56)
    model CKSR6 is Memory<UCH>;

    /** SFR 0x0057 BRGC6 */
    @ext(0x7b, 0x04, 0x57)
    model BRGC6 is Memory<UCH>;

    /** SFR 0x0069 _A_TMHMD0 */
    @ext(0x45, 0x04, 0x69)
    model _A_TMHMD0 is Memory<UCH>;

    /** SFR 0x006A _A_TCL50 */
    @ext(0x46, 0x04, 0x6A)
    model _A_TCL50 is Memory<UCH>;

    /** SFR 0x006B _A_TMC50 */
    @ext(0x47, 0x04, 0x6B)
    model _A_TMC50 is Memory<UCH>;

    /** SFR 0x006C _A_TMHMD1 */
    @ext(0x40, 0x04, 0x6C)
    model _A_TMHMD1 is Memory<UCH>;

    /** SFR 0x0070 _A_ASIM0 */
    @ext(0x5c, 0x04, 0x70)
    model _A_ASIM0 is Memory<UCH>;

    /** SFR 0x0071 BRGC0 */
    @ext(0x5d, 0x04, 0x71)
    model BRGC0 is Memory<UCH>;

    /** SFR 0x0072 RXB0 */
    @ext(0x5e, 0x04, 0x72)
    model RXB0 is Memory<UCH>;

    /** SFR 0x0074 TXS0 */
    @ext(0x58, 0x04, 0x74)
    model TXS0 is Memory<UCH>;

    /** SFR 0x0080 _A_CSIM10 */
    @ext(0xac, 0x04, 0x80)
    model _A_CSIM10 is Memory<UCH>;

    /** SFR 0x0081 _A_CSIC10 */
    @ext(0xad, 0x04, 0x81)
    model _A_CSIC10 is Memory<UCH>;

    /** SFR 0x0084 SOTB10 */
    @ext(0xa8, 0x04, 0x84)
    model SOTB10 is Memory<UCH>;

    /** SFR 0x0088 _A_CSIM11 */
    @ext(0xa4, 0x04, 0x88)
    model _A_CSIM11 is Memory<UCH>;

    /** SFR 0x0089 _A_CSIC11 */
    @ext(0xa5, 0x04, 0x89)
    model _A_CSIC11 is Memory<UCH>;

    /** SFR 0x008C _A_TCL51 */
    @ext(0xa0, 0x04, 0x8C)
    model _A_TCL51 is Memory<UCH>;

    /** SFR 0x0099 WDTE */
    @ext(0xb5, 0x04, 0x99)
    model WDTE is Memory<UCH>;

    /** SFR 0x009F _A_OSCCTL */
    @ext(0xb3, 0x04, 0x9F)
    model _A_OSCCTL is Memory<UCH>;

    /** SFR 0x00A0 _A_RCM */
    @ext(0x8c, 0x04, 0xA0)
    model _A_RCM is Memory<UCH>;

    /** SFR 0x00A1 _A_MCM */
    @ext(0x8d, 0x04, 0xA1)
    model _A_MCM is Memory<UCH>;

    /** SFR 0x00A2 _A_MOC */
    @ext(0x8e, 0x04, 0xA2)
    model _A_MOC is Memory<UCH>;

    /** SFR 0x00A3 _A_OSTC */
    @ext(0x8f, 0x04, 0xA3)
    model _A_OSTC is Memory<UCH>;

    /** SFR 0x00A5 IIC0 */
    @ext(0x89, 0x04, 0xA5)
    model IIC0 is Memory<UCH>;

    /** SFR 0x00A6 _A_IICC0 */
    @ext(0x8a, 0x04, 0xA6)
    model _A_IICC0 is Memory<UCH>;

    /** SFR 0x00A8 _A_IICCL0 */
    @ext(0x84, 0x04, 0xA8)
    model _A_IICCL0 is Memory<UCH>;

    /** SFR 0x00A9 _A_IICX0 */
    @ext(0x85, 0x04, 0xA9)
    model _A_IICX0 is Memory<UCH>;

    /** SFR 0x00AA _A_IICS0 */
    @ext(0x86, 0x04, 0xAA)
    model _A_IICS0 is Memory<UCH>;

    /** SFR 0x00AB _A_IICF0 */
    @ext(0x87, 0x04, 0xAB)
    model _A_IICF0 is Memory<UCH>;

    /** SFR 0x00AC RESF */
    @ext(0x80, 0x04, 0xAC)
    model RESF is Memory<UCH>;

    /** SFR 0x00BE _A_LVIM */
    @ext(0x92, 0x04, 0xBE)
    model _A_LVIM is Memory<UCH>;

    /** SFR 0x00E0 _A_IF0 */
    @ext(0xcc, 0x04, 0xE0)
    model _A_IF0 is Memory<UCH>;

    /** SFR 0x00E1 _A_IF0H */
    @ext(0xcd, 0x04, 0xE1)
    model _A_IF0H is Memory<UCH>;

    /** SFR 0x00E2 _A_IF1 */
    @ext(0xce, 0x04, 0xE2)
    model _A_IF1 is Memory<UCH>;

    /** SFR 0x00E3 _A_IF1H */
    @ext(0xcf, 0x04, 0xE3)
    model _A_IF1H is Memory<UCH>;

    /** SFR 0x00E4 _A_MK0 */
    @ext(0xc8, 0x04, 0xE4)
    model _A_MK0 is Memory<UCH>;

    /** SFR 0x00E5 _A_Mk0_Hi */
    @ext(0xc9, 0x04, 0xE5)
    model _A_Mk0_Hi is Memory<UCH>;

    /** SFR 0x00E6 _A_MK1 */
    @ext(0xca, 0x04, 0xE6)
    model _A_MK1 is Memory<UCH>;

    /** SFR 0x00E7 _A_Mk1_Hi */
    @ext(0xcb, 0x04, 0xE7)
    model _A_Mk1_Hi is Memory<UCH>;

    /** SFR 0x00E8 _A_PR0 */
    @ext(0xc4, 0x04, 0xE8)
    model _A_PR0 is Memory<UCH>;

    /** SFR 0x00EA _A_PR1 */
    @ext(0xc6, 0x04, 0xEA)
    model _A_PR1 is Memory<UCH>;

    /** SFR 0x00F0 IMS */
    @ext(0xdc, 0x04, 0xF0)
    model IMS is Memory<UCH>;

    /** SFR 0x00F3 BANK */
    @ext(0xdf, 0x04, 0xF3)
    model BANK is Memory<UCH>;

    // Alias of BANK
    // /** SFR 0x00F3 _CODEBANK_REG */
    // @ext(0xdf, 0x04, 0xF3)
    // model _CODEBANK_REG is Memory<UCH>;

    /** SFR 0x00F4 IXS */
    @ext(0xd8, 0x04, 0xF4)
    model IXS is Memory<UCH>;

    /** SFR 0x00FB PCC */
    @ext(0xd7, 0x04, 0xFB)
    model PCC is Memory<UCH>;

    // Alias of PCC
    // /** SFR 0x00FB _A_PCC */
    // @ext(0xd7, 0x04, 0xFB)
    // model _A_PCC is Memory<UCH>;

    /** SFR 0x00FF BANK1_CRC */
    @ext(0xd3, 0x04, 0xFF)
    model BANK1_CRC is Memory<UCH>;

    // Alias of BANK1_CRC
    // /** SFR 0x00FF BANK5_CRC */
    // @ext(0xd3, 0x04, 0xFF)
    // model BANK5_CRC is Memory<UCH>;


    // ====================================
    // --- Konstanten ---
    // ====================================

    /** Konstanten 0x0000 BANK0_OFFSET */
    @ext(0xb8, 0x02, 0x00)
    model BANK0_OFFSET is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 FW_RELEASE_HI */
    // @ext(0xb8, 0x02, 0x00)
    // model FW_RELEASE_HI is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 FW_SOFTWARE_HI */
    // @ext(0xb8, 0x02, 0x00)
    // model FW_SOFTWARE_HI is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 _HEAP_SIZE */
    // @ext(0xb8, 0x02, 0x00)
    // model _HEAP_SIZE is Memory<UCH>;

    /** Konstanten 0x0001 EBUS */
    @ext(0xb9, 0x02, 0x01)
    model EBUS is Memory<UCH>;

    // Alias of EBUS
    // /** Konstanten 0x0001 _A_IF0__lvi */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_IF0__lvi is Memory<UCH>;

    // Alias of EBUS
    // /** Konstanten 0x0001 _A_Mk0__lvi_ */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_Mk0__lvi_ is Memory<UCH>;

    // Alias of EBUS
    // /** Konstanten 0x0001 ep_sys_opt__tstdigout */
    // @ext(0xb9, 0x02, 0x01)
    // model ep_sys_opt__tstdigout is Memory<UCH>;

    // Alias of EBUS
    // /** Konstanten 0x0001 muescot_tag_month */
    // @ext(0xb9, 0x02, 0x01)
    // model muescot_tag_month is Memory<UCH>;

    /** Konstanten 0x0002 FW_RELEASE */
    @ext(0xba, 0x02, 0x02)
    model FW_RELEASE is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 FW_RELEASE_LO */
    // @ext(0xba, 0x02, 0x02)
    // model FW_RELEASE_LO is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 FW_SOFTWARE */
    // @ext(0xba, 0x02, 0x02)
    // model FW_SOFTWARE is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 FW_SOFTWARE_LO */
    // @ext(0xba, 0x02, 0x02)
    // model FW_SOFTWARE_LO is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 _A_IF0__intP0_P120 */
    // @ext(0xba, 0x02, 0x02)
    // model _A_IF0__intP0_P120 is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 _A_Mk0__INTP120_ */
    // @ext(0xba, 0x02, 0x02)
    // model _A_Mk0__INTP120_ is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 eea_LOCKOUT_SYSTEM */
    // @ext(0xba, 0x02, 0x02)
    // model eea_LOCKOUT_SYSTEM is Memory<UCH>;

    // Alias of FW_RELEASE
    // /** Konstanten 0x0002 ep_sys_opt__cp_eb_ab */
    // @ext(0xba, 0x02, 0x02)
    // model ep_sys_opt__cp_eb_ab is Memory<UCH>;

    /** Konstanten 0x0004 _A_IF0__intP1_P30 */
    @ext(0xbc, 0x02, 0x04)
    model _A_IF0__intP1_P30 is Memory<UCH>;

    // Alias of _A_IF0__intP1_P30
    // /** Konstanten 0x0004 _A_IF1__wti */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_IF1__wti is Memory<UCH>;

    // Alias of _A_IF0__intP1_P30
    // /** Konstanten 0x0004 _A_Mk0__INTP30_ */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_Mk0__INTP30_ is Memory<UCH>;

    // Alias of _A_IF0__intP1_P30
    // /** Konstanten 0x0004 _A_Mk1__wti_ */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_Mk1__wti_ is Memory<UCH>;

    // Alias of _A_IF0__intP1_P30
    // /** Konstanten 0x0004 eea_LOCKOUT_SYS_INV */
    // @ext(0xbc, 0x02, 0x04)
    // model eea_LOCKOUT_SYS_INV is Memory<UCH>;

    /** Konstanten 0x0005 l_PARAS_FS_SYSTEM */
    @ext(0xbd, 0x02, 0x05)
    model l_PARAS_FS_SYSTEM is Memory<UCH>;

    /** Konstanten 0x0006 _CODEBANK_BANKS */
    @ext(0xbe, 0x02, 0x06)
    model _CODEBANK_BANKS is Memory<UCH>;

    // Alias of _CODEBANK_BANKS
    // /** Konstanten 0x0006 eea_LOCKOUT_SYS2 */
    // @ext(0xbe, 0x02, 0x06)
    // model eea_LOCKOUT_SYS2 is Memory<UCH>;

    /** Konstanten 0x0008 _A_IF0H__tmh1 */
    @ext(0xb0, 0x02, 0x08)
    model _A_IF0H__tmh1 is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 _A_IF0__intP2_P31 */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_IF0__intP2_P31 is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 _A_IF1__tm51 */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_IF1__tm51 is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 _A_Mk0_Hi__tmh1_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk0_Hi__tmh1_ is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 _A_Mk0__INTP31_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk0__INTP31_ is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 _A_Mk1__tm51_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk1__tm51_ is Memory<UCH>;

    // Alias of _A_IF0H__tmh1
    // /** Konstanten 0x0008 eea_LOCKOUT_SYS_INV2 */
    // @ext(0xb0, 0x02, 0x08)
    // model eea_LOCKOUT_SYS_INV2 is Memory<UCH>;

    /** Konstanten 0x0009 muescot_tag_year */
    @ext(0xb1, 0x02, 0x09)
    model muescot_tag_year is Memory<UCH>;

    /** Konstanten 0x000A eea_FS_SYSTEM_ANF */
    @ext(0xb2, 0x02, 0x0A)
    model eea_FS_SYSTEM_ANF is Memory<UCH>;

    /** Konstanten 0x000E eea_fs_system_crc */
    @ext(0xb6, 0x02, 0x0E)
    model eea_fs_system_crc is Memory<UCH>;

    /** Konstanten 0x000F eea_sys_stati_anf */
    @ext(0xb7, 0x02, 0x0F)
    model eea_sys_stati_anf is Memory<UCH>;

    /** Konstanten 0x0010 _A_IF0H__tmh0 */
    @ext(0xa8, 0x02, 0x10)
    model _A_IF0H__tmh0 is Memory<UCH>;

    // Alias of _A_IF0H__tmh0
    // /** Konstanten 0x0010 _A_Mk0_Hi__tmh0_ */
    // @ext(0xa8, 0x02, 0x10)
    // model _A_Mk0_Hi__tmh0_ is Memory<UCH>;

    // Alias of _A_IF0H__tmh0
    // /** Konstanten 0x0010 _A_Mk0__INTP_ */
    // @ext(0xa8, 0x02, 0x10)
    // model _A_Mk0__INTP_ is Memory<UCH>;

    /** Konstanten 0x0013 muescot_tag_day */
    @ext(0xab, 0x02, 0x13)
    model muescot_tag_day is Memory<UCH>;

    /** Konstanten 0x0014 sys_stati_len */
    @ext(0xac, 0x02, 0x14)
    model sys_stati_len is Memory<UCH>;

    /** Konstanten 0x0020 _A_IF0H__tm51 */
    @ext(0x98, 0x02, 0x20)
    model _A_IF0H__tm51 is Memory<UCH>;

    // Alias of _A_IF0H__tm51
    // /** Konstanten 0x0020 _A_Mk0_Hi__tm51_ */
    // @ext(0x98, 0x02, 0x20)
    // model _A_Mk0_Hi__tm51_ is Memory<UCH>;

    /** Konstanten 0x0022 eea_sys_stati_end */
    @ext(0x9a, 0x02, 0x22)
    model eea_sys_stati_end is Memory<UCH>;

    /** Konstanten 0x0023 eea_sys_stati_ptr */
    @ext(0x9b, 0x02, 0x23)
    model eea_sys_stati_ptr is Memory<UCH>;

    /** Konstanten 0x0024 eea_sys_res_cnt */
    @ext(0x9c, 0x02, 0x24)
    model eea_sys_res_cnt is Memory<UCH>;

    /** Konstanten 0x0031 eea_sys_end */
    @ext(0x89, 0x02, 0x31)
    model eea_sys_end is Memory<UCH>;

    /** Konstanten 0x0032 EEA_ZFM_LOCKOUT */
    @ext(0x8a, 0x02, 0x32)
    model EEA_ZFM_LOCKOUT is Memory<UCH>;

    /** Konstanten 0x0036 EEA_ZFM_ERR_GERAET */
    @ext(0x8e, 0x02, 0x36)
    model EEA_ZFM_ERR_GERAET is Memory<UCH>;

    /** Konstanten 0x0038 EEA_ZFM_ERR_PROZESS */
    @ext(0x80, 0x02, 0x38)
    model EEA_ZFM_ERR_PROZESS is Memory<UCH>;

    /** Konstanten 0x003A EEA_MCC_P_PARA_ANF */
    @ext(0x82, 0x02, 0x3A)
    model EEA_MCC_P_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x0040 _A_IF0H__tm000 */
    @ext(0xf8, 0x02, 0x40)
    model _A_IF0H__tm000 is Memory<UCH>;

    // Alias of _A_IF0H__tm000
    // /** Konstanten 0x0040 _A_Mk0_Hi__tm000_ */
    // @ext(0xf8, 0x02, 0x40)
    // model _A_Mk0_Hi__tm000_ is Memory<UCH>;

    // Alias of _A_IF0H__tm000
    // /** Konstanten 0x0040 __T_wait_n12cl */
    // @ext(0xf8, 0x02, 0x40)
    // model __T_wait_n12cl is Memory<UCH>;

    /** Konstanten 0x0041 EEA_MCC_P_PARA_KONFI_P10 */
    @ext(0xf9, 0x02, 0x41)
    model EEA_MCC_P_PARA_KONFI_P10 is Memory<UCH>;

    /** Konstanten 0x0042 __T_set_digout_pins */
    @ext(0xfa, 0x02, 0x42)
    model __T_set_digout_pins is Memory<UCH>;

    /** Konstanten 0x004E NEC */
    @ext(0xf6, 0x02, 0x4E)
    model NEC is Memory<UCH>;

    /** Konstanten 0x0063 EEA_MCC_P_PARA_CRC */
    @ext(0xdb, 0x02, 0x63)
    model EEA_MCC_P_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x0064 EEA_MCC_P_PARA_ANF_2 */
    @ext(0xdc, 0x02, 0x64)
    model EEA_MCC_P_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x007F rom_page_default */
    @ext(0xc7, 0x02, 0x7F)
    model rom_page_default is Memory<UCH>;

    /** Konstanten 0x0080 _A_IF0H__tm010 */
    @ext(0x38, 0x02, 0x80)
    model _A_IF0H__tm010 is Memory<UCH>;

    // Alias of _A_IF0H__tm010
    // /** Konstanten 0x0080 _A_Mk0_Hi__tm010_ */
    // @ext(0x38, 0x02, 0x80)
    // model _A_Mk0_Hi__tm010_ is Memory<UCH>;

    // Alias of _A_IF0H__tm010
    // /** Konstanten 0x0080 ep_sys_opt__noemres */
    // @ext(0x38, 0x02, 0x80)
    // model ep_sys_opt__noemres is Memory<UCH>;

    // Alias of _A_IF0H__tm010
    // /** Konstanten 0x0080 optbyte */
    // @ext(0x38, 0x02, 0x80)
    // model optbyte is Memory<UCH>;

    /** Konstanten 0x0081 POC_Mode */
    @ext(0x39, 0x02, 0x81)
    model POC_Mode is Memory<UCH>;

    /** Konstanten 0x0084 OSD_Mode */
    @ext(0x3c, 0x02, 0x84)
    model OSD_Mode is Memory<UCH>;

    /** Konstanten 0x008D EEA_MCC_P_PARA_CRC_2 */
    @ext(0x35, 0x02, 0x8D)
    model EEA_MCC_P_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x008E EEA_MCC_ANLAGEN_PARA_ANF */
    @ext(0x36, 0x02, 0x8E)
    model EEA_MCC_ANLAGEN_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00A3 EEA_MCC_ANLAGEN_PARA_CRC */
    @ext(0x1b, 0x02, 0xA3)
    model EEA_MCC_ANLAGEN_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00A4 EEA_MCC_ANLAGEN_PARA_ANF_2 */
    @ext(0x1c, 0x02, 0xA4)
    model EEA_MCC_ANLAGEN_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00B9 EEA_MCC_ANLAGEN_PARA_CRC_2 */
    @ext(0x01, 0x02, 0xB9)
    model EEA_MCC_ANLAGEN_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00BA EEA_BEDIEN_PARA_ANF */
    @ext(0x02, 0x02, 0xBA)
    model EEA_BEDIEN_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00C5 EEA_BEDIEN_PARA_CRC */
    @ext(0x7d, 0x02, 0xC5)
    model EEA_BEDIEN_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00C6 EEA_BEDIEN_PARA_ANF_2 */
    @ext(0x7e, 0x02, 0xC6)
    model EEA_BEDIEN_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00D1 EEA_BEDIEN_PARA_CRC_2 */
    @ext(0x69, 0x02, 0xD1)
    model EEA_BEDIEN_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00D2 EEA_IDENT_PARA_ANF */
    @ext(0x6a, 0x02, 0xD2)
    model EEA_IDENT_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00D9 EEA_IDENT_PARA_CRC */
    @ext(0x61, 0x02, 0xD9)
    model EEA_IDENT_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00DA EEA_IDENT_PARA_ANF_2 */
    @ext(0x62, 0x02, 0xDA)
    model EEA_IDENT_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00E0 xram_page_default */
    @ext(0x58, 0x02, 0xE0)
    model xram_page_default is Memory<UCH>;

    /** Konstanten 0x00E1 EEA_IDENT_PARA_CRC_2 */
    @ext(0x59, 0x02, 0xE1)
    model EEA_IDENT_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00E2 EEA_KUNDEN_PRUEFDATA_ANF */
    @ext(0x5a, 0x02, 0xE2)
    model EEA_KUNDEN_PRUEFDATA_ANF is Memory<UCH>;

    /** Konstanten 0x00FA EEA_KUNDEN_PRUEFDATA_END */
    @ext(0x42, 0x02, 0xFA)
    model EEA_KUNDEN_PRUEFDATA_END is Memory<UCH>;

    /** Konstanten 0x0130 _CSTACK_SIZE */
    @ext(0x04, 0x06, 0x01, 0x02, 0x30)
    model _CSTACK_SIZE is Memory<UCH>;

    /** Konstanten 0x0190 EEA_F50_ERR_INFO */
    @ext(0xa4, 0x06, 0x01, 0x02, 0x90)
    model EEA_F50_ERR_INFO is Memory<UCH>;

    // Alias of EEA_F50_ERR_INFO
    // /** Konstanten 0x0190 EEA_FXX_INFO_ANF */
    // @ext(0xa4, 0x06, 0x01, 0x02, 0x90)
    // model EEA_FXX_INFO_ANF is Memory<UCH>;

    /** Konstanten 0x0191 EEA_F50_MOD_INFO */
    @ext(0xa5, 0x06, 0x01, 0x02, 0x91)
    model EEA_F50_MOD_INFO is Memory<UCH>;

    /** Konstanten 0x0192 EEA_F54_ERR_INFO */
    @ext(0xa6, 0x06, 0x01, 0x02, 0x92)
    model EEA_F54_ERR_INFO is Memory<UCH>;

    /** Konstanten 0x0193 EEA_F54_MOD_INFO */
    @ext(0xa7, 0x06, 0x01, 0x02, 0x93)
    model EEA_F54_MOD_INFO is Memory<UCH>;

    /** Konstanten 0x01BC EEA_HIST_ANF */
    @ext(0x88, 0x06, 0x01, 0x02, 0xBC)
    model EEA_HIST_ANF is Memory<UCH>;

    // Alias of EEA_HIST_ANF
    // /** Konstanten 0x01BC EEA_HIST_ENTRY_00 */
    // @ext(0x88, 0x06, 0x01, 0x02, 0xBC)
    // model EEA_HIST_ENTRY_00 is Memory<UCH>;

    /** Konstanten 0x01CC EEA_HIST_ENTRY_01 */
    @ext(0xf8, 0x06, 0x01, 0x02, 0xCC)
    model EEA_HIST_ENTRY_01 is Memory<UCH>;

    /** Konstanten 0x01DC EEA_HIST_ENTRY_02 */
    @ext(0xe8, 0x06, 0x01, 0x02, 0xDC)
    model EEA_HIST_ENTRY_02 is Memory<UCH>;

    /** Konstanten 0x01EC EEA_HIST_ENTRY_03 */
    @ext(0xd8, 0x06, 0x01, 0x02, 0xEC)
    model EEA_HIST_ENTRY_03 is Memory<UCH>;

    /** Konstanten 0x01FC EEA_HIST_ENTRY_04 */
    @ext(0xc8, 0x06, 0x01, 0x02, 0xFC)
    model EEA_HIST_ENTRY_04 is Memory<UCH>;

    /** Konstanten 0x020C EEA_HIST_ENTRY_05 */
    @ext(0xa0, 0x06, 0x02, 0x02, 0x0C)
    model EEA_HIST_ENTRY_05 is Memory<UCH>;

    /** Konstanten 0x021C EEA_HIST_ENTRY_06 */
    @ext(0xb0, 0x06, 0x02, 0x02, 0x1C)
    model EEA_HIST_ENTRY_06 is Memory<UCH>;

    /** Konstanten 0x022C EEA_HIST_ENTRY_07 */
    @ext(0x80, 0x06, 0x02, 0x02, 0x2C)
    model EEA_HIST_ENTRY_07 is Memory<UCH>;

    /** Konstanten 0x023C EEA_HIST_ENTRY_08 */
    @ext(0x90, 0x06, 0x02, 0x02, 0x3C)
    model EEA_HIST_ENTRY_08 is Memory<UCH>;

    /** Konstanten 0x024C EEA_HIST_ENTRY_09 */
    @ext(0xe0, 0x06, 0x02, 0x02, 0x4C)
    model EEA_HIST_ENTRY_09 is Memory<UCH>;

    /** Konstanten 0x025C EEA_HIST_ENTRY_10 */
    @ext(0xf0, 0x06, 0x02, 0x02, 0x5C)
    model EEA_HIST_ENTRY_10 is Memory<UCH>;

    /** Konstanten 0x026C EEA_HIST_ENTRY_11 */
    @ext(0xc0, 0x06, 0x02, 0x02, 0x6C)
    model EEA_HIST_ENTRY_11 is Memory<UCH>;

    /** Konstanten 0x027C EEA_HIST_ENTRY_12 */
    @ext(0xd0, 0x06, 0x02, 0x02, 0x7C)
    model EEA_HIST_ENTRY_12 is Memory<UCH>;

    /** Konstanten 0x028C EEA_HIST_ENTRY_13 */
    @ext(0x20, 0x06, 0x02, 0x02, 0x8C)
    model EEA_HIST_ENTRY_13 is Memory<UCH>;

    /** Konstanten 0x029C EEA_HIST_ENTRY_14 */
    @ext(0x30, 0x06, 0x02, 0x02, 0x9C)
    model EEA_HIST_ENTRY_14 is Memory<UCH>;

    /** Konstanten 0x02AC EEA_HIST_ENTRY_15 */
    @ext(0x00, 0x06, 0x02, 0x02, 0xAC)
    model EEA_HIST_ENTRY_15 is Memory<UCH>;

    /** Konstanten 0x02BB EEA_HIST_END */
    @ext(0x17, 0x06, 0x02, 0x02, 0xBB)
    model EEA_HIST_END is Memory<UCH>;

    /** Konstanten 0x02BC EEA_HIST_ADR_MERKER */
    @ext(0x10, 0x06, 0x02, 0x02, 0xBC)
    model EEA_HIST_ADR_MERKER is Memory<UCH>;

    /** Konstanten 0x02BD EEA_HIST_RELEASE */
    @ext(0x11, 0x06, 0x02, 0x02, 0xBD)
    model EEA_HIST_RELEASE is Memory<UCH>;

    /** Konstanten 0x02C0 SYSTEM_CODE_START */
    @ext(0x6c, 0x06, 0x02, 0x02, 0xC0)
    model SYSTEM_CODE_START is Memory<UCH>;

    // Alias of SYSTEM_CODE_START
    // /** Konstanten 0x02C0 ini_ADC */
    // @ext(0x6c, 0x06, 0x02, 0x02, 0xC0)
    // model ini_ADC is Memory<UCH>;

    /** Konstanten 0x02D5 get_ADC */
    @ext(0x79, 0x06, 0x02, 0x02, 0xD5)
    model get_ADC is Memory<UCH>;

    /** Konstanten 0x02E5 cini_comm_key */
    @ext(0x49, 0x06, 0x02, 0x02, 0xE5)
    model cini_comm_key is Memory<UCH>;

    /** Konstanten 0x02EC get_comm_level */
    @ext(0x40, 0x06, 0x02, 0x02, 0xEC)
    model get_comm_level is Memory<UCH>;

    /** Konstanten 0x02EF set_comm_level */
    @ext(0x43, 0x06, 0x02, 0x02, 0xEF)
    model set_comm_level is Memory<UCH>;

    /** Konstanten 0x030C get_comm_byte */
    @ext(0x1c, 0x06, 0x03, 0x02, 0x0C)
    model get_comm_byte is Memory<UCH>;

    /** Konstanten 0x0345 EEA_N_SHUT_OFF1 */
    @ext(0x55, 0x06, 0x03, 0x02, 0x45)
    model EEA_N_SHUT_OFF1 is Memory<UCH>;

    // Alias of EEA_N_SHUT_OFF1
    // /** Konstanten 0x0345 EEA_OPER_ANF */
    // @ext(0x55, 0x06, 0x03, 0x02, 0x45)
    // model EEA_OPER_ANF is Memory<UCH>;

    // Alias of EEA_N_SHUT_OFF1
    // /** Konstanten 0x0345 EEA_STATI_ANF */
    // @ext(0x55, 0x06, 0x03, 0x02, 0x45)
    // model EEA_STATI_ANF is Memory<UCH>;

    /** Konstanten 0x0347 EEA_N_SHUT_OFF2 */
    @ext(0x57, 0x06, 0x03, 0x02, 0x47)
    model EEA_N_SHUT_OFF2 is Memory<UCH>;

    /** Konstanten 0x0349 EEA_N_WARMSTART */
    @ext(0x59, 0x06, 0x03, 0x02, 0x49)
    model EEA_N_WARMSTART is Memory<UCH>;

    /** Konstanten 0x034B EEA_N_KALTSTART */
    @ext(0x5b, 0x06, 0x03, 0x02, 0x4B)
    model EEA_N_KALTSTART is Memory<UCH>;

    /** Konstanten 0x034D EEA_N_BAD_ZUEND */
    @ext(0x5d, 0x06, 0x03, 0x02, 0x4D)
    model EEA_N_BAD_ZUEND is Memory<UCH>;

    /** Konstanten 0x034F EEA_N_FLAUSFALL */
    @ext(0x5f, 0x06, 0x03, 0x02, 0x4F)
    model EEA_N_FLAUSFALL is Memory<UCH>;

    /** Konstanten 0x0351 EEA_H_WART_BON */
    @ext(0x41, 0x06, 0x03, 0x02, 0x51)
    model EEA_H_WART_BON is Memory<UCH>;

    /** Konstanten 0x0353 EEA_N_OEL */
    @ext(0x43, 0x06, 0x03, 0x02, 0x53)
    model EEA_N_OEL is Memory<UCH>;

    /** Konstanten 0x0356 EEA_H_BON */
    @ext(0x46, 0x06, 0x03, 0x02, 0x56)
    model EEA_H_BON is Memory<UCH>;

    /** Konstanten 0x0359 EEA_N_BON */
    @ext(0x49, 0x06, 0x03, 0x02, 0x59)
    model EEA_N_BON is Memory<UCH>;

    /** Konstanten 0x035C EEA_H_PON */
    @ext(0x4c, 0x06, 0x03, 0x02, 0x5C)
    model EEA_H_PON is Memory<UCH>;

    /** Konstanten 0x035F EEA_N_PON */
    @ext(0x4f, 0x06, 0x03, 0x02, 0x5F)
    model EEA_N_PON is Memory<UCH>;

    /** Konstanten 0x0360 EEA_OPER_END */
    @ext(0x70, 0x06, 0x03, 0x02, 0x60)
    model EEA_OPER_END is Memory<UCH>;

    /** Konstanten 0x0361 EEA_ERR_STATI_ANF */
    @ext(0x71, 0x06, 0x03, 0x02, 0x61)
    model EEA_ERR_STATI_ANF is Memory<UCH>;

    // Alias of EEA_ERR_STATI_ANF
    // /** Konstanten 0x0361 EEA_FC_VL_STB_OT */
    // @ext(0x71, 0x06, 0x03, 0x02, 0x61)
    // model EEA_FC_VL_STB_OT is Memory<UCH>;

    /** Konstanten 0x0363 EEA_FC_VL_WT_STW_OT */
    @ext(0x73, 0x06, 0x03, 0x02, 0x63)
    model EEA_FC_VL_WT_STW_OT is Memory<UCH>;

    /** Konstanten 0x0365 EEA_FC_VL_WT_STW_OT_W */
    @ext(0x75, 0x06, 0x03, 0x02, 0x65)
    model EEA_FC_VL_WT_STW_OT_W is Memory<UCH>;

    /** Konstanten 0x0367 EEA_FC_ABGAS_STB_OT */
    @ext(0x77, 0x06, 0x03, 0x02, 0x67)
    model EEA_FC_ABGAS_STB_OT is Memory<UCH>;

    /** Konstanten 0x0369 EEA_FC_MAX_GRAD_WT */
    @ext(0x79, 0x06, 0x03, 0x02, 0x69)
    model EEA_FC_MAX_GRAD_WT is Memory<UCH>;

    /** Konstanten 0x036B EEA_FC_DT_VL_RL */
    @ext(0x7b, 0x06, 0x03, 0x02, 0x6B)
    model EEA_FC_DT_VL_RL is Memory<UCH>;

    /** Konstanten 0x036D EEA_FC_DT_VL_RL_W */
    @ext(0x7d, 0x06, 0x03, 0x02, 0x6D)
    model EEA_FC_DT_VL_RL_W is Memory<UCH>;

    /** Konstanten 0x036F EEA_FC_ABGAS_STW_OT */
    @ext(0x7f, 0x06, 0x03, 0x02, 0x6F)
    model EEA_FC_ABGAS_STW_OT is Memory<UCH>;

    /** Konstanten 0x0371 EEA_FC_ABGAS_STW_OT_W */
    @ext(0x61, 0x06, 0x03, 0x02, 0x71)
    model EEA_FC_ABGAS_STW_OT_W is Memory<UCH>;

    /** Konstanten 0x0373 EEA_FC_VT_STB_OT */
    @ext(0x63, 0x06, 0x03, 0x02, 0x73)
    model EEA_FC_VT_STB_OT is Memory<UCH>;

    /** Konstanten 0x0375 EEA_FC_VT_STB_OT_W */
    @ext(0x65, 0x06, 0x03, 0x02, 0x75)
    model EEA_FC_VT_STB_OT_W is Memory<UCH>;

    /** Konstanten 0x0377 EEA_FC_P_FEUER_OP */
    @ext(0x67, 0x06, 0x03, 0x02, 0x77)
    model EEA_FC_P_FEUER_OP is Memory<UCH>;

    /** Konstanten 0x0379 EEA_FC_P_FEUER_OP_W */
    @ext(0x69, 0x06, 0x03, 0x02, 0x79)
    model EEA_FC_P_FEUER_OP_W is Memory<UCH>;

    /** Konstanten 0x037B EEA_FC_W_NG_ERR */
    @ext(0x6b, 0x06, 0x03, 0x02, 0x7B)
    model EEA_FC_W_NG_ERR is Memory<UCH>;

    /** Konstanten 0x037D EEA_FC_NO_FL_SZA */
    @ext(0x6d, 0x06, 0x03, 0x02, 0x7D)
    model EEA_FC_NO_FL_SZA is Memory<UCH>;

    /** Konstanten 0x037F EEA_FC_NO_FL_SZA_W */
    @ext(0x6f, 0x06, 0x03, 0x02, 0x7F)
    model EEA_FC_NO_FL_SZA_W is Memory<UCH>;

    /** Konstanten 0x0381 EEA_FC_NO_FL_BETRIEB */
    @ext(0x91, 0x06, 0x03, 0x02, 0x81)
    model EEA_FC_NO_FL_BETRIEB is Memory<UCH>;

    /** Konstanten 0x0383 EEA_FC_NO_FL_BETRIEB_W */
    @ext(0x93, 0x06, 0x03, 0x02, 0x83)
    model EEA_FC_NO_FL_BETRIEB_W is Memory<UCH>;

    /** Konstanten 0x0385 EEA_FC_FREMDLICHT */
    @ext(0x95, 0x06, 0x03, 0x02, 0x85)
    model EEA_FC_FREMDLICHT is Memory<UCH>;

    /** Konstanten 0x0387 EEA_FC_NOT_AUS */
    @ext(0x97, 0x06, 0x03, 0x02, 0x87)
    model EEA_FC_NOT_AUS is Memory<UCH>;

    /** Konstanten 0x0389 EEA_FC_ALARM_KOPU */
    @ext(0x99, 0x06, 0x03, 0x02, 0x89)
    model EEA_FC_ALARM_KOPU is Memory<UCH>;

    /** Konstanten 0x038B EEA_FC_P_FEUER_DEFEKT */
    @ext(0x9b, 0x06, 0x03, 0x02, 0x8B)
    model EEA_FC_P_FEUER_DEFEKT is Memory<UCH>;

    /** Konstanten 0x038D EEA_FC_RLT_AP_DEFEKT */
    @ext(0x9d, 0x06, 0x03, 0x02, 0x8D)
    model EEA_FC_RLT_AP_DEFEKT is Memory<UCH>;

    /** Konstanten 0x038F EEA_FC_TWT_DEFEKT */
    @ext(0x9f, 0x06, 0x03, 0x02, 0x8F)
    model EEA_FC_TWT_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0391 EEA_FC_VL_ESTB2_DEFEKT */
    @ext(0x81, 0x06, 0x03, 0x02, 0x91)
    model EEA_FC_VL_ESTB2_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0393 EEA_FC_ABG_ESTB2_DEFEKT */
    @ext(0x83, 0x06, 0x03, 0x02, 0x93)
    model EEA_FC_ABG_ESTB2_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0395 EEA_FC_NO_LDW_RUHE */
    @ext(0x85, 0x06, 0x03, 0x02, 0x95)
    model EEA_FC_NO_LDW_RUHE is Memory<UCH>;

    /** Konstanten 0x0397 EEA_FC_AF_DEFEKT */
    @ext(0x87, 0x06, 0x03, 0x02, 0x97)
    model EEA_FC_AF_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0399 EEA_FC_B3_DEFEKT */
    @ext(0x89, 0x06, 0x03, 0x02, 0x99)
    model EEA_FC_B3_DEFEKT is Memory<UCH>;

    /** Konstanten 0x039B EEA_FC_B12_DEFEKT */
    @ext(0x8b, 0x06, 0x03, 0x02, 0x9B)
    model EEA_FC_B12_DEFEKT is Memory<UCH>;

    /** Konstanten 0x039D EEA_FC_MIN_P_ANLAGE */
    @ext(0x8d, 0x06, 0x03, 0x02, 0x9D)
    model EEA_FC_MIN_P_ANLAGE is Memory<UCH>;

    /** Konstanten 0x039F EEA_FC_MIN_P_ANLAGE_W */
    @ext(0x8f, 0x06, 0x03, 0x02, 0x9F)
    model EEA_FC_MIN_P_ANLAGE_W is Memory<UCH>;

    /** Konstanten 0x03A1 EEA_FC_VT_DEFEKT */
    @ext(0xb1, 0x06, 0x03, 0x02, 0xA1)
    model EEA_FC_VT_DEFEKT is Memory<UCH>;

    /** Konstanten 0x03A3 EEA_FC_B10_DEFEKT */
    @ext(0xb3, 0x06, 0x03, 0x02, 0xA3)
    model EEA_FC_B10_DEFEKT is Memory<UCH>;

    /** Konstanten 0x03A5 EEA_FC_B11_DEFEKT */
    @ext(0xb5, 0x06, 0x03, 0x02, 0xA5)
    model EEA_FC_B11_DEFEKT is Memory<UCH>;

    /** Konstanten 0x03A7 EEA_FC_AK_DEFEKT */
    @ext(0xb7, 0x06, 0x03, 0x02, 0xA7)
    model EEA_FC_AK_DEFEKT is Memory<UCH>;

    /** Konstanten 0x03A9 EEA_FC_PWM_PUMPE_DEFEKT */
    @ext(0xb9, 0x06, 0x03, 0x02, 0xA9)
    model EEA_FC_PWM_PUMPE_DEFEKT is Memory<UCH>;

    /** Konstanten 0x03AB EEA_FC_NG_ERR */
    @ext(0xbb, 0x06, 0x03, 0x02, 0xAB)
    model EEA_FC_NG_ERR is Memory<UCH>;

    /** Konstanten 0x03AD EEA_FC_NO_NG_RUHE */
    @ext(0xbd, 0x06, 0x03, 0x02, 0xAD)
    model EEA_FC_NO_NG_RUHE is Memory<UCH>;

    /** Konstanten 0x03AF EEA_FC_NO_LDW */
    @ext(0xbf, 0x06, 0x03, 0x02, 0xAF)
    model EEA_FC_NO_LDW is Memory<UCH>;

    /** Konstanten 0x03B1 EEA_FC_NO_ZUEND */
    @ext(0xa1, 0x06, 0x03, 0x02, 0xB1)
    model EEA_FC_NO_ZUEND is Memory<UCH>;

    /** Konstanten 0x03B3 EEA_FC_OLV_ERR */
    @ext(0xa3, 0x06, 0x03, 0x02, 0xB3)
    model EEA_FC_OLV_ERR is Memory<UCH>;

    /** Konstanten 0x03B5 EEA_FC_UNKNOWN_ERROR */
    @ext(0xa5, 0x06, 0x03, 0x02, 0xB5)
    model EEA_FC_UNKNOWN_ERROR is Memory<UCH>;

    /** Konstanten 0x03B7 EEA_FC_NFS_CRC_ERR */
    @ext(0xa7, 0x06, 0x03, 0x02, 0xB7)
    model EEA_FC_NFS_CRC_ERR is Memory<UCH>;

    /** Konstanten 0x03B9 EEA_FC_FS_CRC_ERR */
    @ext(0xa9, 0x06, 0x03, 0x02, 0xB9)
    model EEA_FC_FS_CRC_ERR is Memory<UCH>;

    /** Konstanten 0x03BB EEA_FC_VOLTAGE_ERR */
    @ext(0xab, 0x06, 0x03, 0x02, 0xBB)
    model EEA_FC_VOLTAGE_ERR is Memory<UCH>;

    /** Konstanten 0x03BD EEA_FC_ELEKTRONIK_ERR */
    @ext(0xad, 0x06, 0x03, 0x02, 0xBD)
    model EEA_FC_ELEKTRONIK_ERR is Memory<UCH>;

    /** Konstanten 0x03BF EEA_FC_EEPROM_ERR */
    @ext(0xaf, 0x06, 0x03, 0x02, 0xBF)
    model EEA_FC_EEPROM_ERR is Memory<UCH>;

    /** Konstanten 0x03C1 EEA_FC_REL_ERR */
    @ext(0xd1, 0x06, 0x03, 0x02, 0xC1)
    model EEA_FC_REL_ERR is Memory<UCH>;

    /** Konstanten 0x03C3 EEA_FC_K1_MCC_MCB_ERR */
    @ext(0xd3, 0x06, 0x03, 0x02, 0xC3)
    model EEA_FC_K1_MCC_MCB_ERR is Memory<UCH>;

    /** Konstanten 0x03C5 EEA_FC_TFE_LIMITER */
    @ext(0xd5, 0x06, 0x03, 0x02, 0xC5)
    model EEA_FC_TFE_LIMITER is Memory<UCH>;

    /** Konstanten 0x03C7 EEA_FC_4_20MA_ERR */
    @ext(0xd7, 0x06, 0x03, 0x02, 0xC7)
    model EEA_FC_4_20MA_ERR is Memory<UCH>;

    /** Konstanten 0x03C9 EEA_FC_TDHZ_COLD */
    @ext(0xd9, 0x06, 0x03, 0x02, 0xC9)
    model EEA_FC_TDHZ_COLD is Memory<UCH>;

    /** Konstanten 0x03CB EEA_FC_TDHZ_HOT */
    @ext(0xdb, 0x06, 0x03, 0x02, 0xCB)
    model EEA_FC_TDHZ_HOT is Memory<UCH>;

    /** Konstanten 0x03CD EEA_FC_EBUS_COM_TO_KAMA_ERR */
    @ext(0xdd, 0x06, 0x03, 0x02, 0xCD)
    model EEA_FC_EBUS_COM_TO_KAMA_ERR is Memory<UCH>;

    /** Konstanten 0x03CF EEA_FC_EBUS_COM_TO_FS_ERR */
    @ext(0xdf, 0x06, 0x03, 0x02, 0xCF)
    model EEA_FC_EBUS_COM_TO_FS_ERR is Memory<UCH>;

    /** Konstanten 0x03D1 EEA_FC_EBUS_COM_TO_EM1_ERR */
    @ext(0xc1, 0x06, 0x03, 0x02, 0xD1)
    model EEA_FC_EBUS_COM_TO_EM1_ERR is Memory<UCH>;

    /** Konstanten 0x03D3 EEA_FC_EBUS_COM_TO_EM2_ERR */
    @ext(0xc3, 0x06, 0x03, 0x02, 0xD3)
    model EEA_FC_EBUS_COM_TO_EM2_ERR is Memory<UCH>;

    /** Konstanten 0x03D5 EEA_FC_EBUS_COM_TO_EM3_ERR */
    @ext(0xc5, 0x06, 0x03, 0x02, 0xD5)
    model EEA_FC_EBUS_COM_TO_EM3_ERR is Memory<UCH>;

    /** Konstanten 0x03D7 EEA_FC_EBUS_COM_TO_EM4_ERR */
    @ext(0xc7, 0x06, 0x03, 0x02, 0xD7)
    model EEA_FC_EBUS_COM_TO_EM4_ERR is Memory<UCH>;

    /** Konstanten 0x03D9 EEA_FC_EBUS_COM_TO_EM5_ERR */
    @ext(0xc9, 0x06, 0x03, 0x02, 0xD9)
    model EEA_FC_EBUS_COM_TO_EM5_ERR is Memory<UCH>;

    /** Konstanten 0x03DB EEA_FC_EBUS_COM_TO_EM6_ERR */
    @ext(0xcb, 0x06, 0x03, 0x02, 0xDB)
    model EEA_FC_EBUS_COM_TO_EM6_ERR is Memory<UCH>;

    /** Konstanten 0x03DD EEA_FC_EBUS_COM_TO_EM7_ERR */
    @ext(0xcd, 0x06, 0x03, 0x02, 0xDD)
    model EEA_FC_EBUS_COM_TO_EM7_ERR is Memory<UCH>;

    /** Konstanten 0x03DE EEA_ERR_STATI_END */
    @ext(0xce, 0x06, 0x03, 0x02, 0xDE)
    model EEA_ERR_STATI_END is Memory<UCH>;

    /** Konstanten 0x03DF EEA_BCC_ID_ANF */
    @ext(0xcf, 0x06, 0x03, 0x02, 0xDF)
    model EEA_BCC_ID_ANF is Memory<UCH>;

    /** Konstanten 0x03E1 EEA_BCC_ID_CRC */
    @ext(0xf1, 0x06, 0x03, 0x02, 0xE1)
    model EEA_BCC_ID_CRC is Memory<UCH>;

    /** Konstanten 0x03E2 EEA_BCC_ID_ANF_2 */
    @ext(0xf2, 0x06, 0x03, 0x02, 0xE2)
    model EEA_BCC_ID_ANF_2 is Memory<UCH>;

    /** Konstanten 0x03E5 EEA_PRUEFDATA_ANF */
    @ext(0xf5, 0x06, 0x03, 0x02, 0xE5)
    model EEA_PRUEFDATA_ANF is Memory<UCH>;

    /** Konstanten 0x03EC EEA_PRUEFDATA_ID_LOW */
    @ext(0xfc, 0x06, 0x03, 0x02, 0xEC)
    model EEA_PRUEFDATA_ID_LOW is Memory<UCH>;

    /** Konstanten 0x03EE EEA_PRUEFDATA_ID_HIGH */
    @ext(0xfe, 0x06, 0x03, 0x02, 0xEE)
    model EEA_PRUEFDATA_ID_HIGH is Memory<UCH>;

    /** Konstanten 0x03F0 EEA_PRUEFDATA_PARA_NR */
    @ext(0xe0, 0x06, 0x03, 0x02, 0xF0)
    model EEA_PRUEFDATA_PARA_NR is Memory<UCH>;

    /** Konstanten 0x03F2 EEA_PRUEFDATA_DD_MM */
    @ext(0xe2, 0x06, 0x03, 0x02, 0xF2)
    model EEA_PRUEFDATA_DD_MM is Memory<UCH>;

    /** Konstanten 0x03F4 EEA_PRUEFDATA_KW_YY */
    @ext(0xe4, 0x06, 0x03, 0x02, 0xF4)
    model EEA_PRUEFDATA_KW_YY is Memory<UCH>;

    /** Konstanten 0x03F6 EEA_PRUEFDATA_HH_MM */
    @ext(0xe6, 0x06, 0x03, 0x02, 0xF6)
    model EEA_PRUEFDATA_HH_MM is Memory<UCH>;

    /** Konstanten 0x03F8 EEA_PRUEFDATA_SER_NR_LOW */
    @ext(0xe8, 0x06, 0x03, 0x02, 0xF8)
    model EEA_PRUEFDATA_SER_NR_LOW is Memory<UCH>;

    // Alias of EEA_PRUEFDATA_SER_NR_LOW
    // /** Konstanten 0x03F8 set_comm_byte */
    // @ext(0xe8, 0x06, 0x03, 0x02, 0xF8)
    // model set_comm_byte is Memory<UCH>;

    /** Konstanten 0x03FA EEA_PRUEFDATA_SER_NR_HIGH */
    @ext(0xea, 0x06, 0x03, 0x02, 0xFA)
    model EEA_PRUEFDATA_SER_NR_HIGH is Memory<UCH>;

    /** Konstanten 0x03FC EEA_PRUEFDATA_SS */
    @ext(0xec, 0x06, 0x03, 0x02, 0xFC)
    model EEA_PRUEFDATA_SS is Memory<UCH>;

    /** Konstanten 0x03FD EEA_PRUEFDATA_BAUST_HW */
    @ext(0xed, 0x06, 0x03, 0x02, 0xFD)
    model EEA_PRUEFDATA_BAUST_HW is Memory<UCH>;

    // Alias of EEA_PRUEFDATA_BAUST_HW
    // /** Konstanten 0x03FD EEA_PRUEFDATA_END */
    // @ext(0xed, 0x06, 0x03, 0x02, 0xFD)
    // model EEA_PRUEFDATA_END is Memory<UCH>;

    /** Konstanten 0x03FE EEA_PRUEF_KENN */
    @ext(0xee, 0x06, 0x03, 0x02, 0xFE)
    model EEA_PRUEF_KENN is Memory<UCH>;

    /** Konstanten 0x03FF EEPROM_SIZE */
    @ext(0xef, 0x06, 0x03, 0x02, 0xFF)
    model EEPROM_SIZE is Memory<UCH>;

}
