v {xschem version=3.4.7 file_version=1.2}
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
x1=4.469414e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/inv_tb.raw
color="14 7 12 4"
node="clk
in
out
out_n"
y2=3.5
digital=0
x2=4.630494e-05
rainbow=0}
N -300 20 -300 60 {lab=CLK}
N -460 -20 -460 60 {lab=IN}
N -460 -20 -80 -20 {lab=IN}
N -300 120 -300 160 {lab=GND}
N -460 120 -460 160 {lab=GND}
N 180 -20 270 -20 {lab=OUT}
N 240 20 270 20 {lab=OUT_N}
N 180 100 180 120 {lab=GND}
N 210 120 240 120 {lab=GND}
N 240 100 240 120 {lab=GND}
N 210 120 210 140 {lab=GND}
N 180 120 210 120 {lab=GND}
N 240 20 240 40 {lab=OUT_N}
N 80 20 240 20 {lab=OUT_N}
N 180 -20 180 40 {lab=OUT}
N 80 -20 180 -20 {lab=OUT}
N -140 20 -80 20 {lab=#net1}
N -300 20 -200 20 {lab=CLK}
C {./inv.sym} 0 20 0 0 {name=ADUT model=dut

device_model=".model dut d_cosim simulation=\\"ivlng\\" sim_args=[\\"inv\\"]"}
C {vsource.sym} -300 90 0 0 {name=VCLOCK value="pulse 0 'VCC' 200n 300n 300n 200n 1u" savecurrent=false}
C {vsource.sym} -460 90 0 0 {name=VTEST value="pulse 0 'VCC' 5100n 50n 50n 4900n 10u" savecurrent=false}
C {gnd.sym} -300 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -460 160 0 0 {name=l2 lab=GND}
C {simulator_commands_shown.sym} 360 -30 0 0 {name=COMMANDS only_toplevel=false value="
*.control
*  save all
*  tran 1n 50u
*  remzerovec
*  write inv_tb.raw
*.endc
.tran 1n 50u
.save all
"}
C {lab_pin.sym} 270 -20 2 0 {name=p1 sig_type=std_logic lab=OUT}
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
C {simulator_commands_shown.sym} 580 -30 0 0 {name=PARAMS
simulator=ngspice
only_toplevel=false 
value="
.param VCC=3.3
"}
C {lab_pin.sym} 270 20 2 0 {name=p4 sig_type=std_logic lab=OUT_N}
C {simulator_commands_shown.sym} 360 210 0 0 {name=BRIDGE_MODELS
simulator=ngspice
only_toplevel=false 
value="
.model adc_buff_clk adc_bridge(in_low = 'VCC/2' in_high = 'VCC/2')

.control
pre_set auto_bridge_d_out =
+ ( \\".model auto_bridge_out bidi_bridge(direction=0 out_high='%g' t_rise=100n t_fall=100n)\\"
+   \\"auto_bridge_out%d [ %s ] [ %s ] null auto_bridge_out\\" )
pre_set auto_bridge_d_in =
+ ( \\".model auto_bridge_in bidi_bridge(direction=1 in_low='%g/3' in_high='%g/3*2')\\"
+   \\"auto_bridge_in%d [ %s ] [ %s ] null auto_bridge_in\\" )
.endc
"}
C {launcher.sym} 60 440 0 0 {name=h2
descr="See chapter 8.3 here"
url=https://ngspice.sourceforge.io/docs/ngspice-manual.pdf}
C {res.sym} 240 70 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 180 70 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 210 140 0 0 {name=l3 lab=GND}
C {adc_bridge.sym} -170 20 0 0 {name=A1 adc_bridge_model= adc_buff_clk}
