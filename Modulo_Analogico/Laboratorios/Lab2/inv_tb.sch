v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -310 680 -280 {lab=VDD}
N 680 -140 680 -100 {lab=VSS}
N 600 -210 640 -210 {lab=Vin}
N 830 -210 860 -210 {lab=Vout}
N 850 -210 850 -180 {lab=Vout}
N 850 -120 850 -80 {lab=VSS}
N 150 -220 150 -180 {lab=VSS}
N 230 -220 230 -180 {lab=VSS}
N 50 -320 50 -280 {lab=VSS}
N 50 -220 50 -180 {lab=GND}
N 150 -330 150 -280 {lab=VDD}
N 230 -330 230 -280 {lab=Vin}
C {inverter.sym} 740 -90 0 0 {name=x1}
C {lab_wire.sym} 680 -310 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 680 -100 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -210 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 860 -210 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {capa-2.sym} 850 -150 0 0 {name=C1
m=1
value=100f
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 850 -80 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 20 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 50 -250 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 150 -250 0 0 {name=V2 value=3.3 savecurrent=false}
C {vsource.sym} 230 -250 0 0 {name=Vin value="PULSE(0 3.3 0 5n 5n 1u 2u)" savecurrent=false}
C {lab_wire.sym} 150 -180 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -180 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 50 -320 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {gnd.sym} 50 -180 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 150 -330 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -330 0 0 {name=p10 sig_type=std_logic lab=Vin}
C {code_shown.sym} 960 -570 0 0 {name=SPICE only_toplevel=false value="
*Parameters

.options TEMP = 27

.control
*Transient analysis
tran 0.1n 10u
save all
let VP=3.3
let per10 = Vp*0.1
let per50 = Vp*0.5
let per90 = Vp*0.9
meas tran t_rise  TRIG v(Vout) VAL=per10 rise=2  TARG v(Vout) VAL=per90 rise=2
meas tran t_fall  TRIG v(Vout) VAL=per90 fall=2  TARG v(Vout) VAL=per10 fall=2
meas tran t_delay  TRIG v(Vin) VAL=per50 rise=1 TARG v(Vout) VAL=per50 fall=1
echo tran measurements
print t_delay
print t_rise
print t_fall
echo

set filetype=ascii
write results.txt v(Vin) v(Vout) time
.endc
.end
"}
