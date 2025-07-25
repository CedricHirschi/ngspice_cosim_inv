v {xschem version=3.4.6 file_version=1.2}
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
x1=-1.2912377e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out2
color=4
dataset=-1
unitx=1
logx=0
logy=0
digital=0
rainbow=1
y2=1.75
mode=Line
x2=6.0249012e-08
autoload=1}
B 2 -400 -1570 400 -1170 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2912377e-08
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
x2=6.0249012e-08
autoload=1}
B 2 0 640 800 1040 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2912377e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out1_dup
out1_dup_inv"
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
x2=6.0249012e-08
autoload=1}
B 2 0 1040 800 1440 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2912377e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out2_dup
out2_dup_inv"
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
x2=6.0249012e-08
autoload=1}
B 2 -400 -1170 400 -770 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.2912377e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out1
color=4
dataset=-1
unitx=1
logx=0
logy=0
digital=0
rainbow=1
y2=1.75
mode=Line
x2=6.0249012e-08
autoload=1}
B 2 400 -770 1200 -370 {flags=graph
y1=-12
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=-1.2912377e-08
x2=6.0249012e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="in_n in_p -"
color=4
dataset=-1
unitx=1
logx=0
logy=1
rawfile=$netlist_dir/comparator_tb.raw
rainbow=1
y2=0}
T {1 sigma at Vcm=vdd/2:
  -7.15e-9 (no inverters)
  -1.215e-8 (inverters)
1 sigma at Vcm=vdd/2-100m:
  -1.208e-9 (inverters)
1 sigma at Vcm=vdd/2+100m:
  no minimum??} -500 -280 0 0 0.4 0.4 {}
N 0 100 0 120 {lab=vss}
N 0 -120 0 -100 {lab=vdd}
N -500 180 -500 200 {lab=vdd}
N -420 180 -420 200 {lab=vss}
N -160 -0 -160 160 {lab=clk}
N -160 -0 -100 0 {lab=clk}
N -450 40 -100 40 {lab=in_n}
N -450 30 -450 40 {lab=in_n}
N -450 -40 -450 -30 {lab=in_p}
N -450 -40 -100 -40 {lab=in_p}
N -450 40 -450 60 {lab=in_n}
N 80 -20 120 -20 {lab=out1}
N 80 20 120 20 {lab=out2}
N 0 420 0 440 {lab=out1_dup}
N 340 420 340 440 {lab=out2_dup}
N 0 1740 100 1740 {lab=out1}
N 160 1740 300 1740 {lab=out1_inv}
N 100 1790 120 1790 {lab=out1}
N 100 1740 100 1790 {lab=out1}
N 100 1690 100 1740 {lab=out1}
N 100 1690 120 1690 {lab=out1}
N 160 1640 160 1690 {lab=vdd}
N 160 1740 160 1760 {lab=out1_inv}
N 160 1720 160 1740 {lab=out1_inv}
N 160 1790 160 1840 {lab=vss}
N 340 1740 440 1740 {lab=out2}
N 500 1740 640 1740 {lab=out2_inv}
N 440 1790 460 1790 {lab=out2}
N 440 1740 440 1790 {lab=out2}
N 440 1690 440 1740 {lab=out2}
N 440 1690 460 1690 {lab=out2}
N 500 1640 500 1690 {lab=vdd}
N 500 1740 500 1760 {lab=out2_inv}
N 500 1720 500 1740 {lab=out2_inv}
N 500 1790 500 1840 {lab=vss}
N 0 420 100 420 {lab=out1_dup}
N 160 420 300 420 {lab=out1_dup_inv}
N 100 470 120 470 {lab=out1_dup}
N 100 420 100 470 {lab=out1_dup}
N 100 370 100 420 {lab=out1_dup}
N 100 370 120 370 {lab=out1_dup}
N 160 320 160 370 {lab=vdd}
N 160 420 160 440 {lab=out1_dup_inv}
N 160 400 160 420 {lab=out1_dup_inv}
N 160 470 160 520 {lab=vss}
N 340 420 440 420 {lab=out2_dup}
N 500 420 640 420 {lab=out2_dup_inv}
N 440 470 460 470 {lab=out2_dup}
N 440 420 440 470 {lab=out2_dup}
N 440 370 440 420 {lab=out2_dup}
N 440 370 460 370 {lab=out2_dup}
N 500 320 500 370 {lab=vdd}
N 500 420 500 440 {lab=out2_dup_inv}
N 500 400 500 420 {lab=out2_dup_inv}
N 500 470 500 520 {lab=vss}
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
C {vsource.sym} -160 190 0 0 {name=Vclk value="dc 0 ac 0 pulse(\{vss\}, \{vdd\}, \{0.9/f\}, 1f, 1f, \{0.1/f\}, \{1/f\})"}
C {gnd.sym} -160 220 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -120 0 0 0 {name=p3 sig_type=std_logic lab=clk}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -450 0 0 0 {name=Vdiff value="pulse(1.1, \{vlow\}, \{0.75/f\}, 1f, 1f, \{1/f\}, \{2/f\})"}
C {lab_wire.sym} -200 40 0 0 {name=p4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} -200 -40 0 0 {name=p5 sig_type=std_logic lab=in_p
}
C {lab_wire.sym} 120 -20 0 0 {name=p8 sig_type=std_logic lab=out1}
C {lab_wire.sym} 120 20 0 0 {name=p9 sig_type=std_logic lab=out2}
C {vsource.sym} -450 90 0 0 {name=Vcm value=\{vdd/2\}}
C {gnd.sym} -450 120 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 740 70 0 0 {name=SWEEPS
simulator=ngspice
only_toplevel=false 
value="
.param vss=0
.param vdd=1.5
.param f=100Meg

.param vlow=-4e-3

.control
save all

set wr_singlescale
set wr_vecnames
set appendwrite

compose vlow_vec values 1u 100n 10n 1n 100p 10p 1p

foreach vlow_var $&vlow_vec
  echo 'Vlow = -$vlow_var'
  alterparam vlow=-$vlow_var
  tran 0.01n 45n
  reset
  wrdata sweep.csv V(out1) V(out2)
  write comparator_tb.raw
end

.endc
"}
C {gnd.sym} 0 500 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 80 420 0 0 {name=p10 sig_type=std_logic lab=out1_dup}
C {vsource_arith.sym} 0 470 0 0 {name=E1 VOL=V(out1)}
C {lab_wire.sym} 300 420 0 0 {name=p11 sig_type=std_logic lab=out1_dup_inv}
C {launcher.sym} 660 610 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {gnd.sym} 340 500 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 420 420 0 0 {name=p14 sig_type=std_logic lab=out2_dup}
C {vsource_arith.sym} 340 470 0 0 {name=E2 VOL=V(out2)}
C {lab_wire.sym} 640 420 0 0 {name=p15 sig_type=std_logic lab=out2_dup_inv}
C {lab_wire.sym} 80 1740 0 0 {name=p18 sig_type=std_logic lab=out1}
C {lab_wire.sym} 300 1740 0 0 {name=p19 sig_type=std_logic lab=out1_inv}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 1790 0 0 {name=M5
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 140 1690 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 160 1640 0 0 {name=p20 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 160 1840 2 0 {name=p21 sig_type=std_logic lab=vss}
C {lab_wire.sym} 420 1740 0 0 {name=p22 sig_type=std_logic lab=out2}
C {lab_wire.sym} 640 1740 0 0 {name=p23 sig_type=std_logic lab=out2_inv}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 1790 0 0 {name=M7
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 1690 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 500 1640 0 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 500 1840 2 0 {name=p25 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 470 0 0 {name=M1
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 140 370 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 160 320 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 160 520 2 0 {name=p16 sig_type=std_logic lab=vss}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 470 0 0 {name=M3
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 370 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 500 320 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 500 520 2 0 {name=p17 sig_type=std_logic lab=vss}
