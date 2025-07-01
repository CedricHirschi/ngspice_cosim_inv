v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -570 -90 -510 -90 {lab=VDD}
N -570 -140 -570 -90 {lab=VDD}
N -570 -140 -510 -140 {lab=VDD}
N -510 -140 -510 -120 {lab=VDD}
N -270 -90 -210 -90 {lab=VDD}
N -210 -140 -210 -90 {lab=VDD}
N -270 -140 -210 -140 {lab=VDD}
N -270 -140 -270 -120 {lab=VDD}
N -390 -140 -270 -140 {lab=VDD}
N -390 -180 -390 -140 {lab=VDD}
N -510 -140 -390 -140 {lab=VDD}
N -510 90 -270 90 {lab=VSS}
N -270 120 -270 160 {lab=#net1}
N -390 160 -270 160 {lab=#net1}
N -510 120 -510 160 {lab=#net1}
N -390 160 -390 200 {lab=#net1}
N -510 160 -390 160 {lab=#net1}
N -390 230 -330 230 {lab=VSS}
N -330 230 -330 280 {lab=VSS}
N -390 280 -330 280 {lab=VSS}
N -390 260 -390 280 {lab=VSS}
N -390 280 -390 320 {lab=VSS}
N -230 90 -190 90 {lab=neg_ai}
N -590 90 -550 90 {lab=pos_ai}
N -270 0 -270 60 {lab=pos_buf}
N -510 0 -510 60 {lab=neg_buf}
N -550 0 -510 0 {lab=neg_buf}
N -510 -60 -510 0 {lab=neg_buf}
N -270 0 -230 0 {lab=pos_buf}
N -270 -60 -270 0 {lab=pos_buf}
N 500 -170 560 -170 {lab=VDD}
N 560 -220 560 -170 {lab=VDD}
N 500 -220 560 -220 {lab=VDD}
N 500 -220 500 -200 {lab=VDD}
N 500 -260 500 -220 {lab=VDD}
N 740 -100 740 -60 {lab=#net2}
N 260 -100 260 -60 {lab=#net2}
N 500 -140 500 -100 {lab=#net2}
N 740 0 740 40 {lab=neg_o}
N 530 -30 700 -30 {lab=pos_o}
N 260 0 260 40 {lab=pos_o}
N 740 40 780 40 {lab=neg_o}
N 260 80 380 80 {lab=pos_o}
N 140 80 140 120 {lab=pos_o}
N 380 80 380 120 {lab=pos_o}
N 260 40 260 80 {lab=pos_o}
N 140 80 260 80 {lab=pos_o}
N 380 180 380 200 {lab=VSS}
N 320 200 380 200 {lab=VSS}
N 140 180 140 200 {lab=VSS}
N 140 150 200 150 {lab=VSS}
N 200 150 200 200 {lab=VSS}
N 140 200 200 200 {lab=VSS}
N 320 150 380 150 {lab=VSS}
N 320 150 320 200 {lab=VSS}
N 200 200 320 200 {lab=VSS}
N 740 80 860 80 {lab=neg_o}
N 620 80 620 120 {lab=neg_o}
N 860 80 860 120 {lab=neg_o}
N 740 40 740 80 {lab=neg_o}
N 620 80 740 80 {lab=neg_o}
N 860 180 860 200 {lab=VSS}
N 800 200 860 200 {lab=VSS}
N 620 180 620 200 {lab=VSS}
N 620 150 680 150 {lab=VSS}
N 680 150 680 200 {lab=VSS}
N 620 200 680 200 {lab=VSS}
N 800 150 860 150 {lab=VSS}
N 800 150 800 200 {lab=VSS}
N 680 200 800 200 {lab=VSS}
N 260 40 490 40 {lab=pos_o}
N 220 40 260 40 {lab=pos_o}
N 300 -30 470 -30 {lab=neg_o}
N 260 -100 500 -100 {lab=#net2}
N 420 150 470 150 {lab=neg_o}
N 470 20 470 150 {lab=neg_o}
N 530 20 530 150 {lab=pos_o}
N 530 150 580 150 {lab=pos_o}
N 500 -100 740 -100 {lab=#net2}
N 510 40 740 40 {lab=neg_o}
N 490 20 510 40 {lab=neg_o}
N 470 20 490 20 {lab=neg_o}
N 470 -30 470 20 {lab=neg_o}
N 490 40 510 20 {lab=pos_o}
N 510 20 530 20 {lab=pos_o}
N 530 -30 530 20 {lab=pos_o}
N 500 200 620 200 {lab=VSS}
N 500 200 500 240 {lab=VSS}
N 380 200 500 200 {lab=VSS}
N 60 150 60 190 {lab=neg_buf}
N 20 150 60 150 {lab=neg_buf}
N 60 150 100 150 {lab=neg_buf}
N 60 250 60 290 {lab=VSS}
N 940 150 940 190 {lab=pos_buf}
N 900 150 940 150 {lab=pos_buf}
N 940 150 980 150 {lab=pos_buf}
N 940 250 940 290 {lab=VSS}
N 420 -170 460 -170 {lab=clk_ni}
N -470 -90 -310 -90 {lab=clk_i}
N 200 -30 260 -30 {lab=VDD}
N 740 -30 800 -30 {lab=VDD}
N -470 230 -430 230 {lab=clk_i}
C {sg13g2_pr/sg13_lv_pmos.sym} -490 -90 0 1 {name=M12
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -290 -90 0 0 {name=M13
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -530 90 2 1 {name=M14
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -250 90 2 0 {name=M15
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 230 2 1 {name=M16
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -590 90 0 0 {name=p14 lab=pos_ai}
C {ipin.sym} -190 90 2 0 {name=p15 lab=neg_ai}
C {ipin.sym} -390 320 3 0 {name=p16 lab=VSS}
C {ipin.sym} -390 -180 1 0 {name=p17 lab=VDD}
C {lab_pin.sym} -550 0 0 0 {name=p18 sig_type=std_logic lab=neg_buf}
C {lab_pin.sym} -230 0 2 0 {name=p19 sig_type=std_logic lab=pos_buf}
C {lab_wire.sym} -370 90 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 480 -170 0 0 {name=M17
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 500 -260 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -30 0 1 {name=M18
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 720 -30 0 0 {name=M19
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 150 2 1 {name=M20
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 150 2 0 {name=M21
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 150 2 1 {name=M22
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 150 2 0 {name=M23
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 500 240 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 20 150 0 0 {name=p24 sig_type=std_logic lab=neg_buf}
C {lab_pin.sym} 980 150 2 0 {name=p25 sig_type=std_logic lab=pos_buf}
C {sg13g2_pr/cap_cmim.sym} 60 220 0 0 {name=C1
model=cap_cmim
w=1.41e-5
l=1.41e-5
m=1
spiceprefix=X}
C {lab_pin.sym} 60 290 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {sg13g2_pr/cap_cmim.sym} 940 220 0 0 {name=C2
model=cap_cmim
w=1.41e-5
l=1.41e-5
m=1
spiceprefix=X}
C {lab_pin.sym} 940 290 3 0 {name=p27 sig_type=std_logic lab=VSS}
C {opin.sym} 780 40 0 0 {name=p28 lab=neg_o}
C {opin.sym} 220 40 2 0 {name=p29 lab=pos_o}
C {ipin.sym} -470 230 0 0 {name=p1 lab=clk_i}
C {ipin.sym} 420 -170 0 0 {name=p2 lab=clk_ni}
C {lab_pin.sym} 800 -30 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -30 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -370 -90 0 0 {name=p5 sig_type=std_logic lab=clk_i}
