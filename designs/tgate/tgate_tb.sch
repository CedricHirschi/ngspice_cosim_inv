v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -590 400 -190 {flags=graph
y1=-0.2
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.3305363e-07
x2=1.7464083e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tgate_tb.raw
color=4
node=ctrl}
B 2 -400 -990 400 -590 {flags=graph
y1=-0.2
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.3305363e-07
x2=1.7464083e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tgate_tb.raw
color="4 5"
node="out_n
in_n"}
B 2 -400 -1390 400 -990 {flags=graph
y1=-0.2
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-8.3305363e-07
x2=1.7464083e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tgate_tb.raw
color="4 5"
node="out_p
in_p"}
N 60 80 180 80 {lab=out_p}
N -620 -50 -620 -30 {lab=vdd}
N -540 -50 -540 -30 {lab=vss}
N -20 0 -20 20 {lab=vdd}
N 20 0 20 20 {lab=vss}
N -240 80 -240 120 {lab=in_p}
N 60 360 180 360 {lab=out_n}
N -20 280 -20 300 {lab=vdd}
N 20 280 20 300 {lab=vss}
N -460 -50 -460 -30 {lab=ctrl}
N 0 140 0 180 {lab=ctrl}
N 0 420 0 460 {lab=ctrl}
N 180 320 180 360 {lab=out_n}
N 180 80 180 120 {lab=out_p}
N 180 220 180 260 {lab=GND}
N 180 220 220 220 {lab=GND}
N 180 180 180 220 {lab=GND}
N 220 220 220 240 {lab=GND}
N 180 360 260 360 {lab=out_n}
N 180 80 260 80 {lab=out_p}
N -240 320 -240 360 {lab=in_n}
N -240 360 -60 360 {lab=in_n}
N -240 80 -60 80 {lab=in_p}
N -240 220 -240 260 {lab=GND}
N -280 220 -240 220 {lab=GND}
N -240 180 -240 220 {lab=GND}
N -280 220 -280 240 {lab=GND}
C {launcher.sym} 60 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tgate_tb.raw tran"
}
C {simulator_commands_shown.sym} 480 190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param f=80e6
.param N=6192
.param base_harmonic=3
.param conv_cycles=9

.param f_sampling=\{f/conv_cycles\}
.param f_nyq=\{f_sampling/2\}

.param fsignal=\{3*(f/conv_cycles)/128\}

.tran 10n \{N*conv_cycles/f\}
.save all
* .write tgate_tb.raw
"}
C {lab_wire.sym} 260 80 0 0 {name=p2 sig_type=std_logic lab=out_p}
C {code_shown.sym} 480 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 0 180 0 0 {name=p1 sig_type=std_logic lab=ctrl}
C {lab_wire.sym} -620 -50 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -540 -50 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -620 0 0 0 {name=Vdd value=1.5}
C {vsource.sym} -540 0 0 0 {name=Vss value=0
}
C {gnd.sym} -620 30 0 0 {name=l3 lab=GND}
C {gnd.sym} -540 30 0 0 {name=l4 lab=GND}
C {tgate.sym} 0 80 0 0 {name=x1
tclcommand="xschem new_schematic create \{\} tgate.sch"
}
C {lab_wire.sym} -20 0 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 0 0 0 {name=p5 sig_type=std_logic lab=vss}
C {capa.sym} 180 150 0 0 {name=C1
m=1
value=2.7p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -200 80 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {vsource.sym} -240 150 0 0 {name=Vinp value="sine(0.75 0.55 \{fsignal\} 0 0 90)"
}
C {gnd.sym} 220 240 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 260 360 0 0 {name=p8 sig_type=std_logic lab=out_n}
C {tgate.sym} 0 360 0 0 {name=x2
tclcommand="xschem new_schematic create \{\} tgate.sch"
}
C {lab_wire.sym} -20 280 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 280 0 0 {name=p11 sig_type=std_logic lab=vss}
C {capa.sym} 180 290 0 0 {name=C2
m=1
value=2.7p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -200 360 0 0 {name=p12 sig_type=std_logic lab=in_n}
C {vsource.sym} -240 290 2 0 {name=Vinn value="sine(0.75 -0.55 \{fsignal\} 0 0 90)"
}
C {vsource.sym} -460 0 0 0 {name=Vctrl value="dc 0 ac 0 pulse(0, 1.5, 0, 1f, 1f, \{1/f\}, \{conv_cycles/f\}) "}
C {gnd.sym} -460 30 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -460 -50 0 0 {name=p13 sig_type=std_logic lab=ctrl}
C {lab_wire.sym} 0 460 0 0 {name=p9 sig_type=std_logic lab=ctrl}
C {gnd.sym} -280 240 0 0 {name=l1 lab=GND}
