v {xschem version=3.4.8RC file_version=1.2}
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
x1=-2.4527275e-06
x2=2.1966887e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="rst_ni
clk_digital_i
clk_comp_i
start_i
x1.sample_o
ready_o
result_o;result_o0,result_o1,result_o2,result_o3,result_o4,result_o5,result_o6,result_o7
dac_o;x1.dac_o0,x1.dac_o1,x1.dac_o2,x1.dac_o3,x1.dac_o4,x1.dac_o5,x1.dac_o6,x1.dac_o7"
color="4 5 6 7 8 9 10 4"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/adc_tb.raw
digital=1}
B 2 -400 -1100 400 -700 {flags=graph
y1=-1
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.4527275e-06
x2=2.1966887e-05
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
in_ai
vdd"}
B 2 -400 -1500 400 -1100 {flags=graph
y1=0
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.4527275e-06
x2=2.1966887e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5 6 7 8 9"
node="x1.comp_a
x1.comp_real_pos
x1.comp_real_neg
x1.comp_real
clk_comp_i
clk_digital_i"}
N -130 50 -130 290 {lab=clk_comp_i}
N -130 50 -90 50 {lab=clk_comp_i}
N -260 10 -90 10 {lab=rst_ni}
N -260 10 -260 80 {lab=rst_ni}
N -390 -10 -90 -10 {lab=start_i}
N -390 -10 -390 80 {lab=start_i}
N -520 -50 -90 -50 {lab=in_ai}
N -520 -50 -520 80 {lab=in_ai}
N -520 140 -520 180 {lab=GND}
N -390 140 -390 180 {lab=GND}
N -260 140 -260 180 {lab=GND}
N -200 280 -200 320 {lab=GND}
N -520 300 -520 320 {lab=vdd}
N -440 300 -440 320 {lab=vss}
N 10 90 10 130 {lab=vss}
N 10 -130 10 -90 {lab=vdd}
N 220 -30 300 -30 {lab=ready_o}
N 110 -50 300 -50 {lab=result_o[0..7]}
N 180 380 180 420 {lab=GND}
N 220 70 220 110 {lab=GND}
N 240 380 240 420 {lab=GND}
N 300 380 300 420 {lab=GND}
N 360 380 360 420 {lab=GND}
N 220 -30 220 10 {lab=ready_o}
N 110 -30 220 -30 {lab=ready_o}
N 360 260 360 320 {lab=result_o3}
N 300 260 300 320 {lab=result_o2}
N 240 260 240 320 {lab=result_o1}
N 180 260 180 320 {lab=result_o0}
N -200 30 -90 30 {lab=clk_digital_i}
N -200 30 -200 220 {lab=clk_digital_i}
N -130 350 -130 390 {lab=GND}
N 420 380 420 420 {lab=GND}
N 480 380 480 420 {lab=GND}
N 540 380 540 420 {lab=GND}
N 600 380 600 420 {lab=GND}
N 600 260 600 320 {lab=result_o7}
N 540 260 540 320 {lab=result_o6}
N 480 260 480 320 {lab=result_o5}
N 420 260 420 320 {lab=result_o4}
C {adc.sym} 10 0 0 0 {name=x1}
C {launcher.sym} -60 -200 0 0 {name=h1
descr="Build Icarus Object"
tclcommand="execute 1 sh -c \\"cd $netlist_dir; iverilog -g2012 -o adc [abs_sym_path adc.sv]\\""}
C {vsource.sym} -200 250 0 0 {name=V1 value="pulse(\{vss\}, \{vdd\}, \{0.5/f\}, 0, 0, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {vsource.sym} -260 110 0 0 {name=V2 value="pulse(\{vdd\}, \{vss\}, 0, 0, 0, \{1/f\})" savecurrent=false}
C {vsource.sym} -390 110 0 0 {name=V3 value="pulse(\{vss\}, \{vdd\}, \{2.5/f\}, 0, 0, \{1/f\}, \{12/f\})" savecurrent=false}
C {vsource.sym} -520 110 0 0 {name=V4 value="pwl(0 0.00 \{9/f\} 0.00 \{9/f\} 0.10 \{21/f\} 0.10 \{21/f\} 0.20 \{33/f\} 0.20 \{33/f\} 0.30 \{45/f\} 0.30 \{45/f\} 0.40 \{57/f\} 0.40 \{57/f\} 0.50 \{69/f\} 0.50 \{69/f\} 0.60 \{81/f\} 0.60 \{81/f\} 0.70 \{93/f\} 0.70 \{93/f\} 0.80 \{105/f\} 0.80 \{105/f\} 0.90 \{117/f\} 0.90 \{117/f\} 1.00 \{129/f\} 1.00 \{129/f\} 1.10 \{141/f\} 1.10 \{141/f\} 1.20 \{153/f\} 1.20 \{153/f\} 1.30 \{165/f\} 1.30 \{165/f\} 1.40 \{177/f\} 1.40)" savecurrent=true}
C {gnd.sym} -200 320 0 0 {name=l1 lab=GND}
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
.tran \{0.05/f\} \{184/f\}
.save all
*.write comparator_tb.raw
"}
C {simulator_commands_shown.sym} 780 120 0 0 {name=PARAMS
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=10Meg
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
C {capa.sym} 180 350 0 0 {name=C1
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 220 40 0 0 {name=C2
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 420 0 0 {name=l7 lab=GND}
C {gnd.sym} 220 110 0 0 {name=l8 lab=GND}
C {lab_wire.sym} -150 30 0 0 {name=p3 sig_type=std_logic lab=clk_digital_i}
C {lab_wire.sym} -260 10 0 0 {name=p4 sig_type=std_logic lab=rst_ni}
C {lab_wire.sym} -390 -10 0 0 {name=p5 sig_type=std_logic lab=start_i}
C {lab_wire.sym} -520 -50 0 0 {name=p8 sig_type=std_logic lab=in_ai}
C {lab_wire.sym} 300 -50 2 0 {name=p9 sig_type=std_logic lab=result_o[0..7]
}
C {lab_wire.sym} 300 -30 2 0 {name=p10 sig_type=std_logic lab=ready_o}
C {launcher.sym} -60 -250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/adc_tb.raw tran"
}
C {capa.sym} 240 350 0 0 {name=C3
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 240 420 0 0 {name=l9 lab=GND}
C {capa.sym} 300 350 0 0 {name=C4
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 300 420 0 0 {name=l10 lab=GND}
C {capa.sym} 360 350 0 0 {name=C5
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 420 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 180 260 1 0 {name=p11 sig_type=std_logic lab=result_o0
}
C {lab_wire.sym} 240 260 1 0 {name=p12 sig_type=std_logic lab=result_o1
}
C {lab_wire.sym} 300 260 1 0 {name=p13 sig_type=std_logic lab=result_o2
}
C {lab_wire.sym} 360 260 1 0 {name=p14 sig_type=std_logic lab=result_o3
}
C {simulator_commands_shown.sym} 780 290 0 0 {name=BRIDGE_MODELS
simulator=ngspice
only_toplevel=false 
value="
.model adc_buff_clk adc_bridge(in_low = 'vdd/2' in_high = 'vdd/2')

.control
pre_set auto_bridge_d_out =
+ ( \\".model auto_bridge_out bidi_bridge(direction=0 out_high=1.5 t_rise=0.1n t_fall=0.1n)\\"
+   \\"auto_bridge_out%d [ %s ] [ %s ] null auto_bridge_out\\" )
pre_set auto_bridge_d_in =
+ ( \\".model auto_bridge_in bidi_bridge(direction=1 in_low=0.5 in_high=1)\\"
+   \\"auto_bridge_in%d [ %s ] [ %s ] null auto_bridge_in\\" )
.endc
"}
C {vsource.sym} -130 320 0 0 {name=V5 value="pulse(\{vss\}, \{vdd\}, \{0.1/f\}, 0, 0, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {gnd.sym} -130 390 0 0 {name=l12 lab=GND}
C {lab_wire.sym} -100 50 0 0 {name=p15 sig_type=std_logic lab=clk_comp_i}
C {capa.sym} 420 350 0 0 {name=C6
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 420 420 0 0 {name=l13 lab=GND}
C {capa.sym} 480 350 0 0 {name=C7
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 480 420 0 0 {name=l14 lab=GND}
C {capa.sym} 540 350 0 0 {name=C8
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 540 420 0 0 {name=l15 lab=GND}
C {capa.sym} 600 350 0 0 {name=C9
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 600 420 0 0 {name=l16 lab=GND}
C {lab_wire.sym} 420 260 1 0 {name=p16 sig_type=std_logic lab=result_o4
}
C {lab_wire.sym} 480 260 1 0 {name=p17 sig_type=std_logic lab=result_o5
}
C {lab_wire.sym} 540 260 1 0 {name=p18 sig_type=std_logic lab=result_o6
}
C {lab_wire.sym} 600 260 1 0 {name=p19 sig_type=std_logic lab=result_o7
}
