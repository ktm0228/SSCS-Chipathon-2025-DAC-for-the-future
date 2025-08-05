v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -290 140 -210 {
lab=vmirr}
N 180 -320 260 -320 {
lab=vmirr}
N 200 -320 200 -270 {
lab=vmirr}
N 140 -270 200 -270 {
lab=vmirr}
N 360 -290 360 -210 {
lab=vofirst}
N 140 -150 140 -120 {
lab=vtail}
N 140 -120 220 -120 {
lab=vtail}
N 360 -150 360 -120 {
lab=vtail}
N 10 -80 70 -80 {
lab=ibn}
N 70 -80 70 -30 {
lab=ibn}
N 10 0 10 20 {
lab=VSS}
N 250 0 250 20 {
lab=VSS}
N 140 -370 140 -350 {
lab=VDD}
N 360 -370 360 -350 {
lab=VDD}
N 10 20 10 40 {
lab=VSS}
N 250 20 250 40 {
lab=VSS}
N 20 -390 300 -390 {
lab=VDD}
N 360 -390 360 -370 {
lab=VDD}
N 140 -390 140 -370 {
lab=VDD}
N 140 -180 150 -180 {
lab=VSS}
N 350 -180 360 -180 {
lab=VSS}
N 260 -320 290 -320 {
lab=vmirr}
N 330 -120 360 -120 {
lab=vtail}
N 330 -390 360 -390 {
lab=VDD}
N 250 -90 250 -60 {
lab=vtail}
N 10 -90 10 -60 {
lab=ibn}
N 250 -120 250 -90 {
lab=vtail}
N -30 40 -10 40 {
lab=VSS}
N 10 -110 10 -90 {
lab=ibn}
N 50 -30 100 -30 {
lab=ibn}
N -10 40 40 40 {
lab=VSS}
N 100 -30 200 -30 {
lab=ibn}
N 40 40 240 40 {
lab=VSS}
N 250 -30 250 0 {
lab=VSS}
N 10 -30 10 0 {
lab=VSS}
N 140 -350 140 -320 {
lab=VDD}
N 360 -350 360 -320 {
lab=VDD}
N -60 -390 20 -390 {
lab=VDD}
N -30 -140 10 -140 {lab=ibn}
N 10 -140 10 -110 {lab=ibn}
N 290 -320 320 -320 {lab=vmirr}
N 300 -120 330 -120 {lab=vtail}
N 300 -390 330 -390 {lab=VDD}
N 200 -30 210 -30 {lab=ibn}
N 240 40 250 40 {lab=VSS}
N 240 -120 250 -120 {lab=vtail}
N 220 -120 240 -120 {lab=vtail}
N 250 -120 300 -120 {lab=vtail}
N 360 -390 570 -390 {lab=VDD}
N 570 -390 570 -350 {lab=VDD}
N 570 -320 600 -320 {lab=VDD}
N 600 -390 600 -320 {lab=VDD}
N 570 -390 600 -390 {lab=VDD}
N 570 -290 570 -50 {lab=vo}
N 170 -30 170 10 {lab=ibn}
N 170 10 530 10 {lab=ibn}
N 530 -20 530 10 {lab=ibn}
N 250 40 570 40 {lab=VSS}
N 570 10 570 40 {lab=VSS}
N 570 -20 570 10 {lab=VSS}
N 360 -260 450 -260 {lab=vofirst}
N 450 -320 450 -260 {lab=vofirst}
N 450 -320 530 -320 {lab=vofirst}
N 570 -210 660 -210 {lab=vo}
N 450 -260 490 -260 {lab=vofirst}
N 550 -260 570 -260 {lab=vo}
C {devices/ipin.sym} 100 -180 0 0 {name=p1 lab=vip}
C {devices/ipin.sym} 400 -180 0 1 {name=p2 lab=vim}
C {devices/opin.sym} 660 -210 0 0 {name=p3 lab=vo
}
C {devices/iopin.sym} -60 -390 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} -30 40 2 0 {name=p5 lab=VSS}
C {devices/lab_wire.sym} 150 -180 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 350 -180 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 250 -90 0 1 {name=p17 sig_type=std_logic lab=vtail}
C {devices/lab_wire.sym} 230 -320 0 1 {name=p8 sig_type=std_logic lab=vmirr}
C {symbols/pfet_03v3.sym} 340 -320 0 0 {name=M2b
L=2u
W=31.45u
nf=7
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 160 -320 0 1 {name=M2a
L=2u
W=31.45u
nf=7
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 120 -180 0 0 {name=M1a
L=1u
W=3.34u
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
C {symbols/nfet_03v3.sym} 230 -30 0 0 {name=M0b
L=0.5u
W=3.4u
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
C {symbols/nfet_03v3.sym} 380 -180 0 1 {name=M1b
L=1u
W=3.34u
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
C {symbols/nfet_03v3.sym} 30 -30 0 1 {name=M0a
L=0.5u
W=1.7u
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
C {devices/iopin.sym} -30 -140 2 0 {name=p6 lab=ibn}
C {symbols/nfet_03v3.sym} 550 -20 0 0 {name=M4
L=1u
W=20.3u
nf=5
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
ffffffffq}
C {symbols/pfet_03v3.sym} 550 -320 0 0 {name=M3
L=0.5u
W=44.2u
nf=9
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/lab_wire.sym} 450 -260 0 1 {name=p9 sig_type=std_logic lab=vofirst}
C {devices/capa.sym} 520 -260 1 0 {name=C1
m=1
value=4.4p
footprint=1206
device="ceramic capacitor"}
