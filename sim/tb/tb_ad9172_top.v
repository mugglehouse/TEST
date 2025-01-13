`timescale 1ns/1ps

module tb_top ();

// 1. 信号定义
parameter CLK_PERIOD = 20 ;
reg sys_clk;
reg sys_rst_n;
wire pulse_user;
wire   [255:0]      dds_rsv_port_o              ;
wire [15:0]         i0, i1, i2, i3, 
                    i4, i5, i6, i7, 
                    i8, i9,i10,i11,
                    i12,i13,i14,i15            ;
wire [15:0]         q0, q1, q2, q3, 
                    q4, q5, q6, q7, 
                    q8, q9,q10,q11,
                    q12,q13,q14,q15            ;

// 2. 系统时钟沿
always #(CLK_PERIOD/2) sys_clk=~sys_clk;

// 3. 仿真模块
initial begin
    sys_clk <= 1'b0;
    sys_rst_n <= 1'b1;
    #200
    sys_rst_n <= 1'b0;
end

// 4. 例化被测模块
ad9172_top u_ad9172_top (
    .clk_user_bufg(sys_clk),
    .rst_glb(sys_rst_n),
    .DDS_MODE_VIO(1'b0),
    .DDS_FIN_MHz_VIO(32'd10),
    .DDS_FIN_HEX_VIO(32'h0),
    .DDS_PRT_WIDTH_VIO(32'd0),
    .DDS_PRT_CYCLE_VIO(32'd0),
    .DDS_AMP_MULTIP_VIO(15'd0),
    .DDS_ATT_0p1dB_VIO(10'd0),
    .DDS_FREQHOPSPEED_VIO(32'd0),
    .DDS_FREQHOP_kHz_VIO(16'd0),
    .DDS_FREQHOP_START_MHz_VIO(16'd0),
    .DDS_FREQHOP_STOP_MHz_VIO(16'd0),
    .DDS_IMD_INTERVAL_kHz_VIO(20'd0)
);

endmodule //tb_dds_top