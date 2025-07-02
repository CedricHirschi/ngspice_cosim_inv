v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -770 400 -370 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2816226e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out1
out2"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=1.75
mode=Line
x2=1.8349199e-05
autoload=1}
B 2 400 -770 1200 -370 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=7.2816226e-07
x2=1.8349199e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=u
logx=0
logy=1
color=4
node="in_n in_p -"
rainbow=1
y1=-10
y2=-7}
B 2 -400 -1170 400 -770 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2816226e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=clk
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=1
y2=1.75
mode=Line
x2=1.8349199e-05
autoload=1}
N 0 100 0 120 {lab=vss}
N 0 -120 0 -100 {lab=vdd}
N -500 180 -500 200 {lab=vdd}
N -420 180 -420 200 {lab=vss}
N -160 -0 -160 160 {lab=clk}
N -160 -0 -100 0 {lab=clk}
N -450 40 -100 40 {lab=in_n}
N -450 30 -450 40 {lab=in_n}
N -450 -50 -450 -30 {lab=in_p}
N -350 -40 -100 -40 {lab=in_p}
N -350 -50 -350 -40 {lab=in_p}
N -450 -50 -350 -50 {lab=in_p}
N -450 40 -450 60 {lab=in_n}
N 80 -20 120 -20 {lab=out1}
N 80 20 120 20 {lab=out2}
C {comparator.sym} 0 0 0 0 {}
C {code_shown.sym} 600 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} -500 180 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -420 180 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -500 230 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -420 230 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -500 260 0 0 {name=l3 lab=GND}
C {gnd.sym} -420 260 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 120 2 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 0 -120 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} -160 190 0 0 {name=Vclk value="dc 0 ac 0 pulse(\{vss\}, \{vdd\}, \{0.5/f\}, 1f, 1f, \{0.5/f\}, \{1/f\})"}
C {gnd.sym} -160 220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 0 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -450 0 0 0 {name=Vdiff value="pulse(1.1, -7.15e-9, \{0.75/f\}, 1f, 1f, \{1/f\}, \{2/f\})"}
C {lab_wire.sym} -200 40 0 0 {name=p4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} -200 -40 0 0 {name=p5 sig_type=std_logic lab=in_p
}
C {lab_wire.sym} 120 -20 0 0 {name=p8 sig_type=std_logic lab=out1}
C {lab_wire.sym} 120 20 0 0 {name=p9 sig_type=std_logic lab=out2}
C {vsource.sym} -450 90 0 0 {name=Vcm value=\{vdd/2\}}
C {gnd.sym} -450 120 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 600 90 0 0 {name=SWEEPS
simulator=ngspice
only_toplevel=false 
value="
.param vss=0
.param vdd=1.5
.param f=1Meg

.tran 1n 20e-6
.save all

.meas tran min1 min V(out1)
.meas tran min2 min V(out2)
"}
