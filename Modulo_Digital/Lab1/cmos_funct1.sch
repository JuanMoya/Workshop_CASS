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
N 90 310 110 310 {lab=D}
N 60 160 240 160 {lab=Q}
N 440 -100 450 -100 {
lab=A}
N 450 -100 450 -80 {
lab=A}
N 540 -100 550 -100 {
lab=B}
N 550 -100 550 -80 {
lab=B}
N 640 -100 650 -100 {
lab=C}
N 650 -100 650 -80 {
lab=C}
N 750 -100 760 -100 {
lab=D}
N 760 -100 760 -80 {
lab=D}
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
C {lab_pin.sym} -90 -10 0 0 {name=p1 sig_type=std_logic lab=B}
C {lab_pin.sym} 50 -50 0 0 {name=p2 sig_type=std_logic lab=C}
C {lab_pin.sym} 50 40 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_pin.sym} 0 120 0 0 {name=p4 sig_type=std_logic lab=A}
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
C {lab_pin.sym} -140 230 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_pin.sym} 0 210 0 0 {name=p6 sig_type=std_logic lab=B}
C {lab_pin.sym} -30 310 0 0 {name=p7 sig_type=std_logic lab=C}
C {lab_pin.sym} 90 310 0 0 {name=p8 sig_type=std_logic lab=D}
C {lab_pin.sym} 240 160 0 1 {name=p9 sig_type=std_logic lab=Q}
C {devices/vsource.sym} 340 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vdd.sym} 340 -80 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 340 -20 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 450 -20 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 440 -100 0 0 {name=p10 sig_type=std_logic lab=A}
C {code_shown.sym} 320 210 0 0 {name=Technology1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {code_shown.sym} 320 290 0 0 {name=Ngspice only_toplevel=false value="
.control
tran 0.01n 80n
plot A B+2 C+4 D+6 Q+8
.endc"
}
C {sqwsource.sym} 450 -50 0 0 {name=V3 vhi=1.8 freq=100e6}
C {devices/gnd.sym} 550 -20 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 540 -100 0 0 {name=p11 sig_type=std_logic lab=B}
C {sqwsource.sym} 550 -50 0 0 {name=V2 vhi=1.8 freq=50e6}
C {devices/gnd.sym} 650 -20 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 640 -100 0 0 {name=p12 sig_type=std_logic lab=C}
C {sqwsource.sym} 650 -50 0 0 {name=V4 vhi=1.8 freq=25e6}
C {devices/gnd.sym} 760 -20 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 750 -100 0 0 {name=p13 sig_type=std_logic lab=D}
C {sqwsource.sym} 760 -50 0 0 {name=V5 vhi=1.8 freq=12.5e6}
