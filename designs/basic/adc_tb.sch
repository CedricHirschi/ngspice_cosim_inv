v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -700 400 -300 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.2505565e-08
x2=1.2792468e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="rst_ni
start_i
x1.sample_o
clk_i
ready_o
result_o;result_o0,result_o1,result_o2,result_o3"
color="4 5 6 7 8 9"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/adc_tb.raw
digital=1}
B 2 -400 -1100 400 -700 {flags=graph
y1=-0.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.2505565e-08
x2=1.2792468e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color="4 5 6"
node="x1.sample
x1.comp
in_ai"}
B 2 -400 -1500 400 -1100 {flags=graph
y1=-0.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.2505565e-08
x2=1.2792468e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color="4 5 6 7"
node="result_o0
result_o1
result_o2
result_o3"
y2=2}
N -130 50 -130 80 {lab=clk_i}
N -130 50 -90 50 {lab=clk_i}
N -260 30 -90 30 {lab=rst_ni}
N -260 30 -260 80 {lab=rst_ni}
N -390 10 -90 10 {lab=start_i}
N -390 10 -390 80 {lab=start_i}
N -520 -50 -90 -50 {lab=in_ai}
N -520 -50 -520 80 {lab=in_ai}
N -520 140 -520 180 {lab=GND}
N -390 140 -390 180 {lab=GND}
N -260 140 -260 180 {lab=GND}
N -130 140 -130 180 {lab=GND}
N -520 300 -520 320 {lab=vdd}
N -440 300 -440 320 {lab=vss}
N 10 90 10 130 {lab=vss}
N 10 -130 10 -90 {lab=vdd}
N 220 -30 300 -30 {lab=ready_o}
N 380 100 380 140 {lab=result_o0}
N 110 -50 300 -50 {lab=result_o[0..3]}
N 380 340 380 380 {lab=GND}
N 220 70 220 110 {lab=GND}
N 440 100 440 140 {lab=result_o1}
N 440 340 440 380 {lab=GND}
N 500 100 500 140 {lab=result_o2}
N 500 340 500 380 {lab=GND}
N 560 100 560 140 {lab=result_o3}
N 560 340 560 380 {lab=GND}
N 220 -30 220 10 {lab=ready_o}
N 110 -30 220 -30 {lab=ready_o}
N 560 220 560 280 {lab=#net1}
N 500 220 500 280 {lab=#net2}
N 440 220 440 280 {lab=#net3}
N 380 220 380 280 {lab=#net4}
C {adc.sym} 10 0 0 0 {name=x1}
C {launcher.sym} -60 -200 0 0 {name=h1
descr="Build Icarus Object"
tclcommand="execute 1 sh -c \\"cd $netlist_dir; iverilog -g2012 -o adc [abs_sym_path adc.sv]\\""}
C {vsource.sym} -130 110 0 0 {name=V1 value="pulse(\{vss\}, \{vdd\}, \{0.5/f\}, 0, 0, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {vsource.sym} -260 110 0 0 {name=V2 value="pulse(\{vdd\}, \{vss\}, 0, 0, 0, \{1/f\}, \{20/f\})" savecurrent=false}
C {vsource.sym} -390 110 0 0 {name=V3 value="pulse(\{vss\}, \{vdd\}, \{4/f\}, 0, 0, \{1/f\}, \{20/f\})" savecurrent=false}
C {vsource.sym} -520 110 0 0 {name=V4 value="pulse(1, 0.5, \{50/f\}, 0, 0, \{50/f\}, \{100/f\})" savecurrent=true}
C {gnd.sym} -130 180 0 0 {name=l1 lab=GND}
C {gnd.sym} -260 180 0 0 {name=l2 lab=GND}
C {gnd.sym} -390 180 0 0 {name=l3 lab=GND}
C {gnd.sym} -520 180 0 0 {name=l4 lab=GND}
C {code_shown.sym} 780 -180 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 780 -40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran \{0.01/f\} \{100/f\}
.save all
*.write comparator_tb.raw
"}
C {simulator_commands_shown.sym} 780 120 0 0 {name=PARAMS
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=80Meg
"}
C {lab_wire.sym} -520 300 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -440 300 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -520 350 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -440 350 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -520 380 0 0 {name=l5 lab=GND}
C {gnd.sym} -440 380 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 10 -130 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 10 130 2 0 {name=p2 sig_type=std_logic lab=vss}
C {capa.sym} 380 310 0 0 {name=C1
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 220 40 0 0 {name=C2
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 380 0 0 {name=l7 lab=GND}
C {gnd.sym} 220 110 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -130 50 0 0 {name=p3 sig_type=std_logic lab=clk_i}
C {lab_wire.sym} -260 30 0 0 {name=p4 sig_type=std_logic lab=rst_ni}
C {lab_wire.sym} -390 10 0 0 {name=p5 sig_type=std_logic lab=start_i}
C {lab_wire.sym} -520 -50 0 0 {name=p8 sig_type=std_logic lab=in_ai}
C {lab_wire.sym} 300 -50 2 0 {name=p9 sig_type=std_logic lab=result_o[0..3]
}
C {lab_wire.sym} 300 -30 2 0 {name=p10 sig_type=std_logic lab=ready_o}
C {launcher.sym} -60 -250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/adc_tb.raw tran"
}
C {capa.sym} 440 310 0 0 {name=C3
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 440 380 0 0 {name=l9 lab=GND}
C {capa.sym} 500 310 0 0 {name=C4
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 500 380 0 0 {name=l10 lab=GND}
C {capa.sym} 560 310 0 0 {name=C5
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 560 380 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 380 100 1 0 {name=p11 sig_type=std_logic lab=result_o0
}
C {lab_wire.sym} 440 100 1 0 {name=p12 sig_type=std_logic lab=result_o1
}
C {lab_wire.sym} 500 100 1 0 {name=p13 sig_type=std_logic lab=result_o2
}
C {lab_wire.sym} 560 100 1 0 {name=p14 sig_type=std_logic lab=result_o3
}
C {simulator_commands_shown.sym} 780 290 0 0 {name=BRIDGE_MODELS
simulator=ngspice
only_toplevel=false 
value="
.model adc_buff_clk adc_bridge(in_low = 'vdd/2' in_high = 'vdd/2')

.control
pre_set auto_bridge_d_out =
+ ( \\".model auto_bridge_out bidi_bridge(direction=0 out_high=1.5 t_rise=1n t_fall=1n)\\"
+   \\"auto_bridge_out%d [ %s ] [ %s ] null auto_bridge_out\\" )
pre_set auto_bridge_d_in =
+ ( \\".model auto_bridge_in bidi_bridge(direction=1 in_low=0.5 in_high=1)\\"
+   \\"auto_bridge_in%d [ %s ] [ %s ] null auto_bridge_in\\" )
.endc
"}
C {sg13g2_stdcells/sg13g2_buf_1.sym} 380 180 1 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_1.sym} 440 180 1 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_1.sym} 500 180 1 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_buf_1.sym} 560 180 1 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
