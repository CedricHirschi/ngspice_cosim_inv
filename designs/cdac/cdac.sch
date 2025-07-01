v {xschem version=3.4.7 file_version=1.2}
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
N 1600 30 1600 80 {lab=VSS}
N 1600 -80 1600 -30 {lab=VIN}
N 1400 -80 1600 -80 {lab=VIN}
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
N 760 80 800 80 {lab=l5}
N 800 30 800 80 {lab=l5}
N 960 80 1000 80 {lab=l6}
N 1000 30 1000 80 {lab=l6}
N 1160 80 1200 80 {lab=l7}
N 1200 30 1200 80 {lab=l7}
N 1360 80 1400 80 {lab=l8}
N 1400 30 1400 80 {lab=l8}
N 800 -80 800 -30 {lab=VIN}
N 1000 -80 1000 -30 {lab=VIN}
N 800 -80 1000 -80 {lab=VIN}
N 1200 -80 1200 -30 {lab=VIN}
N 1000 -80 1200 -80 {lab=VIN}
N 1400 -80 1400 -30 {lab=VIN}
N 1200 -80 1400 -80 {lab=VIN}
N 640 80 680 80 {lab=CTRL4}
N 840 80 880 80 {lab=CTRL5}
N 1040 80 1080 80 {lab=CTRL6}
N 1240 80 1280 80 {lab=CTRL7}
N 600 -80 800 -80 {lab=VIN}
C {sg13g2_pr/cap_cmim.sym} 0 0 0 0 {name=C2
model=cap_cmim
w=7.297e-5
l=7.298e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 200 0 0 0 {name=C3
model=cap_cmim
w=5.158e-5
l=5.159e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 400 0 0 0 {name=C4
model=cap_cmim
w=3.646e-5
l=3.646e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1600 0 0 0 {name=C5
model=cap_cmim
w=6.402e-6
l=6.402e-6
m=1
spiceprefix=X}
C {ipin.sym} -160 -80 0 0 {name=p2 lab=VIN}
C {ipin.sym} -160 270 0 0 {name=p3 lab=CTRL[0..7]}
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
C {ipin.sym} 1600 80 3 0 {name=p1 lab=VSS}
C {ipin.sym} -160 240 0 0 {name=p12 lab=VDD}
C {sg13g2_stdcells/sg13g2_inv_2.sym} -80 80 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 120 80 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 320 80 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 520 80 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/cap_cmim.sym} 600 0 0 0 {name=C6
model=cap_cmim
w=2.577e-5
l=2.577e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 800 0 0 0 {name=C7
model=cap_cmim
w=1.820e-5
l=1.820e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1000 0 0 0 {name=C8
model=cap_cmim
w=1.286e-5
l=1.286e-5
m=1
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 1200 0 0 0 {name=C9
model=cap_cmim
w=9.077e-6
l=9.077e-6
m=1
spiceprefix=X}
C {lab_pin.sym} 840 80 3 0 {name=p13 sig_type=std_logic lab=CTRL5}
C {lab_pin.sym} 1040 80 3 0 {name=p14 sig_type=std_logic lab=CTRL6}
C {lab_pin.sym} 1240 80 3 0 {name=p15 sig_type=std_logic lab=CTRL7
}
C {lab_pin.sym} 800 60 2 0 {name=p16 sig_type=std_logic lab=l5}
C {lab_pin.sym} 1000 60 2 0 {name=p17 sig_type=std_logic lab=l6}
C {lab_pin.sym} 1200 60 2 0 {name=p18 sig_type=std_logic lab=l7
}
C {lab_pin.sym} 1400 60 2 0 {name=p19 sig_type=std_logic lab=l8
}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 720 80 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 920 80 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1120 80 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1320 80 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} 640 80 3 0 {name=p20 sig_type=std_logic lab=CTRL4}
C {sg13g2_pr/cap_cmim.sym} 1400 0 0 0 {name=C1
model=cap_cmim
w=6.402e-6
l=6.402e-6
m=1
spiceprefix=X}
