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
x1=2.0134971e-08
x2=2.2580412e-08
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
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0134971e-08
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
y2=1.75
mode=Line
x2=2.2580412e-08
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
out2
x1.N x1.P -"
color="4 5 21"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=1.75
mode=Line
x2=2.2580412e-08
autoload=1
x1=2.0134971e-08}
B 2 -820 -780 -20 -580 {flags=graph
y1=-0.21786339
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0134971e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
x1.S
vss"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=1.5516087
mode=Line
x2=2.2580412e-08
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
N -760 400 -760 420 {lab=vdd}
N -760 450 -700 450 {lab=vdd}
N -700 400 -700 450 {lab=vdd}
N -760 400 -700 400 {lab=vdd}
N -760 380 -760 400 {lab=vdd}
N -760 550 -700 550 {lab=GND}
N -700 550 -700 600 {lab=GND}
N -760 600 -700 600 {lab=GND}
N -760 600 -760 620 {lab=GND}
N -760 580 -760 600 {lab=GND}
N -820 450 -800 450 {lab=#net2}
N -820 500 -820 550 {lab=#net2}
N -820 550 -800 550 {lab=#net2}
N -760 500 -760 520 {lab=#net3}
N -600 400 -600 420 {lab=vdd}
N -600 450 -540 450 {lab=vdd}
N -540 400 -540 450 {lab=vdd}
N -600 400 -540 400 {lab=vdd}
N -600 380 -600 400 {lab=vdd}
N -600 550 -540 550 {lab=GND}
N -540 550 -540 600 {lab=GND}
N -600 600 -540 600 {lab=GND}
N -600 600 -600 620 {lab=GND}
N -600 580 -600 600 {lab=GND}
N -660 450 -640 450 {lab=#net3}
N -660 500 -660 550 {lab=#net3}
N -660 550 -640 550 {lab=#net3}
N -600 500 -600 520 {lab=clk}
N -580 340 -460 340 {lab=clk}
N -580 190 -580 340 {lab=clk}
N -460 340 -460 500 {lab=clk}
N -600 500 -460 500 {lab=clk}
N -600 480 -600 500 {lab=clk}
N -760 500 -660 500 {lab=#net3}
N -760 480 -760 500 {lab=#net3}
N -660 450 -660 500 {lab=#net3}
N -960 500 -820 500 {lab=#net2}
N -820 450 -820 500 {lab=#net2}
N -960 500 -960 720 {lab=#net2}
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
C {vsource.sym} -960 750 0 0 {name=Vclk value="pulse(\{vss\}, \{vdd\}, \{0.1/f\}, 0.2n, 0.2n, \{0.5/f\}, \{1/f\})"}
C {gnd.sym} -960 780 0 0 {name=l1 lab=GND}
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
C {sg13g2_pr/sg13_lv_nmos.sym} -780 550 0 0 {name=M9
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -780 450 0 0 {name=M2
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -760 620 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -760 380 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {gnd.sym} -600 620 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -600 380 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} -620 550 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -620 450 0 0 {name=M3
l=0.13u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
