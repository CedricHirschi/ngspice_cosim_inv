v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -680 400 -280 {flags=graph
y1=0
y2=1.5
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=-5.2950531e-08
x2=2.489711e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
digital=1
color="4 5 14"
node="p;p0,p1,p2,p3,p4,p5,p6,p7
n;n0,n1,n2,n3,n4,n5,n6,n7
sw"}
B 2 -400 -1080 400 -680 {flags=graph
y1=-0.25
y2=1.75
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=-5.2950531e-08
x2=2.489711e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd 2 /
pos
neg"
color="14 7 12"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
B 2 400 -680 1200 -280 {flags=graph
y1=0.55893979
y2=0.89448416
ypos1=-0.43532331
ypos2=1.5646769
divy=5
subdivy=1
unity=1
x1=-5.2950531e-08
x2=2.489711e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vdd 2 /
pos neg + 2 /"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
digital=0}
N -510 -200 -510 -160 {lab=#net1}
N -510 -200 -470 -200 {lab=#net1}
N -510 -100 -510 -60 {lab=#net2}
N -570 -110 -570 190 {lab=GND}
N -570 -110 -550 -110 {lab=GND}
N -760 460 -760 480 {lab=vdd}
N -680 460 -680 480 {lab=vss}
N 0 60 0 100 {lab=vss}
N -140 420 -140 460 {lab=GND}
N -60 460 -20 460 {lab=GND}
N -20 420 -20 460 {lab=GND}
N -60 420 -60 460 {lab=GND}
N -100 420 -100 460 {lab=GND}
N -140 460 -100 460 {lab=GND}
N -100 460 -60 460 {lab=GND}
N -140 320 -140 360 {lab=p0}
N -100 320 -100 360 {lab=p1}
N -60 320 -60 360 {lab=p2}
N -20 320 -20 360 {lab=p3}
N -510 0 -510 40 {lab=GND}
N 0 -100 0 -60 {lab=vdd}
N -410 -200 -370 -200 {lab=pos}
N -510 100 -510 140 {lab=#net3}
N -510 100 -470 100 {lab=#net3}
N -510 200 -510 240 {lab=#net4}
N -570 190 -570 260 {lab=GND}
N -570 190 -550 190 {lab=GND}
N -670 170 -670 190 {lab=sw}
N -670 170 -550 170 {lab=sw}
N -670 260 -670 270 {lab=GND}
N -510 300 -510 340 {lab=GND}
N -670 260 -570 260 {lab=GND}
N -670 250 -670 260 {lab=GND}
N -410 100 -370 100 {lab=neg}
N -670 -130 -670 170 {lab=sw}
N -670 -130 -540 -130 {lab=sw}
N -120 -20 -80 -20 {lab=pos}
N -120 20 -80 20 {lab=neg}
N 80 -20 120 -20 {lab=p[0..7]}
N 80 20 120 20 {lab=n[0..7]}
N 20 420 20 460 {lab=GND}
N 100 460 140 460 {lab=GND}
N 140 420 140 460 {lab=GND}
N 100 420 100 460 {lab=GND}
N 60 420 60 460 {lab=GND}
N 20 460 60 460 {lab=GND}
N 0 460 0 500 {lab=GND}
N 60 460 100 460 {lab=GND}
N 20 320 20 360 {lab=p4}
N 60 320 60 360 {lab=p5}
N 100 320 100 360 {lab=p6}
N 140 320 140 360 {lab=p7}
N 0 460 20 460 {lab=GND}
N -20 460 0 460 {lab=GND}
N -140 700 -140 740 {lab=GND}
N -60 740 -20 740 {lab=GND}
N -20 700 -20 740 {lab=GND}
N -60 700 -60 740 {lab=GND}
N -100 700 -100 740 {lab=GND}
N -140 740 -100 740 {lab=GND}
N -100 740 -60 740 {lab=GND}
N -140 600 -140 640 {lab=n0}
N -100 600 -100 640 {lab=n1}
N -60 600 -60 640 {lab=n2}
N -20 600 -20 640 {lab=n3}
N 20 700 20 740 {lab=GND}
N 100 740 140 740 {lab=GND}
N 140 700 140 740 {lab=GND}
N 100 700 100 740 {lab=GND}
N 60 700 60 740 {lab=GND}
N 20 740 60 740 {lab=GND}
N 0 740 0 780 {lab=GND}
N 60 740 100 740 {lab=GND}
N 20 600 20 640 {lab=n4}
N 60 600 60 640 {lab=n5}
N 100 600 100 640 {lab=n6}
N 140 600 140 640 {lab=n7}
N 0 740 20 740 {lab=GND}
N -20 740 0 740 {lab=GND}
C {cdac.sym} 0 0 0 0 {name=x1}
C {switch_ngspice.sym} -510 -130 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {res.sym} -440 -200 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -760 460 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -680 460 0 0 {name=p7 sig_type=std_logic lab=vss}
C {vsource.sym} -760 510 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -680 510 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -760 540 0 0 {name=l3 lab=GND}
C {gnd.sym} -680 540 0 0 {name=l4 lab=GND}
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
.tran 100p \{9/f\}
.save all
*.write comparator_tb.raw
"}
C {simulator_commands_shown.sym} 670 240 0 0 {name=PARAMS
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=80Meg
"}
C {lab_wire.sym} 0 100 0 0 {name=p2 sig_type=std_logic lab=vss}
C {vsource.sym} -140 390 0 0 {name=V2 value="pulse(\{vss\}, \{vdd\}, \{2/f\}, 1f, 1f, \{8/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -100 390 0 0 {name=V3 value="pulse(\{vss\}, \{vdd\}, \{3/f\}, 1f, 1f, \{7/f\}, \{9/f\})" savecurrent=false}
C {lab_pin.sym} -140 320 1 0 {name=p3 sig_type=std_logic lab=p0}
C {lab_pin.sym} -100 320 1 0 {name=p4 sig_type=std_logic lab=p1}
C {lab_pin.sym} -60 320 1 0 {name=p5 sig_type=std_logic lab=p2}
C {lab_pin.sym} -20 320 1 0 {name=p8 sig_type=std_logic lab=p3}
C {lab_pin.sym} -370 -200 2 0 {name=p9 sig_type=std_logic lab=pos}
C {vsource.sym} -510 -30 0 0 {name=V6 value=1.25 savecurrent=false}
C {gnd.sym} -510 40 0 0 {name=l6 lab=GND}
C {launcher.sym} -20 -250 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/cdac_tb.raw tran"
}
C {lab_wire.sym} 0 -100 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {switch_ngspice.sym} -510 170 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0.01
+ RON=0.01 ROFF=10G "}
C {res.sym} -440 100 1 0 {name=R2
value=500
footprint=1206
device=resistor
m=1}
C {vsource.sym} -670 220 0 0 {name=V7 value="pulse(\{vss\}, \{vdd\}, 0, 0, 0, \{1/f\}, \{9/f\})" savecurrent=false}
C {gnd.sym} -670 270 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -370 100 2 0 {name=p1 sig_type=std_logic lab=neg}
C {vsource.sym} -510 270 0 0 {name=V8 value=0.25 savecurrent=false}
C {gnd.sym} -510 340 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -620 170 1 0 {name=p12 sig_type=std_logic lab=sw}
C {lab_pin.sym} -120 20 0 0 {name=p10 sig_type=std_logic lab=neg}
C {lab_pin.sym} -120 -20 0 0 {name=p13 sig_type=std_logic lab=pos}
C {gnd.sym} 0 500 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 20 320 1 0 {name=p14 sig_type=std_logic lab=p4}
C {lab_pin.sym} 60 320 1 0 {name=p15 sig_type=std_logic lab=p5}
C {lab_pin.sym} 100 320 1 0 {name=p16 sig_type=std_logic lab=p6}
C {lab_pin.sym} 140 320 1 0 {name=p17 sig_type=std_logic lab=p7}
C {lab_pin.sym} 120 -20 2 0 {name=p18 sig_type=std_logic lab=p[0..7]}
C {lab_pin.sym} 120 20 2 0 {name=p19 sig_type=std_logic lab=n[0..7]}
C {lab_pin.sym} -140 600 1 0 {name=p20 sig_type=std_logic lab=n0}
C {lab_pin.sym} -100 600 1 0 {name=p21 sig_type=std_logic lab=n1}
C {lab_pin.sym} -60 600 1 0 {name=p22 sig_type=std_logic lab=n2}
C {lab_pin.sym} -20 600 1 0 {name=p23 sig_type=std_logic lab=n3}
C {gnd.sym} 0 780 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 20 600 1 0 {name=p24 sig_type=std_logic lab=n4}
C {lab_pin.sym} 60 600 1 0 {name=p25 sig_type=std_logic lab=n5}
C {lab_pin.sym} 100 600 1 0 {name=p26 sig_type=std_logic lab=n6}
C {lab_pin.sym} 140 600 1 0 {name=p27 sig_type=std_logic lab=n7}
C {vsource.sym} -60 390 0 0 {name=V1 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -20 390 0 0 {name=V4 value="pulse(\{vss\}, \{vdd\}, \{5/f\}, 1f, 1f, \{5/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 20 390 0 0 {name=V5 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 60 390 0 0 {name=V9 value="pulse(\{vss\}, \{vdd\}, \{7/f\}, 1f, 1f, \{3/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 100 390 0 0 {name=V10 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 140 390 0 0 {name=V11 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{8/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -140 670 0 0 {name=V12 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -100 670 0 0 {name=V13 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -60 670 0 0 {name=V14 value="pulse(\{vss\}, \{vdd\}, \{4/f\}, 1f, 1f, \{6/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} -20 670 0 0 {name=V15 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 20 670 0 0 {name=V16 value="pulse(\{vss\}, \{vdd\}, \{6/f\}, 1f, 1f, \{4/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 60 670 0 0 {name=V17 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 100 670 0 0 {name=V18 value="pulse(\{vss\}, \{vdd\}, \{8/f\}, 1f, 1f, \{2/f\}, \{9/f\})" savecurrent=false}
C {vsource.sym} 140 670 0 0 {name=V19 value="pulse(\{vss\}, \{vdd\}, \{9/f\}, 1f, 1f, \{0/f\}, \{9/f\})" savecurrent=false}
