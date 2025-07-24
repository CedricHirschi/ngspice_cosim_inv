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
x1=0.9983438e-08
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
x2=1.0226277e-08
autoload=1}
B 2 400 -770 1200 -370 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=1.9983438e-08
x2=2.0226277e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6"
node="in_p in_n -
in_p
in_n"
rainbow=1
y1=-2.3208116
y2=2.2632527}
B 2 -400 -1170 400 -770 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.9983438e-08
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
x2=2.0226277e-08
autoload=1}
B 2 -400 -770 400 -370 {flags=graph
y1=-0.25
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.9983438e-08
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
x2=2.0226277e-08
autoload=1}
N -320 320 -320 340 {lab=VDD}
N -240 320 -240 340 {lab=VSS}
N -700 -10 -700 30 {lab=VCM}
N 0 50 80 50 {lab=#net1}
N 0 50 0 70 {lab=#net1}
N -80 50 0 50 {lab=#net1}
N 0 100 0 210 {lab=VSS}
N -120 100 -40 100 {lab=VDD}
N -80 30 -80 50 {lab=#net1}
N 80 30 80 50 {lab=#net1}
N 20 0 80 0 {lab=VSS}
N -80 0 -20 0 {lab=VSS}
N 120 0 200 0 {lab=VCM}
N -200 0 -120 0 {lab=VCM}
N 80 -50 80 -30 {lab=VDD}
N -80 -50 -80 -30 {lab=VDD}
N -80 -50 80 -50 {lab=VDD}
C {code_shown.sym} 720 -110 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_ss
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {lab_wire.sym} -320 320 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -240 320 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {vsource.sym} -320 370 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} -240 370 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -320 400 0 0 {name=l3 lab=GND}
C {gnd.sym} -240 400 0 0 {name=l4 lab=GND}
C {launcher.sym} -10 -340 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comparator_tb.raw tran"
}
C {vsource.sym} -700 60 0 0 {name=Vcm value=\{vdd/2\}}
C {gnd.sym} -700 90 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 720 110 0 0 {name=SWEEPS
simulator=ngspice
only_toplevel=false 
value="
.param vss=0
.param vdd=1.5

.control
	save all
	op

	print @n.xm4.nsg13_lv_nmos[gm]
	print @n.xm6.nsg13_lv_nmos[gm]

  * --- node P  ----------------------------------------------------
  let CP =  @n.xm4.nsg13_lv_nmos[cdb]   \\   ; drain‐to‐bulk M4
           +@n.xm4.nsg13_lv_nmos[cgs]   \\   ; gate–source overlap M4
           +@n.xm4.nsg13_lv_nmos[cgd]       ; gate–drain overlap  M4

  * --- node Q  ----------------------------------------------------
  let CQ =  @n.xm6.nsg13_lv_nmos[cdb]   \\
           +@n.xm6.nsg13_lv_nmos[cgs]   \\
           +@n.xm6.nsg13_lv_nmos[cgd]    

  print CP
  print CQ	
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} -100 0 0 0 {name=M4
l=0.13u
w=2u
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 100 0 0 {name=M5
l=1u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 20 0 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -20 0 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 0 0 1 {name=M6
l=0.13u
w=2u
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 0 210 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -120 100 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -700 -10 1 0 {name=p16 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -200 0 0 0 {name=p17 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 200 0 2 0 {name=p22 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 20 -50 0 0 {name=p3 sig_type=std_logic lab=VDD}
