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
x1=-2.5239647e-06
x2=1.6526215e-06
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
x1=-2.5239647e-06
x2=1.6526215e-06
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
node="in
out"}
N -80 240 -80 280 {lab=GND}
N -20 0 100 -0 {lab=out}
N -80 60 -80 180 {lab=ctrl}
N 100 0 100 40 {lab=out}
N 100 100 100 140 {lab=GND}
N -540 -20 -540 0 {lab=vdd}
N -460 -20 -460 0 {lab=vss}
N -100 -80 -100 -60 {lab=vdd}
N -60 -80 -60 -60 {lab=vss}
N -300 0 -300 20 {lab=in}
N -300 -0 -140 0 {lab=in}
C {gnd.sym} 100 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 210 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.5, 0, 1f, 1f, \{0.5/f\}, \{1/f\}) "}
C {gnd.sym} -80 280 0 0 {name=l2 lab=GND}
C {launcher.sym} 60 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tgate_tb.raw tran"
}
C {simulator_commands_shown.sym} 260 40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param f=40e6

.tran 0.1n \{511/f\}
.save all
* .write tgate_tb.raw
"}
C {lab_wire.sym} 100 0 0 0 {name=p2 sig_type=std_logic lab=out}
C {code_shown.sym} 480 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} -80 140 0 0 {name=p1 sig_type=std_logic lab=ctrl}
C {lab_wire.sym} -540 -20 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -460 -20 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -540 30 0 0 {name=Vdd value=1.5}
C {vsource.sym} -460 30 0 0 {name=Vss value=0
}
C {gnd.sym} -540 60 0 0 {name=l3 lab=GND}
C {gnd.sym} -460 60 0 0 {name=l4 lab=GND}
C {tgate.sym} -80 0 0 0 {name=x1
tclcommand="xschem new_schematic create \{\} tgate.sch"
}
C {lab_wire.sym} -100 -80 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -60 -80 0 0 {name=p5 sig_type=std_logic lab=vss}
C {capa.sym} 100 70 0 0 {name=C1
m=1
value=8f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -300 0 0 0 {name=p3 sig_type=std_logic lab=in}
C {vsource.sym} -300 50 0 0 {name=Vin1 value="sine(0.75 0.55 234.375k)"
}
C {gnd.sym} -300 80 0 0 {name=l5 lab=GND}
