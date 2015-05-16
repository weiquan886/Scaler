library verilog;
use verilog.vl_types.all;
entity M7S_IO_DDR is
    generic(
        cfg_nc          : vl_logic := Hi0;
        cfg_use_cal1_1  : vl_logic := Hi0;
        cfg_use_cal1_0  : vl_logic := Hi0;
        para_ref        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        seri_ref        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        manual_en       : vl_logic := Hi0;
        vref_en         : vl_logic := Hi0;
        vref_sel        : vl_logic := Hi0;
        odt_cfg_1       : vl_logic := Hi0;
        ns_lv_cfg_1     : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        pdr_cfg_1       : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        ndr_cfg_1       : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        keep_cfg_1      : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        term_pu_en_1    : vl_logic := Hi0;
        term_pd_en_1    : vl_logic := Hi0;
        rx_dig_en_cfg_1 : vl_logic := Hi0;
        rx_hstl_sstl_en_cfg_1: vl_logic := Hi0;
        tpd_cfg_1       : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        tpu_cfg_1       : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        cfg_trm_1       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        cfg_trm_sel_1   : vl_logic := Hi0;
        in_del_1        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        out_del_1       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ns_lv_fastestn_1: vl_logic := Hi0;
        cfg_userio_en_1 : vl_logic := Hi0;
        cfg_use_cal0_1  : vl_logic := Hi0;
        cfg_fclk_inv_1  : vl_logic := Hi0;
        cfg_gsclk_inv_1 : vl_logic := Hi0;
        cfg_gsclk90_inv_1: vl_logic := Hi0;
        cfg_gsclk180_inv_1: vl_logic := Hi0;
        cfg_gsclk270_inv_1: vl_logic := Hi0;
        cfg_fclk_gate_sel_1: vl_logic := Hi0;
        cfg_sclk_gate_sel_1: vl_logic := Hi0;
        cfg_sclk_en_1   : vl_logic := Hi0;
        cfg_fclk_en_1   : vl_logic := Hi0;
        cfg_rstn_inv_1  : vl_logic := Hi0;
        cfg_oen_rstn_en_1: vl_logic := Hi0;
        cfg_od_rstn_en_1: vl_logic := Hi0;
        cfg_id_rstn_en_1: vl_logic := Hi0;
        cfg_setn_inv_1  : vl_logic := Hi0;
        cfg_oen_setn_en_1: vl_logic := Hi0;
        cfg_od_setn_en_1: vl_logic := Hi0;
        cfg_id_setn_en_1: vl_logic := Hi0;
        cfg_ddr_1       : vl_logic := Hi0;
        cfg_id_sel_1    : vl_logic := Hi0;
        cfg_oen_inv_1   : vl_logic := Hi0;
        cfg_oen_sel_1   : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        cfg_dqs_1       : vl_logic := Hi0;
        cfg_txd0_inv_1  : vl_logic := Hi0;
        cfg_txd1_inv_1  : vl_logic := Hi0;
        cfg_d_en_1      : vl_logic := Hi0;
        cfg_clkout_sel_1: vl_logic := Hi0;
        cfg_sclk_out_1  : vl_logic := Hi0;
        cfg_od_sel_1    : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        odt_cfg_0       : vl_logic := Hi0;
        ns_lv_cfg_0     : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        pdr_cfg_0       : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        ndr_cfg_0       : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        keep_cfg_0      : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        term_pu_en_0    : vl_logic := Hi0;
        term_pd_en_0    : vl_logic := Hi0;
        rx_dig_en_cfg_0 : vl_logic := Hi0;
        rx_hstl_sstl_en_cfg_0: vl_logic := Hi0;
        tpd_cfg_0       : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        tpu_cfg_0       : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        cfg_trm_0       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        cfg_trm_sel_0   : vl_logic := Hi0;
        in_del_0        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        out_del_0       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        ns_lv_fastestn_0: vl_logic := Hi0;
        cfg_userio_en_0 : vl_logic := Hi0;
        cfg_use_cal0_0  : vl_logic := Hi0;
        cfg_fclk_inv_0  : vl_logic := Hi0;
        cfg_gsclk_inv_0 : vl_logic := Hi0;
        cfg_gsclk90_inv_0: vl_logic := Hi0;
        cfg_gsclk180_inv_0: vl_logic := Hi0;
        cfg_gsclk270_inv_0: vl_logic := Hi0;
        cfg_fclk_gate_sel_0: vl_logic := Hi0;
        cfg_sclk_gate_sel_0: vl_logic := Hi0;
        cfg_sclk_en_0   : vl_logic := Hi0;
        cfg_fclk_en_0   : vl_logic := Hi0;
        cfg_rstn_inv_0  : vl_logic := Hi0;
        cfg_oen_rstn_en_0: vl_logic := Hi0;
        cfg_od_rstn_en_0: vl_logic := Hi0;
        cfg_id_rstn_en_0: vl_logic := Hi0;
        cfg_setn_inv_0  : vl_logic := Hi0;
        cfg_oen_setn_en_0: vl_logic := Hi0;
        cfg_od_setn_en_0: vl_logic := Hi0;
        cfg_id_setn_en_0: vl_logic := Hi0;
        cfg_ddr_0       : vl_logic := Hi0;
        cfg_id_sel_0    : vl_logic := Hi0;
        cfg_oen_inv_0   : vl_logic := Hi0;
        cfg_oen_sel_0   : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        cfg_dqs_0       : vl_logic := Hi0;
        cfg_txd0_inv_0  : vl_logic := Hi0;
        cfg_txd1_inv_0  : vl_logic := Hi0;
        cfg_d_en_0      : vl_logic := Hi0;
        cfg_clkout_sel_0: vl_logic := Hi0;
        cfg_sclk_out_0  : vl_logic := Hi0;
        cfg_od_sel_0    : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        optional_function: string  := ""
    );
    port(
        id_q_1          : out    vl_logic_vector(1 downto 0);
        id_q_0          : out    vl_logic_vector(1 downto 0);
        NDR_in          : in     vl_logic_vector(4 downto 0);
        PDR_in          : in     vl_logic_vector(4 downto 0);
        TPD_in          : in     vl_logic_vector(7 downto 0);
        TPU_in          : in     vl_logic_vector(7 downto 0);
        clk_0           : in     vl_logic;
        clk_1           : in     vl_logic;
        clk_en_1        : in     vl_logic;
        clk_en_0        : in     vl_logic;
        clkpol_0        : in     vl_logic;
        clkpol_1        : in     vl_logic;
        dqsr90_0        : in     vl_logic;
        dqsr90_1        : in     vl_logic;
        gsclk270_in     : in     vl_logic;
        gsclk180_in     : in     vl_logic;
        gsclk90_in      : in     vl_logic;
        gsclk_in        : in     vl_logic;
        od_d_1          : in     vl_logic_vector(1 downto 0);
        od_d_0          : in     vl_logic_vector(1 downto 0);
        oen_1           : in     vl_logic;
        oen_0           : in     vl_logic;
        rstn_0          : in     vl_logic;
        rstn_1          : in     vl_logic;
        setn_0          : in     vl_logic;
        setn_1          : in     vl_logic;
        PAD1            : inout  vl_logic;
        PAD0            : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of cfg_nc : constant is 1;
    attribute mti_svvh_generic_type of cfg_use_cal1_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_use_cal1_0 : constant is 1;
    attribute mti_svvh_generic_type of para_ref : constant is 1;
    attribute mti_svvh_generic_type of seri_ref : constant is 1;
    attribute mti_svvh_generic_type of manual_en : constant is 1;
    attribute mti_svvh_generic_type of vref_en : constant is 1;
    attribute mti_svvh_generic_type of vref_sel : constant is 1;
    attribute mti_svvh_generic_type of odt_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of ns_lv_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of pdr_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of ndr_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of keep_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of term_pu_en_1 : constant is 1;
    attribute mti_svvh_generic_type of term_pd_en_1 : constant is 1;
    attribute mti_svvh_generic_type of rx_dig_en_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of rx_hstl_sstl_en_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of tpd_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of tpu_cfg_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_trm_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_trm_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of in_del_1 : constant is 1;
    attribute mti_svvh_generic_type of out_del_1 : constant is 1;
    attribute mti_svvh_generic_type of ns_lv_fastestn_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_userio_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_use_cal0_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk90_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk180_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk270_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_gate_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_gate_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_rstn_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_rstn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_rstn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_rstn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_setn_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_setn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_setn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_setn_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_ddr_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_dqs_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_txd0_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_txd1_inv_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_d_en_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_clkout_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_out_1 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_sel_1 : constant is 1;
    attribute mti_svvh_generic_type of odt_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of ns_lv_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of pdr_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of ndr_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of keep_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of term_pu_en_0 : constant is 1;
    attribute mti_svvh_generic_type of term_pd_en_0 : constant is 1;
    attribute mti_svvh_generic_type of rx_dig_en_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of rx_hstl_sstl_en_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of tpd_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of tpu_cfg_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_trm_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_trm_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of in_del_0 : constant is 1;
    attribute mti_svvh_generic_type of out_del_0 : constant is 1;
    attribute mti_svvh_generic_type of ns_lv_fastestn_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_userio_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_use_cal0_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk90_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk180_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_gsclk270_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_gate_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_gate_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_fclk_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_rstn_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_rstn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_rstn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_rstn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_setn_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_setn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_setn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_setn_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_ddr_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_id_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_oen_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_dqs_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_txd0_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_txd1_inv_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_d_en_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_clkout_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_sclk_out_0 : constant is 1;
    attribute mti_svvh_generic_type of cfg_od_sel_0 : constant is 1;
    attribute mti_svvh_generic_type of optional_function : constant is 1;
end M7S_IO_DDR;
