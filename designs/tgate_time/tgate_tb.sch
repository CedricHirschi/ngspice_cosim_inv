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
x1=-2.2790435e-07
x2=4.8525672e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tgate_tb.raw
color="4 5 6"
node="ctrl
x1.ctrl_i
x1.ctrl_ni"}
B 2 -400 -990 400 -590 {flags=graph
y1=-0.06141635
y2=1.5212744
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.2790435e-07
x2=4.8525672e-07
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
node="out
in"}
B 2 400 -990 1200 -590 {flags=graph
y1=-0.87951388
y2=1.7879724
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.2790435e-07
x2=4.8525672e-07
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
node="V(in) V(out) -"}
B 2 400 -1390 1200 -990 {flags=graph
y1=-0.0011633885
y2=0.0015076331
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.2790435e-07
x2=4.8525672e-07
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
node="i(Vin) -1 *"}
B 2 400 -590 1200 -190 {flags=graph
y1=128.13639
y2=1308.8592
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.2790435e-07
x2=4.8525672e-07
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
node="V(out) V(in) - I(Vin) /"}
N 60 80 180 80 {lab=out}
N -620 -50 -620 -30 {lab=vdd}
N -540 -50 -540 -30 {lab=vss}
N -20 0 -20 20 {lab=vdd}
N 20 0 20 20 {lab=vss}
N -240 80 -240 120 {lab=in}
N -460 -50 -460 -30 {lab=ctrl}
N 0 140 0 180 {lab=ctrl}
N 180 80 180 120 {lab=out}
N 180 80 260 80 {lab=out}
N -240 80 -60 80 {lab=in}
N -240 180 -240 200 {lab=GND}
N 180 180 180 200 {lab=GND}
C {launcher.sym} 60 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tgate_tb.raw tran"
}
C {simulator_commands_shown.sym} 480 190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param f=80e6

.tran 10p \{30/f\}
.save all

.ic V(out)=0

* .write tgate_tb.raw
"}
C {lab_wire.sym} 260 80 0 0 {name=p2 sig_type=std_logic lab=out}
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
C {lab_wire.sym} -200 80 0 0 {name=p3 sig_type=std_logic lab=in}
C {vsource.sym} -240 150 0 0 {name=Vin value="pulse(1.5 0.0 \{2.5/f\} 1f 1f \{9/f\} \{18/f\})"
}
C {vsource.sym} -460 0 0 0 {name=Vctrl value="dc 0 ac 0 pulse(0, 1.5, \{1/f\}, 1f, 1f, \{1/f\}, \{9/f\}) "}
C {gnd.sym} -460 30 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -460 -50 0 0 {name=p13 sig_type=std_logic lab=ctrl}
C {gnd.sym} -240 200 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 200 0 0 {name=l5 lab=GND}
