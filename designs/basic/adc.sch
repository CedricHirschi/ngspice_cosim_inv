v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -180 170 -180 {lab=sample}
N -410 -180 -290 -180 {lab=in_ai}
N -400 280 -360 280 {lab=clk_i}
N -280 280 -240 280 {lab=clk_n}
N -130 60 -90 60 {lab=clk_n}
N -130 100 -90 100 {lab=vss}
N -130 100 -130 200 {lab=vss}
N -130 200 10 200 {lab=vss}
N 10 160 10 200 {lab=vss}
N 10 200 10 240 {lab=vss}
N -130 20 -90 20 {lab=sample}
N -130 -180 -130 20 {lab=sample}
N -170 -180 -130 -180 {lab=sample}
N -250 -280 -250 -240 {lab=vdd}
N -210 -280 -210 -240 {lab=vss}
N 10 -80 10 -40 {lab=vdd}
N 210 -120 210 -80 {lab=vss}
N 210 -260 210 -220 {lab=vdd}
N 130 -160 170 -160 {lab=dac_o[0..3]}
N 260 160 300 160 {lab=#net1}
N 260 180 300 180 {lab=rst_ni}
N 260 200 300 200 {lab=start_i}
N 260 240 300 240 {lab=comp}
N 480 160 520 160 {lab=dac_o[0..3]}
N 480 180 520 180 {lab=ready_o}
N 160 160 200 160 {lab=clk_i}
N -400 240 -360 240 {lab=rst_ni}
N -280 240 -240 240 {lab=rst_i}
N -230 -120 -230 -80 {lab=sample_o}
N 480 200 520 200 {lab=sample_o}
N 90 80 160 80 {lab=out2}
N 90 40 130 40 {lab=comp}
N 680 -290 700 -290 {lab=rst_ni}
N 680 -360 680 -290 {lab=rst_ni}
N 680 -360 700 -360 {lab=rst_ni}
N 680 -430 680 -360 {lab=rst_ni}
N 680 -430 700 -430 {lab=rst_ni}
N 680 -500 680 -430 {lab=rst_ni}
N 680 -500 700 -500 {lab=rst_ni}
N 680 -600 680 -500 {lab=rst_ni}
N 660 -330 700 -330 {lab=ready_o}
N 660 -400 660 -330 {lab=ready_o}
N 660 -400 700 -400 {lab=ready_o}
N 660 -470 660 -400 {lab=ready_o}
N 660 -470 700 -470 {lab=ready_o}
N 660 -540 660 -470 {lab=ready_o}
N 660 -540 700 -540 {lab=ready_o}
N 660 -600 660 -540 {lab=ready_o}
N 620 -520 700 -520 {lab=dac_o0}
N 620 -450 700 -450 {lab=dac_o1}
N 620 -380 700 -380 {lab=dac_o2}
N 880 -540 920 -540 {lab=result_o0}
N 880 -470 920 -470 {lab=result_o1}
N 880 -400 920 -400 {lab=result_o2}
N 880 -330 920 -330 {lab=result_o3}
N 620 -310 700 -310 {lab=dac_o3}
C {/workspaces/ngspice_cosim_inv/designs/tgate/tgate.sym} -230 -180 0 0 {name=x1}
C {/workspaces/ngspice_cosim_inv/designs/comparator/comparator.sym} 10 60 0 0 {name=x2}
C {/workspaces/ngspice_cosim_inv/designs/cdac/cdac.sym} 210 -170 0 0 {name=x3}
C {ipin.sym} -410 -180 0 0 {name=p1 lab=in_ai}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -320 280 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -400 280 0 0 {name=p2 lab=clk_i}
C {lab_pin.sym} -240 280 2 0 {name=p3 sig_type=std_logic lab=clk_n}
C {ipin.sym} -410 -280 0 0 {name=p5 lab=vss}
C {ipin.sym} -410 -300 0 0 {name=p6 lab=vdd}
C {lab_pin.sym} -250 -280 1 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -210 -280 1 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 10 -80 1 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 10 240 3 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 210 -80 3 0 {name=p13 sig_type=std_logic lab=vss}
C {lab_pin.sym} 210 -260 1 0 {name=p14 sig_type=std_logic lab=vdd}
C {ipin.sym} -400 240 0 0 {name=p15 lab=rst_ni}
C {lab_pin.sym} 130 40 2 0 {name=p16 sig_type=std_logic lab=comp}
C {lab_pin.sym} 160 160 0 0 {name=p19 sig_type=std_logic lab=clk_i}
C {lab_pin.sym} 260 180 0 0 {name=p20 sig_type=std_logic lab=rst_ni}
C {ipin.sym} -400 200 0 0 {name=p21 lab=start_i}
C {lab_pin.sym} 260 240 0 0 {name=p22 sig_type=std_logic lab=comp}
C {lab_pin.sym} 260 200 0 0 {name=p23 sig_type=std_logic lab=start_i}
C {lab_pin.sym} 520 160 2 0 {name=p24 sig_type=std_logic lab=dac_o[0..3]}
C {lab_pin.sym} 520 180 2 0 {name=p25 sig_type=std_logic lab=ready_o}
C {opin.sym} 490 -140 0 0 {name=p26 lab=ready_o}
C {lab_pin.sym} 130 -160 0 0 {name=p17 sig_type=std_logic lab=dac_o[0..3]}
C {opin.sym} 490 -160 0 0 {name=p27 lab=result_o[0..3]}
C {adc_bridge.sym} 230 160 0 0 {name=A2 adc_bridge_model= adc_buff_clk}
C {lab_wire.sym} 0 -180 0 0 {name=p28 sig_type=std_logic lab=sample}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -320 240 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -240 240 2 0 {name=p31 sig_type=std_logic lab=rst_i}
C {adc_vlog.sym} 380 240 0 0 {name=A1 model=adc
device_model=".model adc d_cosim simulation=\\"ivlng\\" sim_args=[\\"adc\\"]"}
C {lab_pin.sym} -230 -80 3 0 {name=p18 sig_type=std_logic lab=sample_o}
C {lab_pin.sym} 520 200 2 0 {name=p34 sig_type=std_logic lab=sample_o}
C {lab_wire.sym} 160 80 0 0 {name=p30 sig_type=std_logic lab=out2}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 790 -520 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 790 -450 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 790 -380 0 0 {name=x9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 790 -310 0 0 {name=x10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 680 -600 1 0 {name=p33 sig_type=std_logic lab=rst_ni}
C {lab_pin.sym} 620 -520 0 0 {name=p35 sig_type=std_logic lab=dac_o0}
C {lab_pin.sym} 620 -450 0 0 {name=p36 sig_type=std_logic lab=dac_o1}
C {lab_pin.sym} 620 -380 0 0 {name=p37 sig_type=std_logic lab=dac_o2}
C {lab_pin.sym} 620 -310 0 0 {name=p38 sig_type=std_logic lab=dac_o3}
C {lab_pin.sym} 920 -540 2 0 {name=p39 sig_type=std_logic lab=result_o0}
C {lab_pin.sym} 920 -470 2 0 {name=p40 sig_type=std_logic lab=result_o1}
C {lab_pin.sym} 920 -400 2 0 {name=p41 sig_type=std_logic lab=result_o2}
C {lab_pin.sym} 920 -330 2 0 {name=p42 sig_type=std_logic lab=result_o3}
C {lab_pin.sym} 660 -600 1 0 {name=p32 sig_type=std_logic lab=ready_o}
C {lab_pin.sym} -130 60 0 0 {name=p4 sig_type=std_logic lab=clk_n}
