v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -80 320 -50 {lab=vss}
N 320 -190 320 -160 {lab=vdd}
N 230 -120 270 -120 {lab=in}
N 500 -80 500 -50 {lab=vss}
N 500 -190 500 -160 {lab=vdd}
N 564 -120 603 -120 {lab=fpulse}
N 380 -120 450 -120 {lab=#net1}
C {DACFUTURE_EDU/inv/inv.sym} 420 -100 0 0 {name=x6}
C {lab_wire.sym} 320 -180 0 0 {name=p46 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 320 -50 0 0 {name=p48 sig_type=std_logic lab=vss}
C {lab_wire.sym} 260 -120 0 0 {name=p49 sig_type=std_logic lab=in

}
C {DACFUTURE_EDU/inv/inv.sym} 600 -100 0 0 {name=x7}
C {lab_wire.sym} 500 -180 0 0 {name=p50 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 600 -120 0 0 {name=p51 sig_type=std_logic lab=fpulse}
C {lab_wire.sym} 500 -50 0 0 {name=p52 sig_type=std_logic lab=vss}
C {ipin.sym} 80 -160 0 0 {name=p2 lab=in}
C {iopin.sym} 80 -130 0 0 {name=p3 lab=vdd}
C {iopin.sym} 80 -100 0 0 {name=p1 lab=vss}
C {opin.sym} 60 -70 0 0 {name=p4 lab=out}
