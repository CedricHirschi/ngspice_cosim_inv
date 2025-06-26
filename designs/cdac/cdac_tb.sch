v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -680 400 -280 {flags=graph
y1=0
y2=2
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=7.4637405e-08
x2=7.7523671e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ctrl0
ctrl1
ctrl2
ctrl3"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 -400 -1080 400 -680 {flags=graph
y1=-0.5
y2=1.5
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=7.4637405e-08
x2=7.7523671e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="sw
in
vss"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 -400 -1470 400 -1070 {flags=graph
y1=0
y2=2
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=7.4637405e-08
x2=7.7523671e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.l1
x1.l2
x1.l3
x1.l4"
color="4 5 6 10"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
N -300 -40 -300 -0 {lab=#net1}
N -300 -40 -260 -40 {lab=#net1}
N -300 60 -300 100 {lab=#net2}
N -360 50 -360 120 {lab=GND}
N -360 50 -340 50 {lab=GND}
N -460 30 -460 50 {lab=sw}
N -460 30 -340 30 {lab=sw}
N -460 120 -460 130 {lab=GND}
N -780 340 -780 360 {lab=vdd}
N -700 340 -700 360 {lab=vss}
N -80 0 -40 -0 {lab=CTRL[0..3]}
N -0 40 0 80 {lab=vss}
N 800 800 800 840 {lab=GND}
N 880 840 920 840 {lab=GND}
N 920 800 920 840 {lab=GND}
N 880 800 880 840 {lab=GND}
N 860 840 880 840 {lab=GND}
N 840 800 840 840 {lab=GND}
N 800 840 840 840 {lab=GND}
N 860 840 860 880 {lab=GND}
N 840 840 860 840 {lab=GND}
N 800 700 800 740 {lab=CTRL0}
N 840 700 840 740 {lab=CTRL1}
N 880 700 880 740 {lab=CTRL2}
N 920 700 920 740 {lab=CTRL3}
N -300 160 -300 200 {lab=GND}
N -460 120 -360 120 {lab=GND}
N -460 110 -460 120 {lab=GND}
N -80 -40 -80 -20 {lab=in}
N -200 -40 -80 -40 {lab=in}
N -0 -100 -0 -60 {lab=vdd}
N -80 -20 -40 -20 {lab=in}
C {cdac.sym} 0 -10 0 0 {name=x1}
C {switch_ngspice.sym} -300 30 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {res.sym} -230 -40 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {vsource.sym} -460 80 0 0 {name=V1 value="pulse(\{vss\}, \{vdd\}, 0, 0, 0, \{1/f\}, \{8/f\})" savecurrent=false}
C {gnd.sym} -460 130 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -780 340 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -700 340 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -780 390 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -700 390 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -780 420 0 0 {name=l3 lab=GND}
C {gnd.sym} -700 420 0 0 {name=l4 lab=GND}
C {code_shown.sym} 670 -60 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 670 80 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran \{0.005/f\} \{8/f\}
.save all
*.write comparator_tb.raw
"}
C {simulator_commands_shown.sym} 670 240 0 0 {name=PARAMS
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=80Meg

.ic V(in)=0
"}
C {lab_pin.sym} -80 0 0 0 {name=p1 sig_type=std_logic lab=CTRL[0..3]}
C {lab_wire.sym} 0 80 0 0 {name=p2 sig_type=std_logic lab=vss}
C {vsource.sym} 800 770 0 0 {name=V2 value="pulse(\{vss\}, \{vdd\}, \{3/f\}, 1f, 1f, \{5/f\}, \{8/f\})" savecurrent=false}
C {vsource.sym} 840 770 0 0 {name=V3 value="pulse(\{vss\}, \{vdd\}, \{4/f\}, 1f, 1f, \{4/f\}, \{8/f\})" savecurrent=false}
C {vsource.sym} 880 770 0 0 {name=V4 value="pulse(\{vss\}, \{vdd\}, \{5/f\}, 1f, 1f, \{3/f\}, \{8/f\})" savecurrent=false}
C {vsource.sym} 920 770 0 0 {name=V5 value="pulse(\{vss\}, \{vdd\}, \{6/f\}, 1f, 1f, \{2/f\}, \{6/f\})" savecurrent=false}
C {gnd.sym} 860 880 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 800 700 1 0 {name=p3 sig_type=std_logic lab=CTRL0}
C {lab_pin.sym} 840 700 1 0 {name=p4 sig_type=std_logic lab=CTRL1}
C {lab_pin.sym} 880 700 1 0 {name=p5 sig_type=std_logic lab=CTRL2}
C {lab_pin.sym} 920 700 1 0 {name=p8 sig_type=std_logic lab=CTRL3}
C {lab_pin.sym} -150 -40 1 0 {name=p9 sig_type=std_logic lab=in}
C {vsource.sym} -300 130 0 0 {name=V6 value=0.1 savecurrent=false}
C {gnd.sym} -300 200 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -410 30 1 0 {name=p10 sig_type=std_logic lab=sw}
C {launcher.sym} -20 -250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cdac_tb.raw tran"
}
C {lab_wire.sym} 0 -100 0 0 {name=p11 sig_type=std_logic lab=vdd}
