v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -700 400 -300 {flags=graph
y1=0
y2=1.5
ypos1=-0.10519639
ypos2=1.5116291
divy=5
subdivy=1
unity=1
x1=-2.3180321e-08
x2=1.2209116e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="rst
clk_digital
clk_comp
start
x1.sample
ready_o
result_o;result_o0,result_o1,result_o2,result_o3,result_o4,result_o5,result_o6,result_o7"
color="4 5 6 7 8 9 10"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/adc_tb.raw
digital=1}
B 2 -400 -1100 400 -700 {flags=graph
y1=0.20021648
y2=1.4290165
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.3180321e-08
x2=1.2209116e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=0
color="14 7 12"
node="vdd 2 /
x1.pos
x1.neg"}
B 2 -400 -1500 400 -1100 {flags=graph
y1=0
y2=1.5
ypos1=-0.48019282
ypos2=1.0635002
divy=5
subdivy=1
unity=1
x1=-2.3180321e-08
x2=1.2209116e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5"
node="x1.dac_p;x1.dac_p0,x1.dac_p1,x1.dac_p2,x1.dac_p3,x1.dac_p4,x1.dac_p5,x1.dac_p6,x1.dac_p7
x1.dac_n;x1.dac_n0,x1.dac_n1,x1.dac_n2,x1.dac_n3,x1.dac_n4,x1.dac_n5,x1.dac_n6,x1.dac_n7"}
B 2 400 -1500 1200 -1100 {flags=graph
y1=0
y2=1.5
ypos1=-0.48019282
ypos2=1.0635002
divy=5
subdivy=1
unity=1
x1=-2.3180321e-08
x2=1.2209116e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
}
N -560 870 -560 890 {lab=VDD}
N -520 870 -520 890 {lab=VSS}
N 230 -10 310 -10 {lab=ready_o}
N 180 380 180 420 {lab=GND}
N 230 110 230 150 {lab=GND}
N 240 380 240 420 {lab=GND}
N 300 380 300 420 {lab=GND}
N 360 380 360 420 {lab=GND}
N 120 10 310 10 {lab=result_o[0..7]}
N 360 260 360 320 {lab=result_o3}
N 300 260 300 320 {lab=result_o2}
N 240 260 240 320 {lab=result_o1}
N 180 260 180 320 {lab=result_o0}
N 420 380 420 420 {lab=GND}
N 480 380 480 420 {lab=GND}
N 540 380 540 420 {lab=GND}
N 600 380 600 420 {lab=GND}
N 600 260 600 320 {lab=result_o7}
N 540 260 540 320 {lab=result_o6}
N 480 260 480 320 {lab=result_o5}
N 420 260 420 320 {lab=result_o4}
N 0 110 0 130 {lab=VSS}
N 0 -130 0 -110 {lab=VDD}
N -520 650 -520 670 {lab=clk_comp}
N -560 650 -560 670 {lab=clk_digital}
N -540 260 -540 280 {lab=rst}
N -580 260 -580 280 {lab=start}
N -580 60 -580 80 {lab=pos}
N -540 60 -540 80 {lab=neg}
N 230 -10 230 50 {lab=ready_o}
N 120 -10 230 -10 {lab=ready_o}
N -160 -70 -120 -70 {lab=pos}
N -160 -50 -120 -50 {lab=neg}
N -160 -10 -120 -10 {lab=start}
N -160 10 -120 10 {lab=rst}
N -160 50 -120 50 {lab=clk_digital}
N -160 70 -120 70 {lab=clk_comp}
C {adc.sym} 0 0 0 0 {name=x1}
C {launcher.sym} -60 -200 0 0 {name=h1
descr="Build Icarus Object"
tclcommand="execute 1 sh -c \\"cd $netlist_dir; iverilog -g2012 -o adc [abs_sym_path ../rtl/adc.sv]\\""}
C {vsource.sym} -560 700 0 1 {name=Vclkdig value="pulse(\{vss\}, \{vdd\}, \{0.5/f\}, 0, 0, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {vsource.sym} -540 310 0 0 {name=Vrst value="pulse(\{vdd\}, \{vss\}, 0, 0, 0, \{1/f\})" savecurrent=false}
C {vsource.sym} -580 310 0 1 {name=Vstart value="pulse(\{vss\}, \{vdd\}, \{2.4/f\}, 0, 0, \{1/f\}, \{12/f\})" savecurrent=false}
C {vsource.sym} -580 110 0 1 {name=Vpos value=0.8 savecurrent=true}
C {gnd.sym} -560 730 0 1 {name=l1 lab=GND}
C {gnd.sym} -540 340 0 0 {name=l2 lab=GND}
C {gnd.sym} -580 340 0 1 {name=l3 lab=GND}
C {gnd.sym} -540 140 0 0 {name=l4 lab=GND}
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
.tran 100p \{14/f\}
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
C {vsource.sym} -560 920 0 1 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -520 920 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -560 950 0 1 {name=l5 lab=GND}
C {gnd.sym} -520 950 0 0 {name=l6 lab=GND}
C {capa.sym} 180 350 0 0 {name=C1
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 230 80 0 0 {name=C2
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 420 0 0 {name=l7 lab=GND}
C {gnd.sym} 230 150 0 0 {name=l8 lab=GND}
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
C {vsource.sym} -520 700 0 0 {name=Vclkcomp value="pulse(\{vss\}, \{vdd\}, \{0.1/f\}, 0, 0, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {gnd.sym} -520 730 0 0 {name=l12 lab=GND}
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
C {lab_pin.sym} 0 130 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -130 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 650 1 0 {name=p22 sig_type=std_logic lab=clk_comp}
C {lab_pin.sym} -560 650 3 1 {name=p23 sig_type=std_logic lab=clk_digital}
C {lab_pin.sym} -560 870 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 870 1 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -540 260 1 0 {name=p1 sig_type=std_logic lab=rst}
C {lab_pin.sym} -580 260 3 1 {name=p2 sig_type=std_logic lab=start}
C {lab_pin.sym} -580 60 1 0 {name=p3 sig_type=std_logic lab=pos}
C {vsource.sym} -540 110 0 0 {name=Vneg value=0.7 savecurrent=true}
C {gnd.sym} -580 140 0 1 {name=Vneg1 lab=GND}
C {lab_pin.sym} -540 60 3 1 {name=Vneg2 sig_type=std_logic lab=neg}
C {lab_pin.sym} 310 10 0 1 {name=Vneg3 sig_type=std_logic lab=result_o[0..7]}
C {lab_pin.sym} 310 -10 0 1 {name=Vneg4 sig_type=std_logic lab=ready_o}
C {lab_pin.sym} -160 -70 0 0 {name=p4 sig_type=std_logic lab=pos}
C {lab_pin.sym} -160 -50 2 1 {name=Vneg5 sig_type=std_logic lab=neg}
C {lab_pin.sym} -160 -10 2 1 {name=p5 sig_type=std_logic lab=start}
C {lab_pin.sym} -160 10 0 0 {name=p8 sig_type=std_logic lab=rst}
C {lab_pin.sym} -160 50 2 1 {name=p9 sig_type=std_logic lab=clk_digital}
C {lab_pin.sym} -160 70 0 0 {name=p10 sig_type=std_logic lab=clk_comp}
