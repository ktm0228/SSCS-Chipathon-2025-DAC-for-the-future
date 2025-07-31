v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -320 210 -320 {lab=ibias}
N -20 -410 700 -410 {lab=vdd}
N 40 -410 40 -350 {lab=vdd}
N -10 -320 40 -320 {lab=vdd}
N -10 -410 -10 -320 {lab=vdd}
N 210 -320 260 -320 {lab=ibias}
N 300 -410 300 -350 {lab=vdd}
N 300 -320 320 -320 {lab=vdd}
N 320 -410 320 -320 {lab=vdd}
N 190 -280 190 -250 {lab=#net1}
N 190 -280 300 -280 {lab=#net1}
N 300 -290 300 -280 {lab=#net1}
N 300 -280 410 -280 {lab=#net1}
N 410 -280 410 -250 {lab=#net1}
N 190 -220 210 -220 {lab=vdd}
N 380 -220 410 -220 {lab=vdd}
N 110 -220 150 -220 {lab=vpos}
N 410 -190 410 -90 {lab=out_stage1}
N 230 -60 370 -60 {lab=#net2}
N 190 -190 190 -90 {lab=#net2}
N 190 -120 250 -120 {lab=#net2}
N 250 -120 250 -60 {lab=#net2}
N 190 -30 190 -10 {lab=vss}
N 190 -10 410 -10 {lab=vss}
N 410 -30 410 -10 {lab=vss}
N -30 -10 190 -10 {lab=vss}
N 700 -410 700 -340 {lab=vdd}
N 600 -320 660 -320 {lab=ibias}
N 410 -110 660 -110 {lab=out_stage1}
N 700 -290 700 -140 {lab=out_stage2}
N 410 -160 530 -160 {lab=out_stage1}
N 700 -230 740 -230 {lab=out_stage2}
N 150 -60 190 -60 {lab=vss}
N 150 -60 150 -10 {lab=vss}
N 410 -60 460 -60 {lab=vss}
N 410 -10 700 -10 {lab=vss}
N 460 -60 460 -10 {lab=vss}
N 700 -80 700 -10 {lab=vss}
N -30 -220 110 -220 {lab=vpos}
N -30 -180 450 -180 {lab=vneg}
N 450 -220 450 -180 {lab=vneg}
N -30 -260 40 -260 {lab=ibias}
N 530 -160 770 -160 {lab=out_stage1}
N 740 -230 780 -230 {lab=out_stage2}
N -30 -410 -20 -410 {lab=vdd}
N 40 -290 40 -260 {lab=ibias}
N 40 -280 90 -280 {lab=ibias}
N 90 -320 90 -280 {lab=ibias}
N 380 -410 380 -220 {lab=vdd}
N 700 -320 730 -320 {lab=vdd}
N 730 -410 730 -320 {lab=vdd}
N 700 -410 730 -410 {lab=vdd}
N 110 -360 110 -320 {lab=ibias}
N 110 -360 600 -360 {lab=ibias}
N 600 -360 600 -320 {lab=ibias}
N 700 -110 720 -110 {lab=vss}
N 720 -110 720 -10 {lab=vss}
N 700 -10 720 -10 {lab=vss}
N 860 -450 880 -450 {lab=compensation_enable}
N 860 -420 880 -420 {lab=enable}
N 210 -220 380 -220 {lab=vdd}
C {ipin.sym} 860 -420 0 0 {name=p4 lab=enable

}
C {ipin.sym} -30 -220 0 0 {name=p1 lab=vpos


}
C {ipin.sym} -30 -180 0 0 {name=p2 lab=vneg



}
C {iopin.sym} -30 -410 2 0 {name=p3 lab=vdd



}
C {iopin.sym} -30 -10 2 0 {name=p5 lab=vss




}
C {ipin.sym} 860 -450 0 0 {name=p6 lab=compensation_enable


}
C {opin.sym} 770 -160 0 0 {name=p7 lab=out_stage1
spice_ignore=short}
C {opin.sym} 780 -230 0 0 {name=p8 lab=out_stage2}
C {ipin.sym} -30 -260 0 0 {name=p9 lab=ibias


}
C {symbols/pfet_03v3.sym} 60 -320 0 1 {name=M0a
L=\{L0\}
W=\{W0\}
nf=\{nf0\}
m=1
ad="'int((nf0+1)/2) * W0/nf0 * 0.18u'"
pd="'2*int((nf0+1)/2) * (W0/nf0 + 0.18u)'"
as="'int((nf0+2)/2) * W0/nf0 * 0.18u'"
ps="'2*int((nf0+2)/2) * (W0/nf0 + 0.18u)'"
nrd="'0.18u / W0'" nrs="'0.18u / W0'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X}
C {symbols/pfet_03v3.sym} 280 -320 0 0 {name=M0b
L=\{L0\}
W=\{W0\}
nf=\{nf0\}
m=1
ad="'int((nf0+1)/2) * W0/nf0 * 0.18u'"
pd="'2*int((nf0+1)/2) * (W0/nf0 + 0.18u)'"
as="'int((nf0+2)/2) * W0/nf0 * 0.18u'"
ps="'2*int((nf0+2)/2) * (W0/nf0 + 0.18u)'"
nrd="'0.18u / W0'" nrs="'0.18u / W0'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X}
C {symbols/pfet_03v3.sym} 170 -220 0 0 {name=M1a
L=\{L1\}
W=\{W1\}
nf=\{nf1\}
m=1
ad="'int((nf1+1)/2) * W1/nf1 * 0.18u'"
pd="'2*int((nf1+1)/2) * (W1/nf1 + 0.18u)'"
as="'int((nf1+2)/2) * W1/nf1 * 0.18u'"
ps="'2*int((nf1+2)/2) * (W1/nf1 + 0.18u)'"
nrd="'0.18u / W1'" nrs="'0.18u / W1'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X}
C {symbols/pfet_03v3.sym} 430 -220 0 1 {name=M1b
L=\{L1\}
W=\{W1\}
nf=\{nf1\}
m=1
ad="'int((nf1+1)/2) * W1/nf1 * 0.18u'"
pd="'2*int((nf1+1)/2) * (W1/nf1 + 0.18u)'"
as="'int((nf1+2)/2) * W1/nf1 * 0.18u'"
ps="'2*int((nf1+2)/2) * (W1/nf1 + 0.18u)'"
nrd="'0.18u / W1'" nrs="'0.18u / W1'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X}
C {symbols/nfet_03v3.sym} 390 -60 0 0 {name=M2b
L=\{L2\}
W=\{W2\}
nf=\{nf2\}
m=1
ad="'int((nf2+1)/2) * W2/nf2 * 0.18u'"
pd="'2*int((nf2+1)/2) * (W2/nf2 + 0.18u)'"
as="'int((nf2+2)/2) * W2/nf2 * 0.18u'"
ps="'2*int((nf2+2)/2) * (W2/nf2 + 0.18u)'"
nrd="'0.18u / W2'" nrs="'0.18u / W2'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 210 -60 0 1 {name=M2a
L=\{L2\}
W=\{W2\}
nf=\{nf2\}
m=1
ad="'int((nf2+1)/2) * W2/nf2 * 0.18u'"
pd="'2*int((nf2+1)/2) * (W2/nf2 + 0.18u)'"
as="'int((nf2+2)/2) * W2/nf2 * 0.18u'"
ps="'2*int((nf2+2)/2) * (W2/nf2 + 0.18u)'"
nrd="'0.18u / W2'" nrs="'0.18u / W2'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 680 -320 0 0 {name=M6
L=\{L6\}
W=\{W6\}
nf=\{nf6\}
m=1
ad="'int((nf6+1)/2) * W6/nf6 * 0.18u'"
pd="'2*int((nf6+1)/2) * (W6/nf6 + 0.18u)'"
as="'int((nf6+2)/2) * W6/nf6 * 0.18u'"
ps="'2*int((nf6+2)/2) * (W6/nf6 + 0.18u)'"
nrd="'0.18u / W6'" nrs="'0.18u / W6'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X}
C {symbols/nfet_03v3.sym} 680 -110 0 0 {name=M5
L=\{L5\}
W=\{W5\}
nf=\{nf5\}
m=1
ad="'int((nf5+1)/2) * W5/nf5 * 0.18u'"
pd="'2*int((nf5+1)/2) * (W5/nf5 + 0.18u)'"
as="'int((nf5+2)/2) * W5/nf5 * 0.18u'"
ps="'2*int((nf5+2)/2) * (W5/nf5 + 0.18u)'"
nrd="'0.18u / W5'" nrs="'0.18u / W5'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X}
C {noconn.sym} 880 -450 0 1 {name=l1}
C {noconn.sym} 880 -420 0 1 {name=l2}
