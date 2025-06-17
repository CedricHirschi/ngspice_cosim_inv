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
x1=-1.8920136e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
out"
color="4 5"
dataset=-1
unitx=n
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw
digital=0
rainbow=0
y2=1.75
mode=Line
x2=3.4544487e-07}
B 2 -400 -1170 400 -770 {flags=graph
y1=-15e-3
y2=15e-3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.8920136e-09
x2=3.4544487e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_p in_n -"
color=9
dataset=-1
unitx=n
logx=0
logy=0
}
B 2 400 -770 1200 -370 {flags=graph
y1=-0.5e-04
y2=3e-4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.8920136e-09
x2=3.4544487e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vdd) -1 *"
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
N 0 100 0 120 {lab=vss}
N 0 -120 0 -100 {lab=vdd}
N -500 180 -500 200 {lab=vdd}
N -420 180 -420 200 {lab=vss}
N -160 -0 -160 160 {lab=clk}
N -160 -0 -100 0 {lab=clk}
N 80 -20 160 -20 {lab=out1}
N 440 0 440 40 {lab=out}
N 440 0 480 0 {lab=out}
N 240 -20 280 -20 {lab=#net1}
N 80 20 280 20 {lab=out2}
N 400 0 440 0 {lab=out}
N 440 100 440 120 {lab=GND}
N -450 40 -100 40 {lab=in_n}
N -450 30 -450 40 {lab=in_n}
N -450 -40 -450 -30 {lab=in_p}
N -450 -40 -100 -40 {lab=in_p}
C {comparator.sym} 0 0 0 0 {}
C {code_shown.sym} 600 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 600 -30 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran \{5e-4/f\} \{30/f\}
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
C {vsource.sym} -160 190 0 0 {name=Vclk value="dc 0 ac 0 pulse(\{vss\}, \{vdd\}, \{0.5/f\}, \{0.1/f\}, \{0.1/f\}, \{0.4/f\}, \{1/f\})"}
C {gnd.sym} -160 220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 0 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -450 0 0 0 {name=Vin value="dc 0 ac 0 pulse(-10m, 10m, 0, \{15/f\}, \{15/f\}, 1f, \{30/f\})"}
C {lab_wire.sym} -200 40 0 0 {name=p4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} -200 -40 0 0 {name=p5 sig_type=std_logic lab=in_p
}
C {lab_wire.sym} 120 -20 0 0 {name=p8 sig_type=std_logic lab=out1}
C {lab_wire.sym} 120 20 0 0 {name=p9 sig_type=std_logic lab=out2}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 200 -20 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} 340 0 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
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
