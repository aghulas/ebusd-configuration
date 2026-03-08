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

    /** RAM 0x0024 tde_sample_soll_u16 */
    @ext(0x78, 0x01, 0x24)
    model tde_sample_soll_u16 is Memory<UCH>;

    /** RAM 0x0026 digout_val_u16 */
    @ext(0x7a, 0x01, 0x26)
    model digout_val_u16 is Memory<UCH>;

    /** RAM 0x0028 tdo_mask_u16 */
    @ext(0x74, 0x01, 0x28)
    model tdo_mask_u16 is Memory<UCH>;

    /** RAM 0x002A e_Syn_timer_u16 */
    @ext(0x76, 0x01, 0x2A)
    model e_Syn_timer_u16 is Memory<UCH>;

    /** RAM 0x002C sp_1st_user_irpt_u16 */
    @ext(0x70, 0x01, 0x2C)
    model sp_1st_user_irpt_u16 is Memory<UCH>;

    /** RAM 0x002E tst_ram_adr_pu8 */
    @ext(0x72, 0x01, 0x2E)
    model tst_ram_adr_pu8 is Memory<UCH>;

    /** RAM 0x0030 romcrc_padr_pu8 */
    @ext(0x6c, 0x01, 0x30)
    model romcrc_padr_pu8 is Memory<UCH>;

    /** RAM 0x0032 sfr_err_adr_u16 */
    @ext(0x6e, 0x01, 0x32)
    model sfr_err_adr_u16 is Memory<UCH>;

    /** RAM 0x0034 mode_SecCode_u16 */
    @ext(0x68, 0x01, 0x34)
    model mode_SecCode_u16 is Memory<UCH>;

    /** RAM 0x0036 cnt_Pruefstand_u16 */
    @ext(0x6a, 0x01, 0x36)
    model cnt_Pruefstand_u16 is Memory<UCH>;

    /** RAM 0x0038 cpy_MK0_u16 */
    @ext(0x64, 0x01, 0x38)
    model cpy_MK0_u16 is Memory<UCH>;

    /** RAM 0x003A cpy_MK1_u16 */
    @ext(0x66, 0x01, 0x3A)
    model cpy_MK1_u16 is Memory<UCH>;

    /** RAM 0x003C m_stati_u16 */
    @ext(0x60, 0x01, 0x3C)
    model m_stati_u16 is Memory<UCH>;

    /** RAM 0x003E OS_VAR_ANF */
    @ext(0x62, 0x01, 0x3E)
    model OS_VAR_ANF is Memory<UCH>;

    // Alias of OS_VAR_ANF
    // /** RAM 0x003E err_merk_u16 */
    // @ext(0x62, 0x01, 0x3E)
    // model err_merk_u16 is Memory<UCH>;

    /** RAM 0x0040 err_merk_alt_u16 */
    @ext(0x1c, 0x01, 0x40)
    model err_merk_alt_u16 is Memory<UCH>;

    /** RAM 0x0042 res_cycl_cnt_u16 */
    @ext(0x1e, 0x01, 0x42)
    model res_cycl_cnt_u16 is Memory<UCH>;

    /** RAM 0x0044 m_kaltstart_u8 */
    @ext(0x18, 0x01, 0x44)
    model m_kaltstart_u8 is Memory<UCH>;

    /** RAM 0x0045 m_kaltstart_alt_u8 */
    @ext(0x19, 0x01, 0x45)
    model m_kaltstart_alt_u8 is Memory<UCH>;

    /** RAM 0x0046 system_modus_u8 */
    @ext(0x1a, 0x01, 0x46)
    model system_modus_u8 is Memory<UCH>;

    /** RAM 0x0047 res_cnt_u8 */
    @ext(0x1b, 0x01, 0x47)
    model res_cnt_u8 is Memory<UCH>;

    /** RAM 0x0048 res_cnt_inv_u8 */
    @ext(0x14, 0x01, 0x48)
    model res_cnt_inv_u8 is Memory<UCH>;

    /** RAM 0x0049 os_var_crc_u8 */
    @ext(0x15, 0x01, 0x49)
    model os_var_crc_u8 is Memory<UCH>;

    /** RAM 0x004A RAM_FS_SYSTEM_ANF */
    @ext(0x16, 0x01, 0x4A)
    model RAM_FS_SYSTEM_ANF is Memory<UCH>;

    // Alias of RAM_FS_SYSTEM_ANF
    // /** RAM 0x004A _A_ep_sys_opt_u8 */
    // @ext(0x16, 0x01, 0x4A)
    // model _A_ep_sys_opt_u8 is Memory<UCH>;

    // Alias of RAM_FS_SYSTEM_ANF
    // /** RAM 0x004A ep_sys_opt_u8 */
    // @ext(0x16, 0x01, 0x4A)
    // model ep_sys_opt_u8 is Memory<UCH>;

    // Alias of RAM_FS_SYSTEM_ANF
    // /** RAM 0x004A fs_system_anf */
    // @ext(0x16, 0x01, 0x4A)
    // model fs_system_anf is Memory<UCH>;

    /** RAM 0x004B ep_sys_para_2_u8 */
    @ext(0x17, 0x01, 0x4B)
    model ep_sys_para_2_u8 is Memory<UCH>;

    /** RAM 0x004C ep_sys_para_3_u8 */
    @ext(0x10, 0x01, 0x4C)
    model ep_sys_para_3_u8 is Memory<UCH>;

    /** RAM 0x004D ep_tdi_limit_u8 */
    @ext(0x11, 0x01, 0x4D)
    model ep_tdi_limit_u8 is Memory<UCH>;

    /** RAM 0x004E RAM_FS_SYSTEM_CRC */
    @ext(0x12, 0x01, 0x4E)
    model RAM_FS_SYSTEM_CRC is Memory<UCH>;

    // Alias of RAM_FS_SYSTEM_CRC
    // /** RAM 0x004E ep_sys_crc_u8 */
    // @ext(0x12, 0x01, 0x4E)
    // model ep_sys_crc_u8 is Memory<UCH>;

    /** RAM 0x004F comm_level_ist_u8 */
    @ext(0x13, 0x01, 0x4F)
    model comm_level_ist_u8 is Memory<UCH>;

    /** RAM 0x0050 comm_timeout_u8 */
    @ext(0x0c, 0x01, 0x50)
    model comm_timeout_u8 is Memory<UCH>;

    /** RAM 0x0051 buffer_index_u8 */
    @ext(0x0d, 0x01, 0x51)
    model buffer_index_u8 is Memory<UCH>;

    /** RAM 0x0052 tde_cnt_u8 */
    @ext(0x0e, 0x01, 0x52)
    model tde_cnt_u8 is Memory<UCH>;

    /** RAM 0x0053 tdo_cnt_u8 */
    @ext(0x0f, 0x01, 0x53)
    model tdo_cnt_u8 is Memory<UCH>;

    /** RAM 0x0054 tdo_limit_u8 */
    @ext(0x08, 0x01, 0x54)
    model tdo_limit_u8 is Memory<UCH>;

    /** RAM 0x0055 tdo_mode_u8 */
    @ext(0x09, 0x01, 0x55)
    model tdo_mode_u8 is Memory<UCH>;

    /** RAM 0x0056 tdo_booster_u8 */
    @ext(0x0a, 0x01, 0x56)
    model tdo_booster_u8 is Memory<UCH>;

    /** RAM 0x0057 tdo_error_u8 */
    @ext(0x0b, 0x01, 0x57)
    model tdo_error_u8 is Memory<UCH>;

    /** RAM 0x0058 ebus_StatFlag_a_u8 */
    @ext(0x04, 0x01, 0x58)
    model ebus_StatFlag_a_u8 is Memory<UCH>;

    /** RAM 0x0059 ebus_StatFlag_b_u8 */
    @ext(0x05, 0x01, 0x59)
    model ebus_StatFlag_b_u8 is Memory<UCH>;

    /** RAM 0x005A e_RxCnt_u8 */
    @ext(0x06, 0x01, 0x5A)
    model e_RxCnt_u8 is Memory<UCH>;

    /** RAM 0x005B e_TxCnt_u8 */
    @ext(0x07, 0x01, 0x5B)
    model e_TxCnt_u8 is Memory<UCH>;

    /** RAM 0x005C e_Err_ISR_u8 */
    @ext(0x00, 0x01, 0x5C)
    model e_Err_ISR_u8 is Memory<UCH>;

    /** RAM 0x005D e_Tx_expand_u8 */
    @ext(0x01, 0x01, 0x5D)
    model e_Tx_expand_u8 is Memory<UCH>;

    /** RAM 0x005E FIFO */
    @ext(0x02, 0x01, 0x5E)
    model FIFO is Memory<UCH>;

    /** RAM 0x0068 e_Sperrzaehler_u8 */
    @ext(0x34, 0x01, 0x68)
    model e_Sperrzaehler_u8 is Memory<UCH>;

    /** RAM 0x0069 i2c_device_select_byte_u8 */
    @ext(0x35, 0x01, 0x69)
    model i2c_device_select_byte_u8 is Memory<UCH>;

    /** RAM 0x006A eeprom_size_u8 */
    @ext(0x36, 0x01, 0x6A)
    model eeprom_size_u8 is Memory<UCH>;

    /** RAM 0x006B last_lvi_u8 */
    @ext(0x37, 0x01, 0x6B)
    model last_lvi_u8 is Memory<UCH>;

    /** RAM 0x006C idf_status_u8 */
    @ext(0x30, 0x01, 0x6C)
    model idf_status_u8 is Memory<UCH>;

    /** RAM 0x006D eep_idf_status_u8 */
    @ext(0x31, 0x01, 0x6D)
    model eep_idf_status_u8 is Memory<UCH>;

    /** RAM 0x006E systimer_tirpend_u8 */
    @ext(0x32, 0x01, 0x6E)
    model systimer_tirpend_u8 is Memory<UCH>;

    /** RAM 0x006F romcrc_err_u8 */
    @ext(0x33, 0x01, 0x6F)
    model romcrc_err_u8 is Memory<UCH>;

    /** RAM 0x0070 romcrc_save_u8 */
    @ext(0x2c, 0x01, 0x70)
    model romcrc_save_u8 is Memory<UCH>;

    /** RAM 0x0071 romcrc_bank_test_u8 */
    @ext(0x2d, 0x01, 0x71)
    model romcrc_bank_test_u8 is Memory<UCH>;

    /** RAM 0x0072 icl100msec_u8 */
    @ext(0x2e, 0x01, 0x72)
    model icl100msec_u8 is Memory<UCH>;

    /** RAM 0x0073 icl20sec_u8 */
    @ext(0x2f, 0x01, 0x73)
    model icl20sec_u8 is Memory<UCH>;

    /** RAM 0x0074 icl1hrs_u8 */
    @ext(0x28, 0x01, 0x74)
    model icl1hrs_u8 is Memory<UCH>;

    /** RAM 0x0075 icl1hrs_lo_test_u8 */
    @ext(0x29, 0x01, 0x75)
    model icl1hrs_lo_test_u8 is Memory<UCH>;

    /** RAM 0x0076 idle_loop_cnt_u8 */
    @ext(0x2a, 0x01, 0x76)
    model idle_loop_cnt_u8 is Memory<UCH>;

    /** RAM 0x0077 req_SystemMode_u8 */
    @ext(0x2b, 0x01, 0x77)
    model req_SystemMode_u8 is Memory<UCH>;

    /** RAM 0x0078 exception_anf_IRPT_u8 */
    @ext(0x24, 0x01, 0x78)
    model exception_anf_IRPT_u8 is Memory<UCH>;

    /** RAM 0x0079 exception_anf_TASK_u8 */
    @ext(0x25, 0x01, 0x79)
    model exception_anf_TASK_u8 is Memory<UCH>;

    /** RAM 0x007A exception_anf_IDLE_u8 */
    @ext(0x26, 0x01, 0x7A)
    model exception_anf_IDLE_u8 is Memory<UCH>;

    /** RAM 0x007B proglauf_status_u8 */
    @ext(0x27, 0x01, 0x7B)
    model proglauf_status_u8 is Memory<UCH>;

    /** RAM 0x007C _A_test_flag_u8 */
    @ext(0x20, 0x01, 0x7C)
    model _A_test_flag_u8 is Memory<UCH>;

    /** RAM 0x007D _A_eb_inter */
    @ext(0x21, 0x01, 0x7D)
    model _A_eb_inter is Memory<UCH>;

    /** RAM 0x007E consis_mark_u8 */
    @ext(0x22, 0x01, 0x7E)
    model consis_mark_u8 is Memory<UCH>;

    /** RAM 0x007F ipc1_mailbox_u8 */
    @ext(0x23, 0x01, 0x7F)
    model ipc1_mailbox_u8 is Memory<UCH>;

    /** RAM 0x0085 ipc2_mailbox_u8 */
    @ext(0xd9, 0x01, 0x85)
    model ipc2_mailbox_u8 is Memory<UCH>;

    /** RAM 0x0090 ipc2step_u8 */
    @ext(0xcc, 0x01, 0x90)
    model ipc2step_u8 is Memory<UCH>;

    /** RAM 0x0091 p_stati_u8 */
    @ext(0xcd, 0x01, 0x91)
    model p_stati_u8 is Memory<UCH>;

    /** RAM 0x0092 ts1_os_order_u8 */
    @ext(0xce, 0x01, 0x92)
    model ts1_os_order_u8 is Memory<UCH>;

    /** RAM 0x0093 thUser_st */
    @ext(0xcf, 0x01, 0x93)
    model thUser_st is Memory<UCH>;

    /** RAM 0x0096 thDiag_st */
    @ext(0xca, 0x01, 0x96)
    model thDiag_st is Memory<UCH>;

    /** RAM 0x0099 thTask_a1_st */
    @ext(0xc5, 0x01, 0x99)
    model thTask_a1_st is Memory<UCH>;

    /** RAM 0x009C thTask_s1_st */
    @ext(0xc0, 0x01, 0x9C)
    model thTask_s1_st is Memory<UCH>;

    /** RAM 0x00A0 adr_tirp_u16 */
    @ext(0xfc, 0x01, 0xA0)
    model adr_tirp_u16 is Memory<UCH>;

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


    // ====================================
    // --- Konstanten ---
    // ====================================

    /** Konstanten 0x0000 BANK0_OFFSET */
    @ext(0xb8, 0x02, 0x00)
    model BANK0_OFFSET is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 CC_SUPPORT_K1 */
    // @ext(0xb8, 0x02, 0x00)
    // model CC_SUPPORT_K1 is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 CC_SUPPORT_K5_K6 */
    // @ext(0xb8, 0x02, 0x00)
    // model CC_SUPPORT_K5_K6 is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 CC_SUPPORT_K7 */
    // @ext(0xb8, 0x02, 0x00)
    // model CC_SUPPORT_K7 is Memory<UCH>;

    // Alias of BANK0_OFFSET
    // /** Konstanten 0x0000 CC_SUPPORT_K8 */
    // @ext(0xb8, 0x02, 0x00)
    // model CC_SUPPORT_K8 is Memory<UCH>;

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

    /** Konstanten 0x0001 CC_EM_TX_CC_ACK_B */
    @ext(0xb9, 0x02, 0x01)
    model CC_EM_TX_CC_ACK_B is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 EBUS */
    // @ext(0xb9, 0x02, 0x01)
    // model EBUS is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 EP_SYS_OPT_U8__TSTDIGOUT */
    // @ext(0xb9, 0x02, 0x01)
    // model EP_SYS_OPT_U8__TSTDIGOUT is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_IF0__lvi */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_IF0__lvi is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_Mk0__lvi_ */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_Mk0__lvi_ is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_TMC50__out */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_TMC50__out is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_TMC51__out */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_TMC51__out is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_TMHMD0__out */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_TMHMD0__out is Memory<UCH>;

    // Alias of CC_EM_TX_CC_ACK_B
    // /** Konstanten 0x0001 _A_TMHMD1__out */
    // @ext(0xb9, 0x02, 0x01)
    // model _A_TMHMD1__out is Memory<UCH>;

    /** Konstanten 0x0002 CC_EM_TX_MAX_DUR */
    @ext(0xba, 0x02, 0x02)
    model CC_EM_TX_MAX_DUR is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 EEA_EEP_IDF_ANF */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_EEP_IDF_ANF is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 EEA_EEP_IDF_END */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_EEP_IDF_END is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 EEA_EEP_IDF_PARA_1 */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_EEP_IDF_PARA_1 is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 EEA_EEP_IDF_PARA_ANF */
    // @ext(0xba, 0x02, 0x02)
    // model EEA_EEP_IDF_PARA_ANF is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 EP_SYS_OPT_U8__CP_EB_AB */
    // @ext(0xba, 0x02, 0x02)
    // model EP_SYS_OPT_U8__CP_EB_AB is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 _A_IF0__intP0_P120 */
    // @ext(0xba, 0x02, 0x02)
    // model _A_IF0__intP0_P120 is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 _A_Mk0__INTP120_ */
    // @ext(0xba, 0x02, 0x02)
    // model _A_Mk0__INTP120_ is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 _A_TMHMD0__hi */
    // @ext(0xba, 0x02, 0x02)
    // model _A_TMHMD0__hi is Memory<UCH>;

    // Alias of CC_EM_TX_MAX_DUR
    // /** Konstanten 0x0002 _A_TMHMD1__hi */
    // @ext(0xba, 0x02, 0x02)
    // model _A_TMHMD1__hi is Memory<UCH>;

    /** Konstanten 0x0003 EEA_EEP_IDF_PARA_2 */
    @ext(0xbb, 0x02, 0x03)
    model EEA_EEP_IDF_PARA_2 is Memory<UCH>;

    // Alias of EEA_EEP_IDF_PARA_2
    // /** Konstanten 0x0003 muescot_tag_month */
    // @ext(0xbb, 0x02, 0x03)
    // model muescot_tag_month is Memory<UCH>;

    /** Konstanten 0x0004 CC_EM_KX_FRAME */
    @ext(0xbc, 0x02, 0x04)
    model CC_EM_KX_FRAME is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 EEA_EEP_IDF_PARA_3 */
    // @ext(0xbc, 0x02, 0x04)
    // model EEA_EEP_IDF_PARA_3 is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 FW_SOFTWARE */
    // @ext(0xbc, 0x02, 0x04)
    // model FW_SOFTWARE is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 FW_SOFTWARE_LO */
    // @ext(0xbc, 0x02, 0x04)
    // model FW_SOFTWARE_LO is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 _A_IF0__intP1_P30 */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_IF0__intP1_P30 is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 _A_IF1__wti */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_IF1__wti is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 _A_Mk0__INTP30_ */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_Mk0__INTP30_ is Memory<UCH>;

    // Alias of CC_EM_KX_FRAME
    // /** Konstanten 0x0004 _A_Mk1__wti_ */
    // @ext(0xbc, 0x02, 0x04)
    // model _A_Mk1__wti_ is Memory<UCH>;

    /** Konstanten 0x0005 EEA_EEP_IDF_PARA_4 */
    @ext(0xbd, 0x02, 0x05)
    model EEA_EEP_IDF_PARA_4 is Memory<UCH>;

    // Alias of EEA_EEP_IDF_PARA_4
    // /** Konstanten 0x0005 FW_RELEASE */
    // @ext(0xbd, 0x02, 0x05)
    // model FW_RELEASE is Memory<UCH>;

    // Alias of EEA_EEP_IDF_PARA_4
    // /** Konstanten 0x0005 FW_RELEASE_LO */
    // @ext(0xbd, 0x02, 0x05)
    // model FW_RELEASE_LO is Memory<UCH>;

    // Alias of EEA_EEP_IDF_PARA_4
    // /** Konstanten 0x0005 L_PARAS_FS_SYSTEM */
    // @ext(0xbd, 0x02, 0x05)
    // model L_PARAS_FS_SYSTEM is Memory<UCH>;

    /** Konstanten 0x0006 EEA_EEP_IDF_PARA_5 */
    @ext(0xbe, 0x02, 0x06)
    model EEA_EEP_IDF_PARA_5 is Memory<UCH>;

    // Alias of EEA_EEP_IDF_PARA_5
    // /** Konstanten 0x0006 _CODEBANK_BANKS */
    // @ext(0xbe, 0x02, 0x06)
    // model _CODEBANK_BANKS is Memory<UCH>;

    /** Konstanten 0x0007 EEA_EEP_IDF_PARA_6 */
    @ext(0xbf, 0x02, 0x07)
    model EEA_EEP_IDF_PARA_6 is Memory<UCH>;

    /** Konstanten 0x0008 CC_EM_K2_1_FRAME */
    @ext(0xb0, 0x02, 0x08)
    model CC_EM_K2_1_FRAME is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 EEA_EEP_IDF_PARA_7 */
    // @ext(0xb0, 0x02, 0x08)
    // model EEA_EEP_IDF_PARA_7 is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_IF0H__tmh1 */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_IF0H__tmh1 is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_IF0__intP2_P31 */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_IF0__intP2_P31 is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_IF1__tm51 */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_IF1__tm51 is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_Mk0_Hi__tmh1_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk0_Hi__tmh1_ is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_Mk0__INTP31_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk0__INTP31_ is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_Mk1__tm51_ */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_Mk1__tm51_ is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_TMHMD0__pwm */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_TMHMD0__pwm is Memory<UCH>;

    // Alias of CC_EM_K2_1_FRAME
    // /** Konstanten 0x0008 _A_TMHMD1__pwm */
    // @ext(0xb0, 0x02, 0x08)
    // model _A_TMHMD1__pwm is Memory<UCH>;

    /** Konstanten 0x0009 EEA_EEP_IDF_PARA_8 */
    @ext(0xb1, 0x02, 0x09)
    model EEA_EEP_IDF_PARA_8 is Memory<UCH>;

    /** Konstanten 0x000A EEA_EEP_IDF_PARA_CRC */
    @ext(0xb2, 0x02, 0x0A)
    model EEA_EEP_IDF_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x000B EEA_LOCKOUT_SYSTEM */
    @ext(0xb3, 0x02, 0x0B)
    model EEA_LOCKOUT_SYSTEM is Memory<UCH>;

    /** Konstanten 0x000C muescot_tag_year */
    @ext(0xb4, 0x02, 0x0C)
    model muescot_tag_year is Memory<UCH>;

    /** Konstanten 0x000D EEA_LOCKOUT_SYS_INV */
    @ext(0xb5, 0x02, 0x0D)
    model EEA_LOCKOUT_SYS_INV is Memory<UCH>;

    /** Konstanten 0x000F EEA_LOCKOUT_SYS2 */
    @ext(0xb7, 0x02, 0x0F)
    model EEA_LOCKOUT_SYS2 is Memory<UCH>;

    /** Konstanten 0x0010 CC_EM_K2_3_FRAME */
    @ext(0xa8, 0x02, 0x10)
    model CC_EM_K2_3_FRAME is Memory<UCH>;

    // Alias of CC_EM_K2_3_FRAME
    // /** Konstanten 0x0010 _A_IF0H__tmh0 */
    // @ext(0xa8, 0x02, 0x10)
    // model _A_IF0H__tmh0 is Memory<UCH>;

    // Alias of CC_EM_K2_3_FRAME
    // /** Konstanten 0x0010 _A_Mk0_Hi__tmh0_ */
    // @ext(0xa8, 0x02, 0x10)
    // model _A_Mk0_Hi__tmh0_ is Memory<UCH>;

    // Alias of CC_EM_K2_3_FRAME
    // /** Konstanten 0x0010 _A_Mk0__INTP_ */
    // @ext(0xa8, 0x02, 0x10)
    // model _A_Mk0__INTP_ is Memory<UCH>;

    /** Konstanten 0x0011 EEA_LOCKOUT_SYS_INV2 */
    @ext(0xa9, 0x02, 0x11)
    model EEA_LOCKOUT_SYS_INV2 is Memory<UCH>;

    /** Konstanten 0x0013 eea_FS_SYSTEM_ANF */
    @ext(0xab, 0x02, 0x13)
    model eea_FS_SYSTEM_ANF is Memory<UCH>;

    // Alias of eea_FS_SYSTEM_ANF
    // /** Konstanten 0x0013 muescot_tag_day */
    // @ext(0xab, 0x02, 0x13)
    // model muescot_tag_day is Memory<UCH>;

    /** Konstanten 0x0014 SYS_STATI_LEN */
    @ext(0xac, 0x02, 0x14)
    model SYS_STATI_LEN is Memory<UCH>;

    /** Konstanten 0x0017 EEA_FS_SYSTEM_CRC */
    @ext(0xaf, 0x02, 0x17)
    model EEA_FS_SYSTEM_CRC is Memory<UCH>;

    /** Konstanten 0x0018 EEA_SYS_STATI_ANF */
    @ext(0xa0, 0x02, 0x18)
    model EEA_SYS_STATI_ANF is Memory<UCH>;

    /** Konstanten 0x0020 CC_EM_K2_X_FRAME */
    @ext(0x98, 0x02, 0x20)
    model CC_EM_K2_X_FRAME is Memory<UCH>;

    // Alias of CC_EM_K2_X_FRAME
    // /** Konstanten 0x0020 _A_IF0H__tm51 */
    // @ext(0x98, 0x02, 0x20)
    // model _A_IF0H__tm51 is Memory<UCH>;

    // Alias of CC_EM_K2_X_FRAME
    // /** Konstanten 0x0020 _A_Mk0_Hi__tm51_ */
    // @ext(0x98, 0x02, 0x20)
    // model _A_Mk0_Hi__tm51_ is Memory<UCH>;

    /** Konstanten 0x0028 EEA_APPL_IDF_ANF */
    @ext(0x90, 0x02, 0x28)
    model EEA_APPL_IDF_ANF is Memory<UCH>;

    /** Konstanten 0x002B eea_sys_stati_end */
    @ext(0x93, 0x02, 0x2B)
    model eea_sys_stati_end is Memory<UCH>;

    /** Konstanten 0x002C EEA_SYS_STATI_PTR */
    @ext(0x94, 0x02, 0x2C)
    model EEA_SYS_STATI_PTR is Memory<UCH>;

    /** Konstanten 0x002D EEA_SYS_RES_CNT */
    @ext(0x95, 0x02, 0x2D)
    model EEA_SYS_RES_CNT is Memory<UCH>;

    /** Konstanten 0x002F EEA_BUSY_TEST_ADR */
    @ext(0x97, 0x02, 0x2F)
    model EEA_BUSY_TEST_ADR is Memory<UCH>;

    /** Konstanten 0x0030 EEA_APPL_IDF_END */
    @ext(0x88, 0x02, 0x30)
    model EEA_APPL_IDF_END is Memory<UCH>;

    /** Konstanten 0x003A eea_sys_end */
    @ext(0x82, 0x02, 0x3A)
    model eea_sys_end is Memory<UCH>;

    /** Konstanten 0x003B EEA_ZFM_LOCKOUT */
    @ext(0x83, 0x02, 0x3B)
    model EEA_ZFM_LOCKOUT is Memory<UCH>;

    /** Konstanten 0x003F EEA_ZFM_ERR_GERAET */
    @ext(0x87, 0x02, 0x3F)
    model EEA_ZFM_ERR_GERAET is Memory<UCH>;

    /** Konstanten 0x0040 CC_EM_NO_MC_A_FRAME */
    @ext(0xf8, 0x02, 0x40)
    model CC_EM_NO_MC_A_FRAME is Memory<UCH>;

    // Alias of CC_EM_NO_MC_A_FRAME
    // /** Konstanten 0x0040 _A_IF0H__tm000 */
    // @ext(0xf8, 0x02, 0x40)
    // model _A_IF0H__tm000 is Memory<UCH>;

    // Alias of CC_EM_NO_MC_A_FRAME
    // /** Konstanten 0x0040 _A_Mk0_Hi__tm000_ */
    // @ext(0xf8, 0x02, 0x40)
    // model _A_Mk0_Hi__tm000_ is Memory<UCH>;

    // Alias of CC_EM_NO_MC_A_FRAME
    // /** Konstanten 0x0040 _A_TMC50__pwm */
    // @ext(0xf8, 0x02, 0x40)
    // model _A_TMC50__pwm is Memory<UCH>;

    // Alias of CC_EM_NO_MC_A_FRAME
    // /** Konstanten 0x0040 _A_TMC51__pwm */
    // @ext(0xf8, 0x02, 0x40)
    // model _A_TMC51__pwm is Memory<UCH>;

    // Alias of CC_EM_NO_MC_A_FRAME
    // /** Konstanten 0x0040 __T_wait_n12cl */
    // @ext(0xf8, 0x02, 0x40)
    // model __T_wait_n12cl is Memory<UCH>;

    /** Konstanten 0x0041 EEA_ZFM_ERR_PROZESS */
    @ext(0xf9, 0x02, 0x41)
    model EEA_ZFM_ERR_PROZESS is Memory<UCH>;

    /** Konstanten 0x0042 __T_set_digout_pins */
    @ext(0xfa, 0x02, 0x42)
    model __T_set_digout_pins is Memory<UCH>;

    /** Konstanten 0x0043 EEA_MCC_P_PARA_ANF */
    @ext(0xfb, 0x02, 0x43)
    model EEA_MCC_P_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x004A EEA_MCC_P_PARA_KONFI_P10 */
    @ext(0xf2, 0x02, 0x4A)
    model EEA_MCC_P_PARA_KONFI_P10 is Memory<UCH>;

    /** Konstanten 0x004E NEC */
    @ext(0xf6, 0x02, 0x4E)
    model NEC is Memory<UCH>;

    /** Konstanten 0x006C EEA_MCC_P_PARA_CRC */
    @ext(0xd4, 0x02, 0x6C)
    model EEA_MCC_P_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x006D EEA_MCC_P_PARA_ANF_2 */
    @ext(0xd5, 0x02, 0x6D)
    model EEA_MCC_P_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x007F ROM_PAGE_DEFAULT */
    @ext(0xc7, 0x02, 0x7F)
    model ROM_PAGE_DEFAULT is Memory<UCH>;

    /** Konstanten 0x0080 CC_EM_INVALID_K2_0 */
    @ext(0x38, 0x02, 0x80)
    model CC_EM_INVALID_K2_0 is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 EP_SYS_OPT_U8__NOEMRES */
    // @ext(0x38, 0x02, 0x80)
    // model EP_SYS_OPT_U8__NOEMRES is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 OPTBYTE */
    // @ext(0x38, 0x02, 0x80)
    // model OPTBYTE is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_IF0H__tm010 */
    // @ext(0x38, 0x02, 0x80)
    // model _A_IF0H__tm010 is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_Mk0_Hi__tm010_ */
    // @ext(0x38, 0x02, 0x80)
    // model _A_Mk0_Hi__tm010_ is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_TMC50__count */
    // @ext(0x38, 0x02, 0x80)
    // model _A_TMC50__count is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_TMC51__count */
    // @ext(0x38, 0x02, 0x80)
    // model _A_TMC51__count is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_TMHMD0__count */
    // @ext(0x38, 0x02, 0x80)
    // model _A_TMHMD0__count is Memory<UCH>;

    // Alias of CC_EM_INVALID_K2_0
    // /** Konstanten 0x0080 _A_TMHMD1__count */
    // @ext(0x38, 0x02, 0x80)
    // model _A_TMHMD1__count is Memory<UCH>;

    /** Konstanten 0x0081 CC_ACK */
    @ext(0x39, 0x02, 0x81)
    model CC_ACK is Memory<UCH>;

    // Alias of CC_ACK
    // /** Konstanten 0x0081 CC_IN_EBUS_ACK */
    // @ext(0x39, 0x02, 0x81)
    // model CC_IN_EBUS_ACK is Memory<UCH>;

    // Alias of CC_ACK
    // /** Konstanten 0x0081 POC_MODE */
    // @ext(0x39, 0x02, 0x81)
    // model POC_MODE is Memory<UCH>;

    /** Konstanten 0x0082 CC_IN_EBUS_NAK */
    @ext(0x3a, 0x02, 0x82)
    model CC_IN_EBUS_NAK is Memory<UCH>;

    // Alias of CC_IN_EBUS_NAK
    // /** Konstanten 0x0082 CC_NAK */
    // @ext(0x3a, 0x02, 0x82)
    // model CC_NAK is Memory<UCH>;

    /** Konstanten 0x0084 OSD_MODE */
    @ext(0x3c, 0x02, 0x84)
    model OSD_MODE is Memory<UCH>;

    /** Konstanten 0x0096 EEA_MCC_P_PARA_CRC_2 */
    @ext(0x2e, 0x02, 0x96)
    model EEA_MCC_P_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x0097 EEA_MCC_ANLAGEN_PARA_ANF */
    @ext(0x2f, 0x02, 0x97)
    model EEA_MCC_ANLAGEN_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00AC EEA_MCC_ANLAGEN_PARA_CRC */
    @ext(0x14, 0x02, 0xAC)
    model EEA_MCC_ANLAGEN_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00AD EEA_MCC_ANLAGEN_PARA_ANF_2 */
    @ext(0x15, 0x02, 0xAD)
    model EEA_MCC_ANLAGEN_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00C2 EEA_MCC_ANLAGEN_PARA_CRC_2 */
    @ext(0x7a, 0x02, 0xC2)
    model EEA_MCC_ANLAGEN_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00C3 EEA_BEDIEN_PARA_ANF */
    @ext(0x7b, 0x02, 0xC3)
    model EEA_BEDIEN_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00CE EEA_BEDIEN_PARA_CRC */
    @ext(0x76, 0x02, 0xCE)
    model EEA_BEDIEN_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00CF EEA_BEDIEN_PARA_ANF_2 */
    @ext(0x77, 0x02, 0xCF)
    model EEA_BEDIEN_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00DA EEA_BEDIEN_PARA_CRC_2 */
    @ext(0x62, 0x02, 0xDA)
    model EEA_BEDIEN_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00DB EEA_IDENT_PARA_ANF */
    @ext(0x63, 0x02, 0xDB)
    model EEA_IDENT_PARA_ANF is Memory<UCH>;

    /** Konstanten 0x00E0 xram_page_default */
    @ext(0x58, 0x02, 0xE0)
    model xram_page_default is Memory<UCH>;

    /** Konstanten 0x00E2 EEA_IDENT_PARA_CRC */
    @ext(0x5a, 0x02, 0xE2)
    model EEA_IDENT_PARA_CRC is Memory<UCH>;

    /** Konstanten 0x00E3 EEA_IDENT_PARA_ANF_2 */
    @ext(0x5b, 0x02, 0xE3)
    model EEA_IDENT_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x00EA EEA_IDENT_PARA_CRC_2 */
    @ext(0x52, 0x02, 0xEA)
    model EEA_IDENT_PARA_CRC_2 is Memory<UCH>;

    /** Konstanten 0x00F0 XRAM_PAGE_DEFAULT_MC_X */
    @ext(0x48, 0x02, 0xF0)
    model XRAM_PAGE_DEFAULT_MC_X is Memory<UCH>;

    /** Konstanten 0x00FF CC_INVALID_DATA */
    @ext(0x47, 0x02, 0xFF)
    model CC_INVALID_DATA is Memory<UCH>;

    /** Konstanten 0x0100 CC_EM_K2_2_NO_ACC */
    @ext(0x34, 0x06, 0x01, 0x02, 0x00)
    model CC_EM_K2_2_NO_ACC is Memory<UCH>;

    /** Konstanten 0x012C EEA_FW_MCB_ANF */
    @ext(0x18, 0x06, 0x01, 0x02, 0x2C)
    model EEA_FW_MCB_ANF is Memory<UCH>;

    /** Konstanten 0x0130 _CSTACK_SIZE */
    @ext(0x04, 0x06, 0x01, 0x02, 0x30)
    model _CSTACK_SIZE is Memory<UCH>;

    /** Konstanten 0x0136 EEA_FW_MCB_CRC */
    @ext(0x02, 0x06, 0x01, 0x02, 0x36)
    model EEA_FW_MCB_CRC is Memory<UCH>;

    /** Konstanten 0x0137 EEA_FW_MCB_ANF_2 */
    @ext(0x03, 0x06, 0x01, 0x02, 0x37)
    model EEA_FW_MCB_ANF_2 is Memory<UCH>;

    /** Konstanten 0x0141 EEA_FW_MCB_CRC_2 */
    @ext(0x75, 0x06, 0x01, 0x02, 0x41)
    model EEA_FW_MCB_CRC_2 is Memory<UCH>;

    /** Konstanten 0x0142 EEA_BCC_BT_ID */
    @ext(0x76, 0x06, 0x01, 0x02, 0x42)
    model EEA_BCC_BT_ID is Memory<UCH>;

    /** Konstanten 0x0144 EEA_BCC_BT_ID_INV */
    @ext(0x70, 0x06, 0x01, 0x02, 0x44)
    model EEA_BCC_BT_ID_INV is Memory<UCH>;

    /** Konstanten 0x0146 EEA_BCC_ADDICTED */
    @ext(0x72, 0x06, 0x01, 0x02, 0x46)
    model EEA_BCC_ADDICTED is Memory<UCH>;

    /** Konstanten 0x0147 EEA_BCC_ADDICTED_INV */
    @ext(0x73, 0x06, 0x01, 0x02, 0x47)
    model EEA_BCC_ADDICTED_INV is Memory<UCH>;

    /** Konstanten 0x0148 EEA_PARA_UPDATE_ERR */
    @ext(0x7c, 0x06, 0x01, 0x02, 0x48)
    model EEA_PARA_UPDATE_ERR is Memory<UCH>;

    /** Konstanten 0x0149 EEA_PARA_UPDATE_ERR_INV */
    @ext(0x7d, 0x06, 0x01, 0x02, 0x49)
    model EEA_PARA_UPDATE_ERR_INV is Memory<UCH>;

    /** Konstanten 0x014A EEA_PARA_UPDATE_ACTIV */
    @ext(0x7e, 0x06, 0x01, 0x02, 0x4A)
    model EEA_PARA_UPDATE_ACTIV is Memory<UCH>;

    /** Konstanten 0x014B EEA_PARA_UPDATE_ACTIV_INV */
    @ext(0x7f, 0x06, 0x01, 0x02, 0x4B)
    model EEA_PARA_UPDATE_ACTIV_INV is Memory<UCH>;

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

    /** Konstanten 0x0200 CC_EM_K2_2_MODE */
    @ext(0xac, 0x06, 0x02, 0x02, 0x00)
    model CC_EM_K2_2_MODE is Memory<UCH>;

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

    // Alias of EEA_HIST_ADR_MERKER
    // /** Konstanten 0x02BC EEA_HIST_PTR */
    // @ext(0x10, 0x06, 0x02, 0x02, 0xBC)
    // model EEA_HIST_PTR is Memory<UCH>;

    /** Konstanten 0x02BD EEA_HIST_RELEASE */
    @ext(0x11, 0x06, 0x02, 0x02, 0xBD)
    model EEA_HIST_RELEASE is Memory<UCH>;

    /** Konstanten 0x02C0 SYSTEM_CODE_START */
    @ext(0x6c, 0x06, 0x02, 0x02, 0xC0)
    model SYSTEM_CODE_START is Memory<UCH>;

    // Alias of SYSTEM_CODE_START
    // /** Konstanten 0x02C0 cini_ADC */
    // @ext(0x6c, 0x06, 0x02, 0x02, 0xC0)
    // model cini_ADC is Memory<UCH>;

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

    /** Konstanten 0x0336 EEA_N_SHUT_OFF1 */
    @ext(0x26, 0x06, 0x03, 0x02, 0x36)
    model EEA_N_SHUT_OFF1 is Memory<UCH>;

    // Alias of EEA_N_SHUT_OFF1
    // /** Konstanten 0x0336 EEA_OPER_ANF */
    // @ext(0x26, 0x06, 0x03, 0x02, 0x36)
    // model EEA_OPER_ANF is Memory<UCH>;

    // Alias of EEA_N_SHUT_OFF1
    // /** Konstanten 0x0336 EEA_STATI_ANF */
    // @ext(0x26, 0x06, 0x03, 0x02, 0x36)
    // model EEA_STATI_ANF is Memory<UCH>;

    /** Konstanten 0x0338 EEA_N_SHUT_OFF2 */
    @ext(0x28, 0x06, 0x03, 0x02, 0x38)
    model EEA_N_SHUT_OFF2 is Memory<UCH>;

    /** Konstanten 0x033A EEA_N_WARMSTART */
    @ext(0x2a, 0x06, 0x03, 0x02, 0x3A)
    model EEA_N_WARMSTART is Memory<UCH>;

    /** Konstanten 0x033C EEA_N_KALTSTART */
    @ext(0x2c, 0x06, 0x03, 0x02, 0x3C)
    model EEA_N_KALTSTART is Memory<UCH>;

    /** Konstanten 0x033E EEA_N_BAD_ZUEND */
    @ext(0x2e, 0x06, 0x03, 0x02, 0x3E)
    model EEA_N_BAD_ZUEND is Memory<UCH>;

    /** Konstanten 0x0340 EEA_N_FLAUSFALL */
    @ext(0x50, 0x06, 0x03, 0x02, 0x40)
    model EEA_N_FLAUSFALL is Memory<UCH>;

    /** Konstanten 0x0342 EEA_H_WART_BON */
    @ext(0x52, 0x06, 0x03, 0x02, 0x42)
    model EEA_H_WART_BON is Memory<UCH>;

    /** Konstanten 0x0344 EEA_N_OEL */
    @ext(0x54, 0x06, 0x03, 0x02, 0x44)
    model EEA_N_OEL is Memory<UCH>;

    /** Konstanten 0x0347 EEA_H_BON */
    @ext(0x57, 0x06, 0x03, 0x02, 0x47)
    model EEA_H_BON is Memory<UCH>;

    /** Konstanten 0x034A EEA_N_BON */
    @ext(0x5a, 0x06, 0x03, 0x02, 0x4A)
    model EEA_N_BON is Memory<UCH>;

    /** Konstanten 0x034D EEA_H_PON */
    @ext(0x5d, 0x06, 0x03, 0x02, 0x4D)
    model EEA_H_PON is Memory<UCH>;

    /** Konstanten 0x0350 EEA_N_PON */
    @ext(0x40, 0x06, 0x03, 0x02, 0x50)
    model EEA_N_PON is Memory<UCH>;

    /** Konstanten 0x0351 EEA_OPER_END */
    @ext(0x41, 0x06, 0x03, 0x02, 0x51)
    model EEA_OPER_END is Memory<UCH>;

    /** Konstanten 0x0352 EEA_ERR_STATI_ANF */
    @ext(0x42, 0x06, 0x03, 0x02, 0x52)
    model EEA_ERR_STATI_ANF is Memory<UCH>;

    // Alias of EEA_ERR_STATI_ANF
    // /** Konstanten 0x0352 EEA_FC_VL_STB_OT */
    // @ext(0x42, 0x06, 0x03, 0x02, 0x52)
    // model EEA_FC_VL_STB_OT is Memory<UCH>;

    /** Konstanten 0x0354 EEA_FC_VL_WT_STW_OT */
    @ext(0x44, 0x06, 0x03, 0x02, 0x54)
    model EEA_FC_VL_WT_STW_OT is Memory<UCH>;

    /** Konstanten 0x0356 EEA_FC_VL_WT_STW_OT_W */
    @ext(0x46, 0x06, 0x03, 0x02, 0x56)
    model EEA_FC_VL_WT_STW_OT_W is Memory<UCH>;

    /** Konstanten 0x0358 EEA_FC_ABGAS_STB_OT */
    @ext(0x48, 0x06, 0x03, 0x02, 0x58)
    model EEA_FC_ABGAS_STB_OT is Memory<UCH>;

    /** Konstanten 0x035A EEA_FC_MAX_GRAD_WT */
    @ext(0x4a, 0x06, 0x03, 0x02, 0x5A)
    model EEA_FC_MAX_GRAD_WT is Memory<UCH>;

    /** Konstanten 0x035C EEA_FC_DT_VL_RL */
    @ext(0x4c, 0x06, 0x03, 0x02, 0x5C)
    model EEA_FC_DT_VL_RL is Memory<UCH>;

    /** Konstanten 0x035E EEA_FC_DT_VL_RL_W */
    @ext(0x4e, 0x06, 0x03, 0x02, 0x5E)
    model EEA_FC_DT_VL_RL_W is Memory<UCH>;

    /** Konstanten 0x0360 EEA_FC_ABGAS_STW_OT */
    @ext(0x70, 0x06, 0x03, 0x02, 0x60)
    model EEA_FC_ABGAS_STW_OT is Memory<UCH>;

    /** Konstanten 0x0362 EEA_FC_ABGAS_STW_OT_W */
    @ext(0x72, 0x06, 0x03, 0x02, 0x62)
    model EEA_FC_ABGAS_STW_OT_W is Memory<UCH>;

    /** Konstanten 0x0364 EEA_FC_VT_STB_OT */
    @ext(0x74, 0x06, 0x03, 0x02, 0x64)
    model EEA_FC_VT_STB_OT is Memory<UCH>;

    /** Konstanten 0x0366 EEA_FC_VT_STB_OT_W */
    @ext(0x76, 0x06, 0x03, 0x02, 0x66)
    model EEA_FC_VT_STB_OT_W is Memory<UCH>;

    /** Konstanten 0x0368 EEA_FC_P_FEUER_OP */
    @ext(0x78, 0x06, 0x03, 0x02, 0x68)
    model EEA_FC_P_FEUER_OP is Memory<UCH>;

    /** Konstanten 0x036A EEA_FC_P_FEUER_OP_W */
    @ext(0x7a, 0x06, 0x03, 0x02, 0x6A)
    model EEA_FC_P_FEUER_OP_W is Memory<UCH>;

    /** Konstanten 0x036C EEA_FC_W_NG_ERR */
    @ext(0x7c, 0x06, 0x03, 0x02, 0x6C)
    model EEA_FC_W_NG_ERR is Memory<UCH>;

    /** Konstanten 0x036E EEA_FC_NO_FL_SZA */
    @ext(0x7e, 0x06, 0x03, 0x02, 0x6E)
    model EEA_FC_NO_FL_SZA is Memory<UCH>;

    /** Konstanten 0x0370 EEA_FC_NO_FL_SZA_W */
    @ext(0x60, 0x06, 0x03, 0x02, 0x70)
    model EEA_FC_NO_FL_SZA_W is Memory<UCH>;

    /** Konstanten 0x0372 EEA_FC_NO_FL_BETRIEB */
    @ext(0x62, 0x06, 0x03, 0x02, 0x72)
    model EEA_FC_NO_FL_BETRIEB is Memory<UCH>;

    /** Konstanten 0x0374 EEA_FC_NO_FL_BETRIEB_W */
    @ext(0x64, 0x06, 0x03, 0x02, 0x74)
    model EEA_FC_NO_FL_BETRIEB_W is Memory<UCH>;

    /** Konstanten 0x0376 EEA_FC_FREMDLICHT */
    @ext(0x66, 0x06, 0x03, 0x02, 0x76)
    model EEA_FC_FREMDLICHT is Memory<UCH>;

    /** Konstanten 0x0378 EEA_FC_NOT_AUS */
    @ext(0x68, 0x06, 0x03, 0x02, 0x78)
    model EEA_FC_NOT_AUS is Memory<UCH>;

    /** Konstanten 0x037A EEA_FC_ALARM_KOPU */
    @ext(0x6a, 0x06, 0x03, 0x02, 0x7A)
    model EEA_FC_ALARM_KOPU is Memory<UCH>;

    /** Konstanten 0x037C EEA_FC_P_FEUER_DEFEKT */
    @ext(0x6c, 0x06, 0x03, 0x02, 0x7C)
    model EEA_FC_P_FEUER_DEFEKT is Memory<UCH>;

    /** Konstanten 0x037E EEA_FC_RLT_AP_DEFEKT */
    @ext(0x6e, 0x06, 0x03, 0x02, 0x7E)
    model EEA_FC_RLT_AP_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0380 EEA_FC_TWT_DEFEKT */
    @ext(0x90, 0x06, 0x03, 0x02, 0x80)
    model EEA_FC_TWT_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0382 EEA_FC_VL_ESTB2_DEFEKT */
    @ext(0x92, 0x06, 0x03, 0x02, 0x82)
    model EEA_FC_VL_ESTB2_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0384 EEA_FC_ABG_ESTB2_DEFEKT */
    @ext(0x94, 0x06, 0x03, 0x02, 0x84)
    model EEA_FC_ABG_ESTB2_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0386 EEA_FC_NO_LDW_RUHE */
    @ext(0x96, 0x06, 0x03, 0x02, 0x86)
    model EEA_FC_NO_LDW_RUHE is Memory<UCH>;

    /** Konstanten 0x0388 EEA_FC_AF_DEFEKT */
    @ext(0x98, 0x06, 0x03, 0x02, 0x88)
    model EEA_FC_AF_DEFEKT is Memory<UCH>;

    /** Konstanten 0x038A EEA_FC_B3_DEFEKT */
    @ext(0x9a, 0x06, 0x03, 0x02, 0x8A)
    model EEA_FC_B3_DEFEKT is Memory<UCH>;

    /** Konstanten 0x038C EEA_FC_B12_DEFEKT */
    @ext(0x9c, 0x06, 0x03, 0x02, 0x8C)
    model EEA_FC_B12_DEFEKT is Memory<UCH>;

    /** Konstanten 0x038E EEA_FC_MIN_P_ANLAGE */
    @ext(0x9e, 0x06, 0x03, 0x02, 0x8E)
    model EEA_FC_MIN_P_ANLAGE is Memory<UCH>;

    /** Konstanten 0x0390 EEA_FC_MIN_P_ANLAGE_W */
    @ext(0x80, 0x06, 0x03, 0x02, 0x90)
    model EEA_FC_MIN_P_ANLAGE_W is Memory<UCH>;

    /** Konstanten 0x0392 EEA_FC_VT_DEFEKT */
    @ext(0x82, 0x06, 0x03, 0x02, 0x92)
    model EEA_FC_VT_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0394 EEA_FC_B10_DEFEKT */
    @ext(0x84, 0x06, 0x03, 0x02, 0x94)
    model EEA_FC_B10_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0396 EEA_FC_B11_DEFEKT */
    @ext(0x86, 0x06, 0x03, 0x02, 0x96)
    model EEA_FC_B11_DEFEKT is Memory<UCH>;

    /** Konstanten 0x0398 EEA_FC_AK_DEFEKT */
    @ext(0x88, 0x06, 0x03, 0x02, 0x98)
    model EEA_FC_AK_DEFEKT is Memory<UCH>;

    /** Konstanten 0x039A EEA_FC_PWM_PUMPE_DEFEKT */
    @ext(0x8a, 0x06, 0x03, 0x02, 0x9A)
    model EEA_FC_PWM_PUMPE_DEFEKT is Memory<UCH>;

    /** Konstanten 0x039C EEA_FC_NG_ERR */
    @ext(0x8c, 0x06, 0x03, 0x02, 0x9C)
    model EEA_FC_NG_ERR is Memory<UCH>;

    /** Konstanten 0x039E EEA_FC_NO_NG_RUHE */
    @ext(0x8e, 0x06, 0x03, 0x02, 0x9E)
    model EEA_FC_NO_NG_RUHE is Memory<UCH>;

    /** Konstanten 0x03A0 EEA_FC_NO_LDW */
    @ext(0xb0, 0x06, 0x03, 0x02, 0xA0)
    model EEA_FC_NO_LDW is Memory<UCH>;

    /** Konstanten 0x03A2 EEA_FC_NO_ZUEND */
    @ext(0xb2, 0x06, 0x03, 0x02, 0xA2)
    model EEA_FC_NO_ZUEND is Memory<UCH>;

    /** Konstanten 0x03A4 EEA_FC_OLV_ERR */
    @ext(0xb4, 0x06, 0x03, 0x02, 0xA4)
    model EEA_FC_OLV_ERR is Memory<UCH>;

    /** Konstanten 0x03A6 EEA_FC_UNKNOWN_ERROR */
    @ext(0xb6, 0x06, 0x03, 0x02, 0xA6)
    model EEA_FC_UNKNOWN_ERROR is Memory<UCH>;

    /** Konstanten 0x03A8 EEA_FC_NFS_CRC_ERR */
    @ext(0xb8, 0x06, 0x03, 0x02, 0xA8)
    model EEA_FC_NFS_CRC_ERR is Memory<UCH>;

    /** Konstanten 0x03AA EEA_FC_FS_CRC_ERR */
    @ext(0xba, 0x06, 0x03, 0x02, 0xAA)
    model EEA_FC_FS_CRC_ERR is Memory<UCH>;

    /** Konstanten 0x03AC EEA_FC_VOLTAGE_ERR */
    @ext(0xbc, 0x06, 0x03, 0x02, 0xAC)
    model EEA_FC_VOLTAGE_ERR is Memory<UCH>;

    /** Konstanten 0x03AE EEA_FC_ELEKTRONIK_ERR */
    @ext(0xbe, 0x06, 0x03, 0x02, 0xAE)
    model EEA_FC_ELEKTRONIK_ERR is Memory<UCH>;

    /** Konstanten 0x03B0 EEA_FC_EEPROM_ERR */
    @ext(0xa0, 0x06, 0x03, 0x02, 0xB0)
    model EEA_FC_EEPROM_ERR is Memory<UCH>;

    /** Konstanten 0x03B2 EEA_FC_REL_ERR */
    @ext(0xa2, 0x06, 0x03, 0x02, 0xB2)
    model EEA_FC_REL_ERR is Memory<UCH>;

    /** Konstanten 0x03B4 EEA_FC_K1_MCC_MCB_ERR */
    @ext(0xa4, 0x06, 0x03, 0x02, 0xB4)
    model EEA_FC_K1_MCC_MCB_ERR is Memory<UCH>;

    /** Konstanten 0x03B6 EEA_FC_TFE_LIMITER */
    @ext(0xa6, 0x06, 0x03, 0x02, 0xB6)
    model EEA_FC_TFE_LIMITER is Memory<UCH>;

    /** Konstanten 0x03B8 EEA_FC_4_20MA_ERR */
    @ext(0xa8, 0x06, 0x03, 0x02, 0xB8)
    model EEA_FC_4_20MA_ERR is Memory<UCH>;

    /** Konstanten 0x03BA EEA_FC_BCC_ID_INTERN */
    @ext(0xaa, 0x06, 0x03, 0x02, 0xBA)
    model EEA_FC_BCC_ID_INTERN is Memory<UCH>;

    /** Konstanten 0x03BC EEA_FC_BCC_MISSING */
    @ext(0xac, 0x06, 0x03, 0x02, 0xBC)
    model EEA_FC_BCC_MISSING is Memory<UCH>;

    /** Konstanten 0x03BE EEA_FC_BCC_ID */
    @ext(0xae, 0x06, 0x03, 0x02, 0xBE)
    model EEA_FC_BCC_ID is Memory<UCH>;

    /** Konstanten 0x03C0 EEA_FC_BCC_FW */
    @ext(0xd0, 0x06, 0x03, 0x02, 0xC0)
    model EEA_FC_BCC_FW is Memory<UCH>;

    /** Konstanten 0x03C2 EEA_FC_BCC_NR_BLOCK */
    @ext(0xd2, 0x06, 0x03, 0x02, 0xC2)
    model EEA_FC_BCC_NR_BLOCK is Memory<UCH>;

    /** Konstanten 0x03C4 EEA_FC_BCC_SYS */
    @ext(0xd4, 0x06, 0x03, 0x02, 0xC4)
    model EEA_FC_BCC_SYS is Memory<UCH>;

    /** Konstanten 0x03C6 EEA_FC_TDHZ_COLD */
    @ext(0xd6, 0x06, 0x03, 0x02, 0xC6)
    model EEA_FC_TDHZ_COLD is Memory<UCH>;

    /** Konstanten 0x03C8 EEA_FC_TDHZ_HOT */
    @ext(0xd8, 0x06, 0x03, 0x02, 0xC8)
    model EEA_FC_TDHZ_HOT is Memory<UCH>;

    /** Konstanten 0x03CA EEA_FC_EBUS_COM_TO_KAMA_ERR */
    @ext(0xda, 0x06, 0x03, 0x02, 0xCA)
    model EEA_FC_EBUS_COM_TO_KAMA_ERR is Memory<UCH>;

    /** Konstanten 0x03CC EEA_FC_EBUS_COM_TO_FS_ERR */
    @ext(0xdc, 0x06, 0x03, 0x02, 0xCC)
    model EEA_FC_EBUS_COM_TO_FS_ERR is Memory<UCH>;

    /** Konstanten 0x03CE EEA_FC_EBUS_COM_TO_EM1_ERR */
    @ext(0xde, 0x06, 0x03, 0x02, 0xCE)
    model EEA_FC_EBUS_COM_TO_EM1_ERR is Memory<UCH>;

    /** Konstanten 0x03D0 EEA_FC_EBUS_COM_TO_EM2_ERR */
    @ext(0xc0, 0x06, 0x03, 0x02, 0xD0)
    model EEA_FC_EBUS_COM_TO_EM2_ERR is Memory<UCH>;

    /** Konstanten 0x03D2 EEA_FC_EBUS_COM_TO_EM3_ERR */
    @ext(0xc2, 0x06, 0x03, 0x02, 0xD2)
    model EEA_FC_EBUS_COM_TO_EM3_ERR is Memory<UCH>;

    /** Konstanten 0x03D4 EEA_FC_EBUS_COM_TO_EM4_ERR */
    @ext(0xc4, 0x06, 0x03, 0x02, 0xD4)
    model EEA_FC_EBUS_COM_TO_EM4_ERR is Memory<UCH>;

    /** Konstanten 0x03D6 EEA_FC_EBUS_COM_TO_EM5_ERR */
    @ext(0xc6, 0x06, 0x03, 0x02, 0xD6)
    model EEA_FC_EBUS_COM_TO_EM5_ERR is Memory<UCH>;

    /** Konstanten 0x03D8 EEA_FC_EBUS_COM_TO_EM6_ERR */
    @ext(0xc8, 0x06, 0x03, 0x02, 0xD8)
    model EEA_FC_EBUS_COM_TO_EM6_ERR is Memory<UCH>;

    /** Konstanten 0x03DA EEA_FC_EBUS_COM_TO_EM7_ERR */
    @ext(0xca, 0x06, 0x03, 0x02, 0xDA)
    model EEA_FC_EBUS_COM_TO_EM7_ERR is Memory<UCH>;

    /** Konstanten 0x03DB EEA_ERR_STATI_END */
    @ext(0xcb, 0x06, 0x03, 0x02, 0xDB)
    model EEA_ERR_STATI_END is Memory<UCH>;

    /** Konstanten 0x03DC EEA_EEP_IDF_ANF_2 */
    @ext(0xcc, 0x06, 0x03, 0x02, 0xDC)
    model EEA_EEP_IDF_ANF_2 is Memory<UCH>;

    // Alias of EEA_EEP_IDF_ANF_2
    // /** Konstanten 0x03DC EEA_EEP_IDF_PARA_1_2 */
    // @ext(0xcc, 0x06, 0x03, 0x02, 0xDC)
    // model EEA_EEP_IDF_PARA_1_2 is Memory<UCH>;

    // Alias of EEA_EEP_IDF_ANF_2
    // /** Konstanten 0x03DC EEA_EEP_IDF_PARA_ANF_2 */
    // @ext(0xcc, 0x06, 0x03, 0x02, 0xDC)
    // model EEA_EEP_IDF_PARA_ANF_2 is Memory<UCH>;

    /** Konstanten 0x03DD EEA_EEP_IDF_PARA_2_2 */
    @ext(0xcd, 0x06, 0x03, 0x02, 0xDD)
    model EEA_EEP_IDF_PARA_2_2 is Memory<UCH>;

    /** Konstanten 0x03DE EEA_EEP_IDF_PARA_3_2 */
    @ext(0xce, 0x06, 0x03, 0x02, 0xDE)
    model EEA_EEP_IDF_PARA_3_2 is Memory<UCH>;

    /** Konstanten 0x03DF EEA_EEP_IDF_PARA_4_2 */
    @ext(0xcf, 0x06, 0x03, 0x02, 0xDF)
    model EEA_EEP_IDF_PARA_4_2 is Memory<UCH>;

    /** Konstanten 0x03E0 EEA_EEP_IDF_PARA_5_2 */
    @ext(0xf0, 0x06, 0x03, 0x02, 0xE0)
    model EEA_EEP_IDF_PARA_5_2 is Memory<UCH>;

    /** Konstanten 0x03E1 EEA_EEP_IDF_PARA_6_2 */
    @ext(0xf1, 0x06, 0x03, 0x02, 0xE1)
    model EEA_EEP_IDF_PARA_6_2 is Memory<UCH>;

    /** Konstanten 0x03E2 EEA_EEP_IDF_PARA_7_2 */
    @ext(0xf2, 0x06, 0x03, 0x02, 0xE2)
    model EEA_EEP_IDF_PARA_7_2 is Memory<UCH>;

    /** Konstanten 0x03E3 EEA_EEP_IDF_PARA_8_2 */
    @ext(0xf3, 0x06, 0x03, 0x02, 0xE3)
    model EEA_EEP_IDF_PARA_8_2 is Memory<UCH>;

    /** Konstanten 0x03E4 EEA_EEP_IDF_PARA_CRC_2 */
    @ext(0xf4, 0x06, 0x03, 0x02, 0xE4)
    model EEA_EEP_IDF_PARA_CRC_2 is Memory<UCH>;

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

    /** Konstanten 0x03F3 set_comm_byte */
    @ext(0xe3, 0x06, 0x03, 0x02, 0xF3)
    model set_comm_byte is Memory<UCH>;

    /** Konstanten 0x03F4 EEA_PRUEFDATA_KW_YY */
    @ext(0xe4, 0x06, 0x03, 0x02, 0xF4)
    model EEA_PRUEFDATA_KW_YY is Memory<UCH>;

    /** Konstanten 0x03F6 EEA_PRUEFDATA_HH_MM */
    @ext(0xe6, 0x06, 0x03, 0x02, 0xF6)
    model EEA_PRUEFDATA_HH_MM is Memory<UCH>;

    /** Konstanten 0x03F8 EEA_PRUEFDATA_SER_NR_LOW */
    @ext(0xe8, 0x06, 0x03, 0x02, 0xF8)
    model EEA_PRUEFDATA_SER_NR_LOW is Memory<UCH>;

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


    // ====================================
    // --- External RAM (XRAM) ---
    // ====================================

    /** External RAM (XRAM) 0xF056 cmd_inr_st */
    @ext(0xb2, 0x03, 0x56)
    model cmd_inr_st is Memory<UCH>;

    /** External RAM (XRAM) 0xF0D4 mcb_cui_inr_rd_st */
    @ext(0x30, 0x03, 0xD4)
    model mcb_cui_inr_rd_st is Memory<UCH>;

    /** External RAM (XRAM) 0xF0EC tab_of_con_st */
    @ext(0x08, 0x03, 0xEC)
    model tab_of_con_st is Memory<UCH>;

}
