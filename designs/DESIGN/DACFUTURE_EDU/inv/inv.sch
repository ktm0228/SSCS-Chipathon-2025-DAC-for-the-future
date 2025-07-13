v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Inverter
} 510 -450 0 0 0.4 0.4 {}
N 550 -240 550 -170 {lab=out}
N 460 -270 510 -270 {lab=in}
N 460 -270 460 -140 {lab=in}
N 460 -140 510 -140 {lab=in}
N 550 -210 610 -210 {lab=out}
N 390 -210 460 -210 {lab=in}
N 550 -110 550 -60 {lab=vss}
N 550 -350 550 -300 {lab=vdd}
N 550 -270 570 -270 {lab=vdd}
N 570 -320 570 -270 {lab=vdd}
N 550 -320 570 -320 {lab=vdd}
N 550 -140 570 -140 {lab=vss}
N 570 -140 570 -80 {lab=vss}
N 550 -80 570 -80 {lab=vss}
C {title.sym} 160 60 0 0 {name=l1 author="Jatin"}
C {symbols/nfet_03v3.sym} 530 -140 0 0 {name=M1
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 530 -270 0 0 {name=M2
L=0.28u
W=1u
nf=2
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
C {lab_wire.sym} 550 -330 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 550 -80 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 600 -210 0 0 {name=p3 sig_type=std_logic lab=out
}
C {lab_wire.sym} 430 -210 0 0 {name=p4 sig_type=std_logic lab=in

}
C {ipin.sym} 270 -240 0 0 {name=p5 lab=in
}
C {opin.sym} 250 -220 0 0 {name=p6 lab=out
}
C {iopin.sym} 250 -200 0 0 {name=p7 lab=vdd}
C {iopin.sym} 250 -180 0 0 {name=p8 lab=vss}
