v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -590 400 -190 {flags=graph
y1=0.74959604
y2=0.7529076
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00077195891
x2=0.0023227974
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
node=out}
B 2 -400 -990 400 -590 {flags=graph
y1=-0.95483582
y2=2.3270317
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00077195891
x2=0.0023227974
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
node=in}
N 60 80 180 80 {lab=out}
N -620 -50 -620 -30 {lab=vdd}
N -540 -50 -540 -30 {lab=vss}
N -20 0 -20 20 {lab=vdd}
N 20 0 20 20 {lab=vss}
N -240 80 -240 120 {lab=in}
N 180 80 180 120 {lab=out}
N 180 80 260 80 {lab=out}
N -240 80 -60 80 {lab=in}
N -240 180 -240 200 {lab=GND}
N 180 180 180 200 {lab=GND}
N -0 140 0 160 {lab=GND}
C {launcher.sym} 60 -130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tgate_tb.raw tran"
}
C {simulator_commands_shown.sym} 480 190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param f=80e6

.meas tran pp pp V(out)

.tran 100n \{80e6/f\}
.save all

.ic V(out)=0.75

* .write tgate_tb.raw
"}
C {lab_wire.sym} 260 80 0 0 {name=p2 sig_type=std_logic lab=out}
C {code_shown.sym} 480 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} -620 -50 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -540 -50 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -620 0 0 0 {name=Vdd value=1.5}
C {vsource.sym} -540 0 0 0 {name=Vss value=0
}
C {gnd.sym} -620 30 0 0 {name=l3 lab=GND}
C {gnd.sym} -540 30 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -20 0 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 0 0 0 {name=p5 sig_type=std_logic lab=vss}
C {capa.sym} 180 150 0 0 {name=C1
m=1
value=2.7p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -200 80 0 0 {name=p3 sig_type=std_logic lab=in}
C {vsource.sym} -240 150 0 0 {name=Vin value="sine(0.75 0.75 \{f/18\})"
}
C {gnd.sym} -240 200 0 0 {name=l1 lab=GND}
C {gnd.sym} 180 200 0 0 {name=l5 lab=GND}
C {/workspaces/ngspice_cosim_inv/designs/tgate/tgate.sym} 0 80 0 0 {name=x1}
C {gnd.sym} 0 160 0 0 {name=l2 lab=GND}
