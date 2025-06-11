v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 100 50 100 {lab=B}
N -50 100 -30 100 {lab=A}
N -50 -0 -50 100 {lab=A}
N -50 -100 0 -100 {lab=A}
N 50 -0 50 100 {lab=B}
N 30 -100 50 -100 {lab=B}
N 50 -0 100 -0 {lab=B}
N 50 -100 50 -0 {lab=B}
N -50 -100 -50 -0 {lab=A}
N -20 170 -0 170 {lab=#net1}
N 0 140 0 170 {lab=#net1}
N -120 170 -100 170 {lab=CTRL}
N -120 -160 -120 170 {lab=CTRL}
N -120 -160 0 -160 {lab=CTRL}
N 0 -160 0 -140 {lab=CTRL}
N -160 -0 -50 -0 {lab=A}
N -160 170 -120 170 {lab=CTRL}
C {sg13g2_pr/sg13_hv_nmos.sym} 0 -120 1 0 {name=M1
l=0.45u
w=0.3u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 0 120 1 1 {name=M2
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -60 170 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -160 170 0 0 {name=p1 lab=CTRL}
C {iopin.sym} 100 0 0 0 {name=p2 lab=B}
C {iopin.sym} -160 0 2 0 {name=p3 lab=A}
