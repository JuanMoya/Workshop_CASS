v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -20 110 10 {lab=#net1}
N -20 -100 40 -100 {lab=VDD}
N 40 -100 110 -100 {lab=VDD}
N -20 -100 -20 -40 {lab=VDD}
N 110 -100 110 -80 {lab=VDD}
N 110 70 110 90 {lab=#net2}
N 60 90 110 90 {lab=#net2}
N -90 -10 -60 -10 {lab=B}
N 50 -50 70 -50 {lab=C}
N -20 20 -20 90 {lab=#net2}
N -20 90 60 90 {lab=#net2}
N 50 40 70 40 {lab=D}
N 0 120 20 120 {lab=A}
N 60 150 60 180 {lab=Q}
N 30 260 30 280 {lab=#net3}
N 30 260 150 260 {lab=#net3}
N 150 260 150 280 {lab=#net3}
N 60 240 60 260 {lab=#net3}
N 30 340 30 370 {lab=GND}
N 150 340 150 360 {lab=GND}
N 30 360 150 360 {lab=GND}
N -80 360 30 360 {lab=GND}
N -80 330 -80 360 {lab=GND}
N -0 210 20 210 {lab=B}
N -80 260 -80 330 {lab=GND}
N -80 160 -80 200 {lab=Q}
N -80 160 60 160 {lab=Q}
N -140 230 -120 230 {lab=A}
N -30 310 -10 310 {lab=C}
N 90 310 110 310 {lab=#net4}
N 60 160 240 160 {lab=Q}
N -150 230 -140 230 {lab=A}
C {sky130_fd_pr/pfet3_01v8.sym} -40 -10 0 0 {name=M4
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -100 230 0 0 {name=M8
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 90 -50 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 90 40 0 0 {name=M2
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 40 120 0 0 {name=M3
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 30 370 0 0 {name=l1 lab=GND}
C {vdd.sym} 40 -100 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 40 210 0 0 {name=M5
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 10 310 0 0 {name=M6
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 130 310 0 0 {name=M7
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {opin.sym} 240 160 0 0 {name=p10 lab=Q}
C {ipin.sym} -90 -10 0 0 {name=p1 lab=B}
C {ipin.sym} 50 -50 0 0 {name=p2 lab=C}
C {ipin.sym} 50 40 0 0 {name=p3 lab=D}
C {ipin.sym} 0 120 0 0 {name=p4 lab=A}
C {lab_wire.sym} -70 -10 0 0 {name=p5 sig_type=std_logic lab=B}
C {lab_wire.sym} 0 210 0 0 {name=p6 sig_type=std_logic lab=B}
C {lab_wire.sym} -150 230 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_wire.sym} 10 120 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_wire.sym} 60 -50 0 0 {name=p12 sig_type=std_logic lab=C}
C {lab_wire.sym} 60 40 0 0 {name=p13 sig_type=std_logic lab=D}
C {lab_wire.sym} -30 310 0 0 {name=p7 sig_type=std_logic lab=C}
C {lab_wire.sym} 90 310 0 0 {name=p8 sig_type=std_logic lab=D}
