v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -60 10 -40 10 {lab=#net1}
N -180 10 -160 10 {lab=EN}
N 0 60 0 80 {lab=#net2}
N -0 140 0 180 {lab=#net3}
N -0 -40 -0 -20 {lab=#net4}
N -200 210 -40 210 {lab=CLK}
N -200 -70 -40 -70 {lab=CLK}
N -240 210 -200 210 {lab=CLK}
N -200 -70 -200 210 {lab=CLK}
N -240 10 -180 10 {lab=EN}
N 120 60 120 130 {lab=#net2}
N 0 60 120 60 {lab=#net2}
N 0 40 0 60 {lab=#net2}
N -180 110 -40 110 {lab=EN}
N -180 10 -180 110 {lab=EN}
N 120 190 120 260 {lab=VSS}
N 0 240 -0 260 {lab=VSS}
N -0 -120 0 -100 {lab=VDD}
N -60 160 80 160 {lab=#net1}
N -60 10 -60 160 {lab=#net1}
N -80 10 -60 10 {lab=#net1}
N 120 60 140 60 {lab=#net2}
N 220 60 260 60 {lab=OUT}
N -0 210 70 210 {lab=VSS}
N -0 110 70 110 {lab=VSS}
N 70 110 70 210 {lab=VSS}
N 70 210 70 260 {lab=VSS}
N -0 10 70 10 {lab=VDD}
N 70 -70 70 10 {lab=VDD}
N 0 -70 70 -70 {lab=VDD}
N 70 -120 70 -70 {lab=VDD}
N 120 160 190 160 {lab=VSS}
N 190 160 190 260 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 -70 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -20 10 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 110 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -20 210 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -120 10 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 100 160 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 180 60 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -240 210 0 0 {name=p1 lab=CLK}
C {ipin.sym} -240 10 0 0 {name=p2 lab=EN}
C {opin.sym} 260 60 0 0 {name=p3 lab=OUT}
C {ipin.sym} -240 300 0 0 {name=p4 lab=VDD}
C {ipin.sym} -240 320 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 0 260 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 260 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -120 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -120 1 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 260 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 260 3 0 {name=p11 sig_type=std_logic lab=VSS}
