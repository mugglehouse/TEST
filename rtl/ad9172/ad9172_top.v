module ad9172_top( 
    input clk_user_bufg,            // 将分号改为逗号
    input rst_glb,
    input [15:0] DDS_MODE_VIO,
    input [31:0] DDS_FIN_MHz_VIO,
    input [31:0] DDS_FIN_HEX_VIO,
    input [31:0] DDS_PRT_WIDTH_VIO,
    input [31:0] DDS_PRT_CYCLE_VIO,
    input [14:0] DDS_AMP_MULTIP_VIO,
    input [9:0] DDS_ATT_0p1dB_VIO,
    input [31:0] DDS_FREQHOPSPEED_VIO,
    input [15:0] DDS_FREQHOP_kHz_VIO,
    input [15:0] DDS_FREQHOP_START_MHz_VIO,
    input [15:0] DDS_FREQHOP_STOP_MHz_VIO,
    input [19:0] DDS_IMD_INTERVAL_kHz_VIO,      // 最后一个端口移除分号

    output pulse_user, 
    output [255:0] dds_rsv_port_o,
    output [15:0] i0,
    output [15:0] i1,
    output [15:0] i2,
    output [15:0] i3,
    output [15:0] i4,
    output [15:0] i5,
    output [15:0] i6,
    output [15:0] i7,
    output [15:0] i8,
    output [15:0] i9,
    output [15:0] i10,
    output [15:0] i11,
    output [15:0] i12,
    output [15:0] i13,
    output [15:0] i14,
    output [15:0] i15,
    output [15:0] q0,
    output [15:0] q1,
    output [15:0] q2,
    output [15:0] q3,
    output [15:0] q4,
    output [15:0] q5,
    output [15:0] q6,
    output [15:0] q7,
    output [15:0] q8,
    output [15:0] q9,
    output [15:0] q10,
    output [15:0] q11,
    output [15:0] q12,
    output [15:0] q13,
    output [15:0] q14,
    output [15:0] q15

);

                    

dds_for_7_series_iq                u_dds_for_7_series_iq(
  .DDS_CLK_FREQ_MHz                 (100                            ),// I，100Mhz，输入的时钟频率                             
  .rst_glb                          (rst_glb                    ),// I,全局复位信号
  .clk_user_bufg                    (clk_user_bufg                  ),// I,全局时钟输入，由外部提供clk_glbl_o
  .pulse_user                       (pulse_user                     ),// O,脉冲信号输出模式下的脉冲输出，指示有效输出位置，高有效,用于 DAC 输出延迟测试
  .i0                               (i0                             ),// O,I和Q路输出
  .i1                               (i1                             ),
  .i2                               (i2                             ),
  .i3                               (i3                             ),
  .i4                               (i4                             ),
  .i5                               (i5                             ),
  .i6                               (i6                             ),
  .i7                               (i7                             ),
  .i8                               (i8                             ),
  .i9                               (i9                             ), 
  .i10                              (i10                            ),
  .i11                              (i11                            ),
  .i12                              (i12                            ),
  .i13                              (i13                            ),
  .i14                              (i14                            ),
  .i15                              (i15                            ),
  .q0                               (q0                             ),
  .q1                               (q1                             ),
  .q2                               (q2                             ),
  .q3                               (q3                             ),
  .q4                               (q4                             ),
  .q5                               (q5                             ),
  .q6                               (q6                             ),
  .q7                               (q7                             ),
  .q8                               (q8                             ),
  .q9                               (q9                             ),
  .q10                              (q10                            ),
  .q11                              (q11                            ),
  .q12                              (q12                            ),
  .q13                              (q13                            ),
  .q14                              (q14                            ),
  .q15                              (q15                            ),
  //-----control signal------------ 
  .DDS_MODE_VIO                     (DDS_MODE_VIO                   ),
  .DDS_FIN_MHz_VIO                  (DDS_FIN_MHz_VIO                ),
  .DDS_FIN_HEX_VIO                  (DDS_FIN_HEX_VIO                ),
  .DDS_PRT_WIDTH_VIO                (DDS_PRT_WIDTH_VIO              ), 
  .DDS_PRT_CYCLE_VIO                (DDS_PRT_CYCLE_VIO              ),
  .DDS_AMP_MULTIP_VIO               (DDS_AMP_MULTIP_VIO             ),
  .DDS_ATT_0p1dB_VIO                (DDS_ATT_0p1dB_VIO              ),                            
  .DDS_FREQHOPSPEED_VIO             (DDS_FREQHOPSPEED_VIO           ),
  .DDS_FREQHOP_kHz_VIO              (DDS_FREQHOP_kHz_VIO            ),
  .DDS_FREQHOP_START_MHz_VIO        (DDS_FREQHOP_START_MHz_VIO      ),
  .DDS_FREQHOP_STOP_MHz_VIO         (DDS_FREQHOP_STOP_MHz_VIO       ), 
  .DDS_IMD_INTERVAL_kHz_VIO         (DDS_IMD_INTERVAL_kHz_VIO       ),
    
  .dds_rsv_port_o                   (dds_rsv_port_o                 ) // O,保留端口out
);


endmodule