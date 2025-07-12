v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 -90 110 -30 {lab=b3}
N 110 -30 110 -20 {lab=b3}
N 290 -90 290 -20 {lab=b2}
N 480 -90 480 -20 {lab=b1}
N 670 -90 670 -20 {lab=b0}
N 400 -350 410 -350 {lab=vdd}
N 400 -350 400 -310 {lab=vdd}
N 510 -350 520 -350 {lab=vss}
N 520 -350 520 -310 {lab=vss}
N 480 -200 480 -150 {lab=#net1}
N 440 -200 440 -150 {lab=en_b1}
N 460 -550 460 -500 {lab=out_dac}
N 210 -350 220 -350 {lab=vdd}
N 210 -350 210 -310 {lab=vdd}
N 320 -350 330 -350 {lab=vss}
N 330 -350 330 -310 {lab=vss}
N 290 -200 290 -150 {lab=#net2}
N 250 -200 250 -150 {lab=en_b2}
N 270 -550 270 -500 {lab=out_dac}
N 30 -350 40 -350 {lab=vdd}
N 30 -350 30 -310 {lab=vdd}
N 140 -350 150 -350 {lab=vss}
N 150 -350 150 -310 {lab=vss}
N 110 -200 110 -150 {lab=#net3}
N 70 -200 70 -150 {lab=en_b3}
N 90 -550 90 -500 {lab=out_dac}
N 90 -550 460 -550 {lab=out_dac}
N 460 -550 670 -550 {lab=out_dac}
N 670 -550 670 -150 {lab=out_dac}
C {symbols/cap_mim_2f0fF.sym} 670 -120 0 0 {name=C0
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 480 -120 0 0 {name=C1
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 290 -120 0 0 {name=C2
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=2}
C {symbols/cap_mim_2f0fF.sym} 110 -120 0 0 {name=C3
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=4}
C {DACFUTURE_EDU/transmission_gate/transmission_gate.sym} 460 -350 3 0 {name=x1}
C {lab_wire.sym} 400 -310 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 520 -310 0 0 {name=p2 sig_type=std_logic lab=vss}
C {lab_wire.sym} 440 -170 0 0 {name=p3 sig_type=std_logic lab=en_b1}
C {DACFUTURE_EDU/transmission_gate/transmission_gate.sym} 270 -350 3 0 {name=x2}
C {lab_wire.sym} 210 -310 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 330 -310 0 0 {name=p5 sig_type=std_logic lab=vss}
C {lab_wire.sym} 250 -170 0 0 {name=p6 sig_type=std_logic lab=en_b2}
C {DACFUTURE_EDU/transmission_gate/transmission_gate.sym} 90 -350 3 0 {name=x3}
C {lab_wire.sym} 30 -310 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 150 -310 0 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_wire.sym} 70 -170 0 0 {name=p9 sig_type=std_logic lab=en_b3}
C {ipin.sym} -140 -420 0 0 {name=p10 lab=en_b1}
C {ipin.sym} -140 -390 0 0 {name=p11 lab=en_b2}
C {ipin.sym} -140 -360 0 0 {name=p12 lab=en_b3}
C {lab_wire.sym} 110 -40 0 0 {name=p13 sig_type=std_logic lab=b3}
C {lab_wire.sym} 290 -40 0 0 {name=p14 sig_type=std_logic lab=b2}
C {lab_wire.sym} 110 -40 0 0 {name=p15 sig_type=std_logic lab=b3}
C {lab_wire.sym} 480 -40 0 0 {name=p16 sig_type=std_logic lab=b1}
C {lab_wire.sym} 670 -40 0 0 {name=p17 sig_type=std_logic lab=b0}
C {ipin.sym} -140 -330 0 0 {name=p18 lab=b3}
C {ipin.sym} -140 -300 0 0 {name=p19 lab=b2}
C {ipin.sym} -140 -330 0 0 {name=p20 lab=b3}
C {ipin.sym} -140 -270 0 0 {name=p21 lab=b1}
C {ipin.sym} -140 -240 0 0 {name=p22 lab=b0}
C {iopin.sym} -160 -210 0 0 {name=p23 lab=vss}
C {iopin.sym} -160 -180 0 0 {name=p24 lab=vdd}
C {opin.sym} -160 -150 0 0 {name=p25 lab=out_dac}
C {lab_wire.sym} 370 -550 0 0 {name=p26 sig_type=std_logic lab=out_dac}
C {ipin.sym} -140 -450 0 0 {name=p27 lab=reset_cap}
