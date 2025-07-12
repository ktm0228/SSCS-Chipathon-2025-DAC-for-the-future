v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -320 70 -320 {lab=sel}
N 20 -120 70 -120 {lab=selb}
N 40 -280 70 -280 {lab=in1}
N 40 -80 70 -80 {lab=in0}
N 220 -50 220 -20 {lab=vss}
N 220 -180 220 -150 {lab=vdd}
N 220 -380 220 -350 {lab=vdd}
N 370 -300 420 -300 {lab=out}
N 420 -300 420 -100 {lab=out}
N 370 -100 420 -100 {lab=out}
N 20 -80 40 -80 {lab=in0}
N 20 -280 40 -280 {lab=in1}
N 220 -250 220 -220 {lab=vss}
N 420 -200 500 -200 {lab=out}
N 220 -440 220 -410 {lab=vss}
N 220 -550 220 -520 {lab=vdd}
N 284 -480 323 -480 {lab=selb}
N 130 -480 170 -480 {lab=sel}
C {DACFUTURE_EDU/transmission_gate/transmission_gate.sym} 220 -300 0 0 {name=x1}
C {DACFUTURE_EDU/transmission_gate/transmission_gate.sym} 220 -100 0 0 {name=x2}
C {lab_wire.sym} 220 -370 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 220 -170 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 220 -20 0 0 {name=p4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 220 -220 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 500 -200 0 0 {name=p5 sig_type=std_logic lab=out
}
C {lab_wire.sym} 50 -280 0 0 {name=p6 sig_type=std_logic lab=in1}
C {lab_wire.sym} 50 -80 0 0 {name=p7 sig_type=std_logic lab=in0}
C {lab_wire.sym} 50 -120 0 0 {name=p8 sig_type=std_logic lab=selb}
C {lab_wire.sym} 50 -320 0 0 {name=p9 sig_type=std_logic lab=sel
}
C {DACFUTURE_EDU/inv/inv.sym} 320 -460 0 0 {name=x3}
C {lab_wire.sym} 220 -540 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 320 -480 0 0 {name=p11 sig_type=std_logic lab=selb}
C {lab_wire.sym} 220 -410 0 0 {name=p12 sig_type=std_logic lab=vss}
C {lab_wire.sym} 160 -480 0 0 {name=p13 sig_type=std_logic lab=sel
}
C {ipin.sym} -160 -270 0 0 {name=p14 lab=sel}
C {ipin.sym} -160 -240 0 0 {name=p15 lab=in0
}
C {ipin.sym} -160 -210 0 0 {name=p16 lab=in1}
C {iopin.sym} -160 -180 0 0 {name=p17 lab=vdd}
C {iopin.sym} -160 -150 0 0 {name=p18 lab=vss}
C {opin.sym} -160 -120 0 0 {name=p20 lab=out}
