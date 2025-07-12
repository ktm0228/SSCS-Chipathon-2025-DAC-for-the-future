v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -50 350 -20 {lab=vss}
N 350 -160 350 -130 {lab=vdd}
N 414 -90 453 -90 {lab=selb}
N 260 -90 300 -90 {lab=en}
C {ipin.sym} 60 -90 0 0 {name=p1 lab=en
}
C {ipin.sym} 60 -60 0 0 {name=p2 lab=in}
C {opin.sym} 40 -30 0 0 {name=p3 lab=out}
C {iopin.sym} 40 -150 0 0 {name=p4 lab=vdd}
C {iopin.sym} 40 -120 0 0 {name=p5 lab=vss}
C {DACFUTURE_EDU/inv/inv.sym} 450 -70 0 0 {name=x3}
C {lab_wire.sym} 350 -150 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 450 -90 0 0 {name=p11 sig_type=std_logic lab=enb}
C {lab_wire.sym} 350 -20 0 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 290 -90 0 0 {name=p13 sig_type=std_logic lab=en
}
