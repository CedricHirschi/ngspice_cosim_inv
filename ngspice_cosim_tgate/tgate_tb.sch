v {xschem version=3.4.8RC file_version=1.2}
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
x1=0e-06
x2=8e-10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="a
b"
rawfile=$netlist_dir/tgate_tb.raw}
N 100 100 100 140 {lab=GND}
N 100 0 100 40 {lab=B}
N -220 100 -220 140 {lab=GND}
N -220 0 -220 40 {lab=A}
N -220 0 -100 0 {lab=A}
N -20 0 100 -0 {lab=B}
C {gnd.sym} 100 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -220 70 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.8, 0, 10p, 10p, 100p, 200p ) "}
C {gnd.sym} -220 140 0 0 {name=l2 lab=GND}
C {launcher.sym} 60 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tgate_tb.raw tran"
}
C {simulator_commands_shown.sym} 260 40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
vvdd vdd 0 dc 1.8
vvss vss 0 0

.tran 1p 800p
.save all
* .write tgate_tb.raw
"}
C {lab_wire.sym} 100 0 0 0 {name=p2 sig_type=std_logic lab=B}
C {code_shown.sym} 480 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -60 0 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_}
C {lab_wire.sym} -220 0 0 0 {name=p1 sig_type=std_logic lab=A}
C {capa.sym} 100 70 0 0 {name=C1
m=1
value=4f
footprint=1206
device="ceramic capacitor"}
