v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -20 -580 780 -180 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=4.5735155e-09
x2=2.3552644e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color=4
node="in_p in_n -"
rainbow=1
y1=-0.031687584
y2=0.018493059}
B 2 -820 -380 -20 -180 {flags=graph
y1=-1.0345675
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5735155e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=2.2831926
mode=Line
x2=2.3552644e-08
autoload=1
color="4 5 6 21"
node="x1.S
x1.P
x1.N
x1.N x1.P -"}
B 2 -820 -580 -20 -380 {flags=graph
y1=-0.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out1
out2"
color="15 14"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=1.75
mode=Line
x2=2.3552644e-08
autoload=1
x1=4.5735155e-09}
B 2 -820 -780 -20 -580 {flags=graph
y1=-1.0468158
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5735155e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
x1.S"
color="9 6"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=2.4091843
mode=Line
x2=2.3552644e-08
autoload=1}
N -420 290 -420 310 {lab=vss}
N -420 70 -420 90 {lab=vdd}
N 240 430 240 450 {lab=vdd}
N 320 430 320 450 {lab=vss}
N -580 190 -520 190 {lab=clk}
N -340 170 -260 170 {lab=out1}
N -340 210 -260 210 {lab=out2}
N -980 190 -980 230 {lab=#net1}
N -980 190 -900 190 {lab=#net1}
N -900 180 -900 190 {lab=#net1}
N -900 190 -900 200 {lab=#net1}
N -900 260 -900 280 {lab=in_n}
N -900 280 -640 280 {lab=in_n}
N -640 230 -640 280 {lab=in_n}
N -640 230 -520 230 {lab=in_n}
N -640 150 -520 150 {lab=in_p}
N -640 100 -640 150 {lab=in_p}
N -900 100 -640 100 {lab=in_p}
N -900 100 -900 120 {lab=in_p}
N -580 190 -580 350 {lab=clk}
C {comparator.sym} -420 190 0 0 {name=x1}
C {code_shown.sym} 180 20 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} 240 430 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 320 430 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} 240 480 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} 320 480 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} 240 510 0 0 {name=l3 lab=GND}
C {gnd.sym} 320 510 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -420 310 2 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} -420 70 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} -580 380 0 0 {name=Vclk value="pulse(\{vss\}, \{vdd\}, \{0.1/f\}, 0.2n, 0.2n, \{0.5/f\}, \{1/f\})"}
C {gnd.sym} -580 410 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -540 190 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -430 -150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -900 150 0 0 {name=Vdiff value="pulse(\{vhigh/2\}, \{vlow/2\}, \{0.8/f\}, 1f, 1f, \{1/f\}, \{2/f\})"}
C {lab_wire.sym} -600 230 0 0 {name=p4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} -600 150 0 0 {name=p5 sig_type=std_logic lab=in_p
}
C {lab_wire.sym} -260 170 0 0 {name=p8 sig_type=std_logic lab=out1}
C {lab_wire.sym} -260 210 0 0 {name=p9 sig_type=std_logic lab=out2}
C {vsource.sym} -980 260 0 0 {name=Vcm value=\{vdd/2\}}
C {gnd.sym} -980 290 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 180 160 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param vss=0
.param vdd=1.5
.param f=100Meg

.param vhigh=1.5m
.param vlow=-1.5m

.control
  save all
  tran 10p 49n
  write comparator_tb.raw
.endc
"}
C {vsource.sym} -900 230 0 0 {name=Vdiff1 value="pulse(\{vhigh/2\}, \{vlow/2\}, \{0.8/f\}, 1f, 1f, \{1/f\}, \{2/f\})"}
C {title-3.sym} -1240 830 0 0 {name=l5 author="Cedric Hirschi" rev=1.0 lock=false}
