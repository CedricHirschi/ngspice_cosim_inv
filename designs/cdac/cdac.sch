v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 80 -0 80 {lab=l1}
N 0 30 -0 80 {lab=l1}
N 160 80 200 80 {lab=l2}
N 200 30 200 80 {lab=l2}
N 360 80 400 80 {lab=l3}
N 400 30 400 80 {lab=l3}
N 560 80 600 80 {lab=l4}
N 600 30 600 80 {lab=l4}
N 800 30 800 80 {lab=VDD}
N 800 -80 800 -30 {lab=VIN}
N 600 -80 800 -80 {lab=VIN}
N 0 -80 -0 -30 {lab=VIN}
N 200 -80 200 -30 {lab=VIN}
N -0 -80 200 -80 {lab=VIN}
N 400 -80 400 -30 {lab=VIN}
N 200 -80 400 -80 {lab=VIN}
N 600 -80 600 -30 {lab=VIN}
N 400 -80 600 -80 {lab=VIN}
N -160 80 -120 80 {lab=CTRL0}
N -160 -80 -0 -80 {lab=VIN}
N 40 80 80 80 {lab=CTRL1}
N 240 80 280 80 {lab=CTRL2}
N 440 80 480 80 {lab=CTRL3}
C {sg13g2_pr/cap_cmim.sym} 0 0 0 0 {name=C1
model=cap_cmim
w=2.577e-5
l=2.577e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 200 0 0 0 {name=C2
model=cap_cmim
w=1.820e-5
l=1.820e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 400 0 0 0 {name=C3
model=cap_cmim
w=1.286e-5
l=1.286e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 600 0 0 0 {name=C4
model=cap_cmim
w=9.076e-6
l=9.076e-6
m=1
spiceprefix=X}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -80 80 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 120 80 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 320 80 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 520 80 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/cap_cmim.sym} 800 0 0 0 {name=C5
model=cap_cmim
w=9.076e-6
l=9.076e-6
m=1
spiceprefix=X}
C {ipin.sym} -160 -80 0 0 {name=p2 lab=VIN}
C {ipin.sym} -160 270 0 0 {name=p3 lab=CTRL[0..3]}
C {lab_pin.sym} -160 80 3 0 {name=p4 sig_type=std_logic lab=CTRL0}
C {lab_pin.sym} 40 80 3 0 {name=p5 sig_type=std_logic lab=CTRL1}
C {lab_pin.sym} 240 80 3 0 {name=p6 sig_type=std_logic lab=CTRL2}
C {lab_pin.sym} 440 80 3 0 {name=p7 sig_type=std_logic lab=CTRL3}
C {lab_pin.sym} 0 60 2 0 {name=p8 sig_type=std_logic lab=l1}
C {lab_pin.sym} 200 60 2 0 {name=p9 sig_type=std_logic lab=l2}
C {lab_pin.sym} 400 60 2 0 {name=p10 sig_type=std_logic lab=l3
}
C {lab_pin.sym} 600 60 2 0 {name=p11 sig_type=std_logic lab=l4
}
C {ipin.sym} 800 80 3 0 {name=p1 lab=VDD}
C {ipin.sym} -160 240 0 0 {name=p12 lab=VSS}
