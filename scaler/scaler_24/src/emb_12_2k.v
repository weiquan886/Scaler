//
// This is a file generated by EMB wizard.
// Please do not edit this file!
// Generated time: 04/13/2015 13:15:57
// Version: Primace 7.3
// Wizard name: EMB 1.0b
//
// ============================================================
// File Name: emb_12_2k.v
// IP core : emb
// Device name: M7A12N0F256I7
// ============================================================

module emb_12_2k(
    clka,
    cea,
    wea,
    aa,
    da,
    qa,
    clkb,
    ceb,
    web,
    ab,
    db,
    qb
);

input clka;
input cea;
input wea;
input [10:0] aa;
input [11:0] da;
output [11:0] qa;
input clkb;
input ceb;
input web;
input [10:0] ab;
input [11:0] db;
output [11:0] qb;

wire [8:0] qa0;
wire [8:0] qa1;
wire [8:0] qa2;
wire [8:0] qa3;
wire [8:0] qa4;
wire [8:0] qa5;
wire [8:0] qa6;
wire [8:0] qa7;
reg [0:0] aa_reg;
always @(posedge clka) begin
	if (cea)  begin
		aa_reg <= aa[10];
	end
end
assign qa = (~aa_reg[0])? {qa2[3], qa1[3], qa0[3], qa2[2], qa1[2], qa0[2], qa2[1], qa1[1], qa0[1], qa2[0], qa1[0], qa0[0]} :
            {qa6[3], qa5[3], qa4[3], qa6[2], qa5[2], qa4[2], qa6[1], qa5[1], qa4[1], qa6[0], qa5[0], qa4[0]};

wire [8:0] qb0;
wire [8:0] qb1;
wire [8:0] qb2;
wire [8:0] qb3;
wire [8:0] qb4;
wire [8:0] qb5;
wire [8:0] qb6;
wire [8:0] qb7;
reg [0:0] ab_reg;
always @(posedge clkb) begin
	if (ceb)  begin
		ab_reg <= ab[10];
	end
end
assign qb = (~ab_reg[0])? {qb2[3], qb1[3], qb0[3], qb2[2], qb1[2], qb0[2], qb2[1], qb1[1], qb0[1], qb2[0], qb1[0], qb0[0]} :
            {qb6[3], qb5[3], qb4[3], qb6[2], qb5[2], qb4[2], qb6[1], qb5[1], qb4[1], qb6[0], qb5[0], qb4[0]};

M7S_EMB18K #(
        .width_ext_mode (1'b1),
        .depth_ext_mode (1'b0),
        .dedicated_cfg (16'b1111111111111111),
        .fifo_en (1'b0),
        .emb5k_1_porta_prog (8'b11110000),
        .emb5k_1_portb_prog (8'b00001111),
        .emb5k_1_modea_sel (4'b1100),
        .emb5k_1_modeb_sel (4'b1100),
        .emb5k_1_porta_wr_mode (2'b01),
        .emb5k_1_portb_wr_mode (2'b01),
        .emb5k_1_porta_reg_out (1'b0),
        .emb5k_1_portb_reg_out (1'b0),
        .emb5k_1_reset_value_a (9'b000000000),
        .emb5k_1_reset_value_b (9'b000000000),
        .emb5k_1_porta_data_width (4),
        .emb5k_1_portb_data_width (4),
        .emb5k_1_operation_mode ("true_dual_port"),
        .emb5k_1_init_file (""),
        .emb5k_2_porta_prog (8'b11110000),
        .emb5k_2_portb_prog (8'b00001111),
        .emb5k_2_modea_sel (4'b1100),
        .emb5k_2_modeb_sel (4'b1100),
        .emb5k_2_porta_wr_mode (2'b01),
        .emb5k_2_portb_wr_mode (2'b01),
        .emb5k_2_porta_reg_out (1'b0),
        .emb5k_2_portb_reg_out (1'b0),
        .emb5k_2_reset_value_a (9'b000000000),
        .emb5k_2_reset_value_b (9'b000000000),
        .emb5k_2_porta_data_width (4),
        .emb5k_2_portb_data_width (4),
        .emb5k_2_operation_mode ("true_dual_port"),
        .emb5k_2_init_file (""),
        .emb5k_3_porta_prog (8'b11110000),
        .emb5k_3_portb_prog (8'b00001111),
        .emb5k_3_modea_sel (4'b1100),
        .emb5k_3_modeb_sel (4'b1100),
        .emb5k_3_porta_wr_mode (2'b01),
        .emb5k_3_portb_wr_mode (2'b01),
        .emb5k_3_porta_reg_out (1'b0),
        .emb5k_3_portb_reg_out (1'b0),
        .emb5k_3_reset_value_a (9'b000000000),
        .emb5k_3_reset_value_b (9'b000000000),
        .emb5k_3_porta_data_width (4),
        .emb5k_3_portb_data_width (4),
        .emb5k_3_operation_mode ("true_dual_port"),
        .emb5k_3_init_file (""),
        .emb5k_4_porta_prog (8'b11110000),
        .emb5k_4_portb_prog (8'b00001111),
        .emb5k_4_modea_sel (4'b1100),
        .emb5k_4_modeb_sel (4'b1100),
        .emb5k_4_porta_wr_mode (2'b01),
        .emb5k_4_portb_wr_mode (2'b01),
        .emb5k_4_porta_reg_out (1'b0),
        .emb5k_4_portb_reg_out (1'b0),
        .emb5k_4_reset_value_a (9'b000000000),
        .emb5k_4_reset_value_b (9'b000000000),
        .emb5k_4_porta_data_width (4),
        .emb5k_4_portb_data_width (4),
        .emb5k_4_operation_mode ("true_dual_port"),
        .emb5k_4_init_file ("")
)
u_emb18k_0 (
        .wfull (),
        .wfull_almost (),
        .rempty (),
        .rempty_almost (),
        .overflow (),
        .wr_ack (),
        .underflow (),
        .rd_ack (),
        .fifo_clr (),
        .wr_req_n (),
        .rd_req_n (),
        .rd_ha (),
        .rd_la (),
        .cea (cea),
        .ceb (ceb),
        .haa ({1'b0, aa[10]}),
        .hab ({1'b0, ab[10]}),
        .wea (wea),
        .web (web),
        .c1r1_cea (),
        .c1r1_ceb (),
        .c1r1_wea (),
        .c1r1_web (),
        .c1r1_clka (clka),
        .c1r1_clkb (clkb),
        .c1r1_rstna (1'b1),
        .c1r1_rstnb (1'b1),
        .c1r1_aa ({aa[9:0], 2'b0}),
        .c1r1_ab ({ab[9:0], 2'b0}),
        .c1r1_da ({2'b0, da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0]}),
        .c1r1_db ({2'b0, db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0]}),
        .c1r1_q ({qb0[8:0], qa0[8:0]}),
        .c1r2_cea (),
        .c1r2_ceb (),
        .c1r2_wea (),
        .c1r2_web (),
        .c1r2_clka (clka),
        .c1r2_clkb (clkb),
        .c1r2_rstna (1'b1),
        .c1r2_rstnb (1'b1),
        .c1r2_aa (),
        .c1r2_ab (),
        .c1r2_da ({2'b0, da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1]}),
        .c1r2_db ({2'b0, db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1]}),
        .c1r2_q ({qb1[8:0], qa1[8:0]}),
        .c1r3_cea (),
        .c1r3_ceb (),
        .c1r3_wea (),
        .c1r3_web (),
        .c1r3_clka (clka),
        .c1r3_clkb (clkb),
        .c1r3_rstna (1'b1),
        .c1r3_rstnb (1'b1),
        .c1r3_aa (),
        .c1r3_ab (),
        .c1r3_da ({2'b0, da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0], da[9], da[6], da[3], da[0]}),
        .c1r3_db ({2'b0, db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0], db[9], db[6], db[3], db[0]}),
        .c1r3_q ({qb4[8:0], qa4[8:0]}),
        .c1r4_cea (),
        .c1r4_ceb (),
        .c1r4_wea (),
        .c1r4_web (),
        .c1r4_clka (clka),
        .c1r4_clkb (clkb),
        .c1r4_rstna (1'b1),
        .c1r4_rstnb (1'b1),
        .c1r4_aa (),
        .c1r4_ab (),
        .c1r4_da ({2'b0, da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1], da[10], da[7], da[4], da[1]}),
        .c1r4_db ({2'b0, db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1], db[10], db[7], db[4], db[1]}),
        .c1r4_q ({qb5[8:0], qa5[8:0]})
);

M7S_EMB18K #(
        .width_ext_mode (1'b1),
        .depth_ext_mode (1'b0),
        .dedicated_cfg (16'b1111111111111111),
        .fifo_en (1'b0),
        .emb5k_1_porta_prog (8'b11110000),
        .emb5k_1_portb_prog (8'b00001111),
        .emb5k_1_modea_sel (4'b1100),
        .emb5k_1_modeb_sel (4'b1100),
        .emb5k_1_porta_wr_mode (2'b01),
        .emb5k_1_portb_wr_mode (2'b01),
        .emb5k_1_porta_reg_out (1'b0),
        .emb5k_1_portb_reg_out (1'b0),
        .emb5k_1_reset_value_a (9'b000000000),
        .emb5k_1_reset_value_b (9'b000000000),
        .emb5k_1_porta_data_width (4),
        .emb5k_1_portb_data_width (4),
        .emb5k_1_operation_mode ("true_dual_port"),
        .emb5k_1_init_file (""),
        .emb5k_2_porta_prog (8'b11110000),
        .emb5k_2_portb_prog (8'b00001111),
        .emb5k_2_modea_sel (4'b1100),
        .emb5k_2_modeb_sel (4'b1100),
        .emb5k_2_porta_wr_mode (2'b01),
        .emb5k_2_portb_wr_mode (2'b01),
        .emb5k_2_porta_reg_out (1'b0),
        .emb5k_2_portb_reg_out (1'b0),
        .emb5k_2_reset_value_a (9'b000000000),
        .emb5k_2_reset_value_b (9'b000000000),
        .emb5k_2_porta_data_width (4),
        .emb5k_2_portb_data_width (4),
        .emb5k_2_operation_mode ("true_dual_port"),
        .emb5k_2_init_file (""),
        .emb5k_3_porta_prog (8'b11110000),
        .emb5k_3_portb_prog (8'b00001111),
        .emb5k_3_modea_sel (4'b1100),
        .emb5k_3_modeb_sel (4'b1100),
        .emb5k_3_porta_wr_mode (2'b01),
        .emb5k_3_portb_wr_mode (2'b01),
        .emb5k_3_porta_reg_out (1'b0),
        .emb5k_3_portb_reg_out (1'b0),
        .emb5k_3_reset_value_a (9'b000000000),
        .emb5k_3_reset_value_b (9'b000000000),
        .emb5k_3_porta_data_width (4),
        .emb5k_3_portb_data_width (4),
        .emb5k_3_operation_mode ("true_dual_port"),
        .emb5k_3_init_file (""),
        .emb5k_4_porta_prog (8'b11110000),
        .emb5k_4_portb_prog (8'b00001111),
        .emb5k_4_modea_sel (4'b1100),
        .emb5k_4_modeb_sel (4'b1100),
        .emb5k_4_porta_wr_mode (2'b01),
        .emb5k_4_portb_wr_mode (2'b01),
        .emb5k_4_porta_reg_out (1'b0),
        .emb5k_4_portb_reg_out (1'b0),
        .emb5k_4_reset_value_a (9'b000000000),
        .emb5k_4_reset_value_b (9'b000000000),
        .emb5k_4_porta_data_width (4),
        .emb5k_4_portb_data_width (4),
        .emb5k_4_operation_mode ("true_dual_port"),
        .emb5k_4_init_file ("")
)
u_emb18k_1 (
        .wfull (),
        .wfull_almost (),
        .rempty (),
        .rempty_almost (),
        .overflow (),
        .wr_ack (),
        .underflow (),
        .rd_ack (),
        .fifo_clr (),
        .wr_req_n (),
        .rd_req_n (),
        .rd_ha (),
        .rd_la (),
        .cea (cea),
        .ceb (ceb),
        .haa ({1'b0, aa[10]}),
        .hab ({1'b0, ab[10]}),
        .wea (wea),
        .web (web),
        .c1r1_cea (),
        .c1r1_ceb (),
        .c1r1_wea (),
        .c1r1_web (),
        .c1r1_clka (clka),
        .c1r1_clkb (clkb),
        .c1r1_rstna (1'b1),
        .c1r1_rstnb (1'b1),
        .c1r1_aa ({aa[9:0], 2'b0}),
        .c1r1_ab ({ab[9:0], 2'b0}),
        .c1r1_da ({2'b0, da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2]}),
        .c1r1_db ({2'b0, db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2]}),
        .c1r1_q ({qb2[8:0], qa2[8:0]}),
        .c1r2_cea (),
        .c1r2_ceb (),
        .c1r2_wea (),
        .c1r2_web (),
        .c1r2_clka (clka),
        .c1r2_clkb (clkb),
        .c1r2_rstna (1'b1),
        .c1r2_rstnb (1'b1),
        .c1r2_aa (),
        .c1r2_ab (),
        .c1r2_da ({18'b0}),
        .c1r2_db ({18'b0}),
        .c1r2_q ({qb3[8:0], qa3[8:0]}),
        .c1r3_cea (),
        .c1r3_ceb (),
        .c1r3_wea (),
        .c1r3_web (),
        .c1r3_clka (clka),
        .c1r3_clkb (clkb),
        .c1r3_rstna (1'b1),
        .c1r3_rstnb (1'b1),
        .c1r3_aa (),
        .c1r3_ab (),
        .c1r3_da ({2'b0, da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2], da[11], da[8], da[5], da[2]}),
        .c1r3_db ({2'b0, db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2], db[11], db[8], db[5], db[2]}),
        .c1r3_q ({qb6[8:0], qa6[8:0]}),
        .c1r4_cea (),
        .c1r4_ceb (),
        .c1r4_wea (),
        .c1r4_web (),
        .c1r4_clka (clka),
        .c1r4_clkb (clkb),
        .c1r4_rstna (1'b1),
        .c1r4_rstnb (1'b1),
        .c1r4_aa (),
        .c1r4_ab (),
        .c1r4_da ({18'b0}),
        .c1r4_db ({18'b0}),
        .c1r4_q ({qb7[8:0], qa7[8:0]})
);

endmodule

// ============================================================
//                  emb Setting
//
// Warning: This part is read by Primace, please don't modify it.
// ============================================================
// Device          : M7A12N0F256I7
// Module          : emb_12_2k
// IP core         : emb
// IP Version      : 1

// AHBMode         : ahb_unused
// AddrExtA        : 2
// AddrExtB        : 2
// AddrUsedA       : 11
// AddrWidthB      : 11
// BaseAddr        : a0000000
// BaseModeA       : 1024x4
// BaseModeB       : 1024x4
// DataExtA        : 4
// DataExtB        : 4
// DataUsedA       : 12
// DataUsedB       : 12
// Emb18kDepth     : false
// Emb18kWidth     : true
// EmbResource     : auto
// EmbType         : tdp
// InitFile        : 
// ModeA           : 1kx4
// ModeB           : 1kx4
// OutResetA       : false
// OutResetB       : false
// OutResetValA    : 
// OutResetValB    : 
// RegoutA         : false
// RegoutB         : false
// Simulation Files: 
// Synthesis Files : 
// WriteModeA      : write_first
// WriteModeB      : write_first
