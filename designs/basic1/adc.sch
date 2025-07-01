v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -300 -280 -300 -240 {lab=vdd}
N -260 -280 -260 -240 {lab=vss}
N 210 -120 210 -80 {lab=vss}
N 210 -260 210 -220 {lab=vdd}
N 130 -160 170 -160 {lab=dac_o[0..7]}
N 260 160 300 160 {lab=#net1}
N 260 180 300 180 {lab=rst_ni}
N 260 200 300 200 {lab=start_i}
N 260 240 300 240 {lab=comp_real}
N 160 160 200 160 {lab=clk_digital_i}
N -280 -120 -280 -80 {lab=sample_o}
N 100 40 140 40 {lab=comp}
N 520 160 560 160 {lab=result_o[0..7]}
N 520 180 560 180 {lab=dac_o[0..7]}
N 520 200 560 200 {lab=ready_o}
N 520 220 560 220 {lab=sample_o}
N -410 -180 -340 -180 {lab=in_ai}
N -220 -180 170 -180 {lab=sample}
N 0 40 40 40 {lab="%vd(sample vdd)"}
N -40 390 0 390 {lab=clk_comp_i}
N -40 440 -0 440 {lab=vdd}
N 100 500 100 540 {lab=vss}
N 100 260 100 300 {lab=vdd}
N -40 360 -0 360 {lab=sample}
N -400 320 -360 320 {lab=clk_comp_i}
N -280 320 -240 320 {lab=clk_comp_ni}
N -40 410 -0 410 {lab=clk_comp_ni}
N 180 380 420 380 {lab=comp_real_pos}
N 180 420 420 420 {lab=comp_real_neg}
N 540 400 620 400 {lab=comp_real}
C {/workspaces/ngspice_cosim_inv/designs/tgate/tgate.sym} -280 -180 0 0 {name=x1}
C {/workspaces/ngspice_cosim_inv/designs/cdac/cdac.sym} 210 -170 0 0 {name=x3}
C {ipin.sym} -410 -180 0 0 {name=p1 lab=in_ai}
C {ipin.sym} -400 280 0 0 {name=p2 lab=clk_digital_i}
C {ipin.sym} -410 -280 0 0 {name=p5 lab=vss}
C {ipin.sym} -410 -300 0 0 {name=p6 lab=vdd}
C {lab_pin.sym} -300 -280 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -260 -280 1 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 210 -80 3 0 {name=p13 sig_type=std_logic lab=vss}
C {lab_pin.sym} 210 -260 1 0 {name=p14 sig_type=std_logic lab=vdd}
C {ipin.sym} -400 240 0 0 {name=p15 lab=rst_ni}
C {lab_pin.sym} 140 40 2 0 {name=p16 sig_type=std_logic lab=comp}
C {lab_pin.sym} 160 160 0 0 {name=p19 sig_type=std_logic lab=clk_digital_i}
C {lab_pin.sym} 260 180 0 0 {name=p20 sig_type=std_logic lab=rst_ni}
C {ipin.sym} -400 200 0 0 {name=p21 lab=start_i}
C {lab_pin.sym} 260 240 0 0 {name=p22 sig_type=std_logic lab=comp_real}
C {lab_pin.sym} 260 200 0 0 {name=p23 sig_type=std_logic lab=start_i}
C {lab_pin.sym} 560 180 2 0 {name=p24 sig_type=std_logic lab=dac_o[0..7]}
C {lab_pin.sym} 560 200 2 0 {name=p25 sig_type=std_logic lab=ready_o}
C {opin.sym} 490 -140 0 0 {name=p26 lab=ready_o}
C {lab_pin.sym} 130 -160 0 0 {name=p17 sig_type=std_logic lab=dac_o[0..7]}
C {opin.sym} 490 -160 0 0 {name=p27 lab=result_o[0..7]}
C {adc_bridge.sym} 230 160 0 0 {name=A2 adc_bridge_model= adc_buff_clk}
C {lab_wire.sym} -130 -180 0 0 {name=p28 sig_type=std_logic lab=sample}
C {adc_vlog.sym} 380 240 0 0 {name=A1 model=adc
device_model=".model adc d_cosim simulation=\\"ivlng\\" sim_args=[\\"adc\\"]"}
C {lab_pin.sym} -280 -80 3 0 {name=p18 sig_type=std_logic lab=sample_o}
C {lab_pin.sym} 560 220 2 0 {name=p34 sig_type=std_logic lab=sample_o}
C {ipin.sym} -400 320 0 0 {name=p3 lab=clk_comp_i}
C {lab_pin.sym} 560 160 2 0 {name=p11 sig_type=std_logic lab=result_o[0..7]}
C {adc_bridge.sym} 70 40 0 0 {name=A3 adc_bridge_model=comp
device_model=".model comp adc_bridge in_low=0 in_high=0"
}
C {lab_pin.sym} 0 40 0 0 {name=p4 lab="%vd(sample vdd)"}
C {dac_bridge.sym} 70 80 0 0 {name=A4 dac_bridge_model= dac_buff
device_model=".model dac_buff dac_bridge input_load=1e-15 t_rise=10n t_fall=10n
+ out_low=0 out_high=1.5"}
C {lab_pin.sym} 100 80 0 1 {name=p35 lab=comp_a}
C {lab_pin.sym} 40 80 0 0 {name=p9 sig_type=std_logic lab=comp}
C {noconn.sym} 0 40 3 0 {name=l3}
C {lab_pin.sym} -40 390 0 0 {name=p10 sig_type=std_logic lab=clk_comp_i}
C {lab_pin.sym} -40 440 0 0 {name=p29 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 100 260 1 0 {name=p30 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 100 540 3 0 {name=p31 sig_type=std_logic lab=vss}
C {lab_wire.sym} 300 380 0 0 {name=p32 sig_type=std_logic lab=comp_real_pos}
C {lab_wire.sym} 300 420 0 0 {name=p33 sig_type=std_logic lab=comp_real_neg}
C {lab_pin.sym} 620 400 2 0 {name=p36 sig_type=std_logic lab=comp_real}
C {lab_wire.sym} -40 360 0 0 {name=p12 sig_type=std_logic lab=sample}
C {/workspaces/ngspice_cosim_inv/designs/comparator_dt/comparator.sym} 100 400 0 0 {name=x2}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -320 320 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -240 320 2 0 {name=p37 sig_type=std_logic lab=clk_comp_ni}
C {lab_pin.sym} -40 410 0 0 {name=p38 sig_type=std_logic lab=clk_comp_ni}
C {sg13g2_stdcells/sg13g2_nand2b_1.sym} 480 400 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
