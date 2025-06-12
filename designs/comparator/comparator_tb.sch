v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -770 400 -370 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.1698788e-26
x2=8e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
in
ref
out1
out2"
color="4 5 6 7 8"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comparator_tb.raw}
N 0 100 0 120 {lab=vss}
N 0 -120 0 -100 {lab=vdd}
N -500 180 -500 200 {lab=vdd}
N -420 180 -420 200 {lab=vss}
N -160 -0 -160 160 {lab=clk}
N -160 -0 -100 0 {lab=clk}
N -240 40 -240 60 {lab=ref}
N -240 40 -100 40 {lab=ref}
N -540 -40 -540 60 {lab=in}
N -540 -40 -100 -40 {lab=in}
N 120 -20 280 -20 {lab=out1}
N 200 20 280 20 {lab=out2}
N 200 20 200 60 {lab=out2}
N 80 20 200 20 {lab=out2}
N 120 -20 120 60 {lab=out1}
N 80 -20 120 -20 {lab=out1}
N 120 120 120 140 {lab=GND}
N 200 110 200 140 {lab=GND}
C {comparator.sym} 0 0 0 0 {}
C {code_shown.sym} 460 90 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 460 310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1p 8n
.save all
* .write comparator_tb.raw
"}
C {lab_wire.sym} -500 180 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -420 180 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -500 230 0 0 {name=Vdd value=1.8}
C {vsource.sym} -420 230 0 0 {name=Vss value=0
}
C {gnd.sym} -500 260 0 0 {name=l3 lab=GND}
C {gnd.sym} -420 260 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 120 2 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 0 -120 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {vsource.sym} -160 190 0 0 {name=Vclk value="dc 0 ac 0 pulse(0, 1.8, 1n, 100p, 100p, 1n, 2n ) "}
C {gnd.sym} -160 220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 0 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {gnd.sym} -240 120 0 0 {name=l2 lab=GND}
C {vsource.sym} -540 90 0 0 {name=Vin value="dc 0 ac 0 pulse(0, 1.8, 0, 8n, 8n, 0, 16n ) "}
C {gnd.sym} -540 120 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -200 40 0 0 {name=p4 sig_type=std_logic lab=ref}
C {lab_wire.sym} -200 -40 0 0 {name=p5 sig_type=std_logic lab=in}
C {capa.sym} 120 90 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 200 90 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 120 140 0 0 {name=l6 lab=GND}
C {gnd.sym} 200 140 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 280 -20 0 0 {name=p8 sig_type=std_logic lab=out1}
C {lab_wire.sym} 280 20 0 0 {name=p9 sig_type=std_logic lab=out2}
C {vsource.sym} -240 90 0 0 {name=Vref1 value="dc 1"}
