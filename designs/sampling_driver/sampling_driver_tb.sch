v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -400 -840 400 -440 {flags=graph
y1=0
y2=1.5
ypos1=-0.25598814
ypos2=0.92659198
divy=5
subdivy=1
unity=1
x1=-1.0403345e-08
x2=5.312071e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk
en
out"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
N -0 60 -0 80 {lab=VSS}
N 0 -80 0 -60 {lab=VDD}
N -160 10 -100 10 {lab=clk}
N -400 70 -400 120 {lab=#net1}
N -520 -10 -520 60 {lab=#net2}
N -300 -10 -100 -10 {lab=en}
N 100 -0 320 -0 {lab=out}
N 380 -160 420 -160 {lab=#net3}
N 220 -160 260 -160 {lab=VDD}
N 320 -100 320 0 {lab=out}
N 320 -0 480 -0 {lab=out}
N 480 -100 480 0 {lab=out}
N 300 -240 300 -220 {lab=VDD}
N 460 -240 460 -220 {lab=VDD}
N 340 -240 340 -220 {lab=VSS}
N 500 -240 500 -220 {lab=VSS}
N 540 -160 580 -160 {lab=#net4}
N 580 -160 580 -120 {lab=#net4}
N -400 70 -360 70 {lab=#net1}
N -280 70 -260 70 {lab=#net5}
N -180 70 -160 70 {lab=clk}
N -160 10 -160 70 {lab=clk}
N -400 -10 -380 -10 {lab=#net6}
N -520 -10 -480 -10 {lab=#net2}
N -40 400 -40 420 {lab=VDD}
N 40 400 40 420 {lab=VSS}
C {sampling_driver.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} 0 -80 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 80 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {vsource.sym} -400 150 0 0 {name=V1 value="pulse(\{vss\}, \{vdd\}, \{0.5/f\}, 0.2n, 0.2n, \{0.5/f\}, \{1/f\})" savecurrent=false}
C {vsource.sym} -520 90 0 1 {name=V2 value="pulse(\{vss\}, \{vdd\}, \{1.125/f\}, \{0.25/f\}, \{0.25/f\}, \{1.25/f\}, \{4/f\})" savecurrent=false}
C {gnd.sym} -400 180 0 0 {name=l1 lab=GND}
C {gnd.sym} -520 120 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -110 10 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} -110 -10 0 0 {name=p4 sig_type=std_logic lab=en}
C {/workspaces/ngspice_cosim_inv/designs/tgate/tgate.sym} 320 -160 0 0 {name=x2}
C {/workspaces/ngspice_cosim_inv/designs/tgate/tgate.sym} 480 -160 0 0 {name=x3}
C {lab_pin.sym} 220 -160 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -240 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 -240 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 -240 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -240 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {capa.sym} 580 -90 0 0 {name=C1
m=1
value=1.7p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 580 -60 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 140 0 0 0 {name=p10 sig_type=std_logic lab=out}
C {simulator_commands_shown.sym} 240 230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.param vss=0.0
.param vdd=1.5
.param f=80Meg

.control
  save all
  tran 1n 50n
  write sampling_driver_tb.raw
.endc
"}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -340 -10 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -220 70 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -320 70 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -440 -10 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -40 450 0 0 {name=Vdd value=\{vdd\}
}
C {vsource.sym} 40 450 0 0 {name=Vss value=\{vss\}
}
C {gnd.sym} -40 480 0 0 {name=l4 lab=GND}
C {gnd.sym} 40 480 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -40 400 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 400 1 0 {name=p12 sig_type=std_logic lab=VSS}
C {code_shown.sym} 240 70 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {launcher.sym} 0 -400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sampling_driver_tb.raw tran"
}
