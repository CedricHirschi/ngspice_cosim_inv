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
x1=-2.133261e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
clk_n
out"
color="4 5 6"
dataset=-1
unitx=n
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=0
y2=1.75
mode=Line
x2=1.0971694e-07}
B 2 -400 -1170 400 -770 {flags=graph
y1=-1.75
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.133261e-08
x2=1.0971694e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=n
logx=0
logy=0
y2=1.75
color="4 5"
node="out_p out_n -
pos neg -"}
B 2 400 -770 1200 -370 {flags=graph
y1=-0.25
y2=1.75
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.133261e-08
x2=1.0971694e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.pos_buf
x1.neg_buf"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 400 -1170 1200 -770 {flags=graph
y1=1.49
y2=1.51
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.133261e-08
x2=1.0971694e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_p
vdd"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 0 100 0 120 {lab=vss}
N 0 -120 0 -100 {lab=vdd}
N -500 180 -500 200 {lab=vdd}
N -420 180 -420 200 {lab=vss}
N -160 -10 -100 -10 {lab=clk}
N 440 0 440 40 {lab=out}
N 440 0 480 0 {lab=out}
N 400 0 440 0 {lab=out}
N 440 100 440 120 {lab=GND}
N -520 -40 -520 -20 {lab=in_p}
N -520 -40 -100 -40 {lab=in_p}
N -160 -10 -160 160 {lab=clk}
N -100 110 -100 130 {lab=clk_n}
N -140 110 -100 110 {lab=clk_n}
N -140 10 -140 110 {lab=clk_n}
N -140 10 -100 10 {lab=clk_n}
N -200 40 -100 40 {lab=vdd}
N 80 20 160 20 {lab=out_n}
N 80 -20 160 -20 {lab=out_p}
N 240 -20 280 -20 {lab=pos}
N 240 20 280 20 {lab=neg}
C {comparator.sym} 0 0 0 0 {}
C {code_shown.sym} 600 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 600 -30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran \{0.001/f\} \{8/f\}
.save all
* .write comparator_tb.raw
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
C {lab_wire.sym} -120 -10 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -520 10 0 0 {name=Vin value="dc 0 ac 0 pulse(1.495, 1.505, 1f, \{4/f\}, \{4/f\}, 1f, \{8/f\})"}
C {lab_wire.sym} -200 -40 0 0 {name=p5 sig_type=std_logic lab=in_p
}
C {lab_wire.sym} 120 -20 0 0 {name=p8 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 120 20 0 0 {name=p9 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 480 0 0 0 {name=p10 sig_type=std_logic lab=out}
C {capa.sym} 440 70 0 0 {name=C3
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 440 120 0 0 {name=l8 lab=GND}
C {simulator_commands_shown.sym} 600 130 0 0 {name=PARAMS
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=80Meg
"}
C {vsource.sym} -100 160 0 0 {name=Vclkn value="dc 0 ac 0 pulse(\{vdd\}, \{vss\}, \{0.5/f\}, 1f, 1f, \{0.5/f\}, \{1/f\})"}
C {gnd.sym} -100 190 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -110 10 0 0 {name=p11 sig_type=std_logic lab=clk_n}
C {lab_wire.sym} -200 40 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} -520 40 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 280 -20 0 0 {name=p12 sig_type=std_logic lab=pos}
C {lab_wire.sym} 280 20 0 0 {name=p13 sig_type=std_logic lab=neg}
