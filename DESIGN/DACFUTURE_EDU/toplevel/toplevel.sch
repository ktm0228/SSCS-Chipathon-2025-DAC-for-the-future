v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1190 -370 1240 -370 {lab=comp_en}
N 1170 -350 1240 -350 {lab=enable_ota}
N 1170 -370 1190 -370 {lab=comp_en}
N 1170 -330 1240 -330 {lab=vp}
N 1170 -310 1240 -310 {lab=vn}
N 1540 -320 1590 -320 {lab=out_stage2}
N 1540 -360 1590 -360 {lab=out_stage1}
N 1590 -320 1610 -320 {lab=out_stage2}
N 1590 -360 1610 -360 {lab=out_stage1}
N 1390 -280 1390 -250 {lab=vss}
N 1390 -440 1390 -400 {lab=iota}
N 1430 -440 1430 -400 {lab=iota}
N 250 -700 250 -660 {lab=vdd}
N 250 -500 250 -470 {lab=vss}
N 280 -500 280 -470 {lab=iota}
N 300 -500 300 -470 {lab=icap}
N 320 -500 320 -470 {lab=ires}
N 400 -580 440 -580 {lab=vref}
N 30 -620 100 -620 {lab=enable_ota}
N 30 -540 100 -540 {lab=enable_iosc}
N 300 -470 300 -450 {lab=icap}
N 320 -470 390 -470 {lab=ires}
N 300 -450 390 -450 {lab=icap}
N 280 -470 280 -430 {lab=iota}
N 280 -430 390 -430 {lab=iota}
N 250 -390 250 -350 {lab=vdd}
N 400 -250 460 -250 {lab=out_dac}
N 310 -150 310 -110 {lab=vss}
N 280 -150 280 -80 {lab=b0}
N 280 -80 320 -80 {lab=b0}
N 260 -150 260 -60 {lab=b1}
N 260 -60 320 -60 {lab=b1}
N 240 -150 240 -40 {lab=b2}
N 240 -40 320 -40 {lab=b2}
N 220 -150 220 -20 {lab=b3}
N 220 -20 320 -20 {lab=b3}
N 40 -270 100 -270 {lab=en_b1}
N 40 -250 100 -250 {lab=en_b2}
N 40 -230 100 -230 {lab=en_b3}
N 870 -540 870 -500 {lab=vdd}
N 870 -400 870 -360 {lab=vss}
N 660 -470 720 -470 {lab=seln}
N 660 -450 720 -450 {lab=ires}
N 660 -430 720 -430 {lab=out_stage2}
N 1020 -450 1090 -450 {lab=vn}
N 870 -340 870 -300 {lab=vdd}
N 870 -200 870 -160 {lab=vss}
N 660 -270 720 -270 {lab=selp}
N 660 -250 720 -250 {lab=out_dac}
N 660 -230 720 -230 {lab=vin}
N 1020 -250 1090 -250 {lab=vp}
N 580 -450 660 -450 {lab=ires}
N 580 -450 580 -390 {lab=ires}
N 580 -330 580 -290 {lab=vss}
N 550 -360 560 -360 {lab=vss}
N 550 -360 550 -310 {lab=vss}
N 550 -310 580 -310 {lab=vss}
N 580 -290 580 -270 {lab=vss}
N 40 -290 100 -290 {lab=reset}
N 1310 -70 1310 -40 {lab=vss}
N 1310 -180 1310 -150 {lab=vdd}
N 1220 -110 1260 -110 {lab=out_stage2}
N 1490 -70 1490 -40 {lab=vss}
N 1490 -180 1490 -150 {lab=vdd}
N 1554 -110 1593 -110 {lab=reset}
N 1370 -110 1440 -110 {lab=#net1}
N 1610 -320 1680 -320 {lab=out_stage2}
N 1980 -320 2030 -320 {lab=fclk}
N 1830 -400 1830 -370 {lab=vdd}
N 1830 -270 1830 -240 {lab=vss}
N 250 -1000 250 -960 {lab=vdd}
N 250 -780 250 -750 {lab=vss}
N 50 -880 100 -880 {lab=M0}
N 50 -860 100 -860 {lab=M1}
N 400 -910 470 -910 {lab=enable_ota}
N 400 -890 470 -890 {lab=comp_en}
N 400 -870 470 -870 {lab=enable_iosc}
N 400 -850 470 -850 {lab=enable_dac}
N 400 -830 470 -830 {lab=enable_vco}
C {DACFUTURE_EDU/Two_stage_OTA/two_stage_ota.sym} 1390 -340 0 0 {name=x1}
C {lab_pin.sym} 1390 -440 0 0 {name=p1 sig_type=std_logic lab=iota}
C {lab_pin.sym} 1430 -440 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1390 -260 0 0 {name=p9 sig_type=std_logic lab=vss}
C {DACFUTURE_EDU/Voltage_Reference/voltage_reference.sym} 250 -580 0 0 {name=x2}
C {lab_pin.sym} 250 -700 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 -480 0 0 {name=p11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 90 -620 0 0 {name=p12 sig_type=std_logic lab=enable_ota}
C {lab_wire.sym} 90 -540 0 0 {name=p13 sig_type=std_logic lab=enable_iosc}
C {lab_wire.sym} 1220 -370 0 0 {name=p3 sig_type=std_logic lab=comp_en}
C {lab_wire.sym} 1230 -350 0 0 {name=p4 sig_type=std_logic lab=enable_ota}
C {lab_wire.sym} 1210 -330 0 0 {name=p5 sig_type=std_logic lab=vp
}
C {lab_wire.sym} 1210 -310 0 0 {name=p6 sig_type=std_logic lab=vn}
C {lab_wire.sym} 1610 -360 0 0 {name=p7 sig_type=std_logic lab=out_stage1}
C {lab_wire.sym} 1610 -320 0 0 {name=p8 sig_type=std_logic lab=out_stage2}
C {lab_wire.sym} 440 -580 0 0 {name=p14 sig_type=std_logic lab=vref}
C {lab_wire.sym} 380 -470 0 0 {name=p15 sig_type=std_logic lab=ires}
C {lab_wire.sym} 380 -450 0 0 {name=p16 sig_type=std_logic lab=icap}
C {lab_wire.sym} 380 -430 0 0 {name=p17 sig_type=std_logic lab=iota
}
C {DACFUTURE_EDU/capacitor_dac_3bit/capdac_3bit.sym} 250 -250 0 0 {name=x3}
C {lab_pin.sym} 250 -700 0 0 {name=p18 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 -390 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 -390 0 0 {name=p20 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 440 -580 0 0 {name=p21 sig_type=std_logic lab=vref}
C {lab_pin.sym} 310 -120 2 0 {name=p22 sig_type=std_logic lab=vss}
C {lab_wire.sym} 90 -270 0 0 {name=p23 sig_type=std_logic lab=en_b1}
C {lab_wire.sym} 90 -250 0 0 {name=p24 sig_type=std_logic lab=en_b2}
C {lab_wire.sym} 90 -230 0 0 {name=p25 sig_type=std_logic lab=en_b3}
C {lab_wire.sym} 320 -80 0 0 {name=p26 sig_type=std_logic lab=b0}
C {lab_wire.sym} 320 -60 0 0 {name=p27 sig_type=std_logic lab=b1}
C {lab_wire.sym} 320 -40 0 0 {name=p28 sig_type=std_logic lab=b2}
C {lab_wire.sym} 320 -20 0 0 {name=p29 sig_type=std_logic lab=b3}
C {lab_wire.sym} 460 -250 0 0 {name=p30 sig_type=std_logic lab=out_dac}
C {DACFUTURE_EDU/analog_mux/analog_mux.sym} 870 -450 0 0 {name=x4}
C {lab_pin.sym} 870 -530 0 0 {name=p31 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 -700 0 0 {name=p32 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 870 -370 0 0 {name=p33 sig_type=std_logic lab=vss}
C {lab_wire.sym} 710 -470 0 0 {name=p34 sig_type=std_logic lab=seln}
C {lab_wire.sym} 610 -450 0 0 {name=p35 sig_type=std_logic lab=ires}
C {lab_wire.sym} 710 -430 0 0 {name=p36 sig_type=std_logic lab=out_stage2}
C {lab_wire.sym} 1070 -450 0 0 {name=p37 sig_type=std_logic lab=vn}
C {DACFUTURE_EDU/analog_mux/analog_mux.sym} 870 -250 0 0 {name=x5}
C {lab_pin.sym} 870 -330 0 0 {name=p38 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 870 -170 0 0 {name=p39 sig_type=std_logic lab=vss}
C {lab_wire.sym} 710 -270 0 0 {name=p40 sig_type=std_logic lab=selp}
C {lab_wire.sym} 710 -250 0 0 {name=p41 sig_type=std_logic lab=out_dac}
C {lab_wire.sym} 710 -230 0 0 {name=p42 sig_type=std_logic lab=vin}
C {lab_wire.sym} 1070 -250 0 0 {name=p43 sig_type=std_logic lab=vp}
C {symbols/ppolyf_u_1k.sym} 580 -360 0 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 580 -280 0 0 {name=p44 sig_type=std_logic lab=vss}
C {lab_wire.sym} 90 -290 0 0 {name=p45 sig_type=std_logic lab=reset}
C {DACFUTURE_EDU/inv/inv.sym} 1410 -90 0 0 {name=x6}
C {lab_wire.sym} 1310 -170 0 0 {name=p46 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1310 -40 0 0 {name=p48 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1250 -110 0 0 {name=p49 sig_type=std_logic lab=out_stage2
}
C {DACFUTURE_EDU/inv/inv.sym} 1590 -90 0 0 {name=x7}
C {lab_wire.sym} 1490 -170 0 0 {name=p50 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1590 -110 0 0 {name=p51 sig_type=std_logic lab=reset}
C {lab_wire.sym} 1490 -40 0 0 {name=p52 sig_type=std_logic lab=vss}
C {DACFUTURE_EDU/divider/divider.sym} 1830 -320 0 0 {name=x8}
C {lab_pin.sym} 1830 -400 0 0 {name=p47 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1830 -250 0 0 {name=p53 sig_type=std_logic lab=vss}
C {lab_wire.sym} 2020 -320 0 0 {name=p54 sig_type=std_logic lab=fclk}
C {DACFUTURE_EDU/decoder/decoder.sym} 250 -870 0 0 {name=x9}
C {lab_pin.sym} 250 -990 0 0 {name=p55 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 250 -760 0 0 {name=p56 sig_type=std_logic lab=vss}
C {lab_wire.sym} 80 -880 0 0 {name=p57 sig_type=std_logic lab=M0}
C {lab_wire.sym} 80 -860 0 0 {name=p58 sig_type=std_logic lab=M1}
C {lab_wire.sym} 470 -910 0 0 {name=p59 sig_type=std_logic lab=enable_ota}
C {lab_wire.sym} 470 -890 0 0 {name=p60 sig_type=std_logic lab=comp_en}
C {lab_wire.sym} 470 -870 0 0 {name=p61 sig_type=std_logic lab=enable_iosc}
C {lab_wire.sym} 470 -850 0 0 {name=p62 sig_type=std_logic lab=enable_dac}
C {lab_wire.sym} 470 -830 0 0 {name=p63 sig_type=std_logic lab=enable_vco}
