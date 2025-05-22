v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -380 -580 420 -180 {flags=graph
y1=-0.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=24e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/inv_tb.raw
color="14 7 12"
node="clk
in
out"
y2=3.5
digital=0
x2=26e-6
rainbow=0}
N -300 20 -300 60 {lab=CLK}
N -300 20 -220 20 {lab=CLK}
N -460 -20 -460 60 {lab=IN}
N -460 -20 -220 -20 {lab=IN}
N -300 120 -300 160 {lab=GND}
N -460 120 -460 160 {lab=GND}
N 80 -0 160 -0 {lab=OUT_D}
N 220 0 270 -0 {lab=OUT}
N -220 -20 -80 -20 {lab=IN}
N -220 20 -80 20 {lab=CLK}
C {./inv.sym} 0 20 0 0 {name=ADUT model=dut

device_model=".model dut d_cosim simulation=\\"ivlng\\" sim_args=[\\"inv\\"]"}
C {vsource.sym} -300 90 0 0 {name=VCLOCK value="pulse 0 'VCC' 200n 300n 300n 200n 1u" savecurrent=false}
C {vsource.sym} -460 90 0 0 {name=VTEST value="pulse 0 'VCC' 5000n 50n 50n 4900n 10u" savecurrent=false}
C {gnd.sym} -300 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -460 160 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 360 -30 0 0 {name=COMMANDS only_toplevel=false value="
.control
  save all
  tran 1n 50u
  remzerovec
  write inv_tb.raw
.endc
"}
C {lab_pin.sym} 270 0 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -460 -20 0 0 {name=p2 sig_type=std_logic lab=IN}
C {lab_pin.sym} -300 20 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {launcher.sym} -80 -100 0 0 {name=h1
descr="Build Icarus Verilog object" 
tclcommand="execute 1 sh -c \\"cd $netlist_dir; iverilog -g2012 -o inv [abs_sym_path inv.sv]\\""
}
C {launcher.sym} -80 -140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/inv_tb.raw tran"
}
C {dac_bridge.sym} 190 0 0 0 {name=A1 dac_bridge_model= dac_buff

device_model=".model dac_buff dac_bridge t_rise='TR' t_fall='TF'
+ out_low=0 out_high='VCC'"
}
C {lab_pin.sym} 90 0 2 0 {name=p5 sig_type=std_logic lab=OUT_D}
C {simulator_commands_shown.sym} 580 -30 0 0 {name=PARAMS
simulator=ngspice
only_toplevel=false 
value="
.param VCC=3.3
.param VIL=0.5
.param VIH=2.5
.param TR=100n
.param TF=100n
"}
