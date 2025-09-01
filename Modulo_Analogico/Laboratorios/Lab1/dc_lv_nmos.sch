v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 460 -940 1260 -540 {flags=graph
y1=0

ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.25431565
x2=1.2456844
divx=5
subdivx=1
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
autoload=0
y2=1m}
N 180 -220 180 -200 {
lab=GND}
N 180 -290 180 -280 {
lab=#net1}
N 310 -260 310 -200 {
lab=GND}
N 440 -260 440 -200 {
lab=GND}
N 310 -290 380 -290 {
lab=GND}
N 380 -290 380 -200 {
lab=GND}
N 310 -400 340 -400 {
lab=#net2}
N 400 -400 440 -400 {
lab=#net3}
N 180 -290 270 -290 {
lab=#net1}
N 310 -400 310 -320 {
lab=#net2}
N 440 -400 440 -320 {
lab=#net3}
C {devices/code_shown.sym} 0 -930 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all
save @m.xm1.m0[gm]
save @m.xm1.m0[gds]
save @m.xm1.m0[vth]
save @m.xm1.m0[cgg]
save @m.xm1.m0[cgd]
save @m.xm1.m0[vdss]
save @m.xm1.m0[fug]
save @m.xm1.m0[rg]
save @m.xm1.m0[sid]
op
write dc_lv_nmos.raw
set appendwrite
dc Vds 0 3.3 0.01 Vgs 0 3.3 0.1
write dc_lv_nmos.raw
quit
.endc
"}
C {devices/gnd.sym} 310 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 -200 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 180 -250 0 0 {name=Vgs value=1.65}
C {devices/vsource.sym} 440 -290 0 0 {name=Vds value=3.3}
C {devices/gnd.sym} 440 -200 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 380 -200 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 370 -400 1 0 {name=Vd}
C {devices/launcher.sym} 640 -300 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dc_lv_nmos.raw dc"
}
C {devices/launcher.sym} 640 -340 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 640 -260 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 120 -490 0 1 {name=r2 node=@m.xm1.m0[gds]
descr="gds="}
C {devices/ngspice_probe.sym} 420 -400 0 0 {name=r1}
C {devices/ngspice_probe.sym} 180 -290 0 0 {name=r3}
C {devices/ngspice_get_value.sym} 120 -520 0 1 {name=r4 node=@m.xm1.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 120 -460 0 1 {name=r5 node=v(@m.xm1.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 220 -520 0 1 {name=r6 node=@m.xm1.m0[cgg]
descr="cgs="}
C {symbols/nfet_03v3.sym} 290 -290 0 0 {name=M1
L=0.28u
W=1.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/code_shown.sym} 30 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/ngspice_get_value.sym} 220 -470 0 1 {name=r9 node=@m.xm1.m0[cgd]
descr="cgd="}
