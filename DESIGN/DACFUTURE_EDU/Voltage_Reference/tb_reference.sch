v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -680 300 -630 {lab=vdd}
N 450 -550 500 -550 {lab=vref}
N 300 -470 300 -430 {lab=vss}
N 330 -470 330 -430 {lab=vref_ota}
N 350 -470 350 -430 {lab=vref_cap}
N 370 -470 370 -430 {lab=vref_res}
N 100 -590 150 -590 {lab=en_ota}
N 100 -510 150 -510 {lab=en_osc}
N 180 -100 180 -60 {lab=GND}
N 180 -200 180 -160 {lab=vss}
N 330 -430 330 -350 {lab=vref_ota}
N 370 -430 530 -430 {lab=vref_res}
N 350 -430 350 -400 {lab=vref_cap}
N 350 -400 480 -400 {lab=vref_cap}
N 330 -290 330 -250 {lab=vss}
N 480 -340 480 -300 {lab=vss}
N 530 -370 530 -330 {lab=vss}
N 480 -340 480 -300 {lab=vss}
C {DACFUTURE_EDU/Voltage_Reference/voltage_reference.sym} 300 -550 0 0 {name=xi0
}
C {lab_wire.sym} 300 -660 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 130 -590 0 0 {name=p3 sig_type=std_logic lab=en_ota}
C {lab_wire.sym} 130 -510 0 0 {name=p4 sig_type=std_logic lab=en_osc}
C {lab_wire.sym} 490 -550 0 0 {name=p5 sig_type=std_logic lab=vref}
C {lab_wire.sym} 300 -440 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -560 -850 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"
}
C {devices/code_shown.sym} -560 -720 0 0 {name=NGSPICE only_toplevel=true
value="

.temp 27

.param supply = 3.3
.param tramp = 1u
.param tstep = tramp/100
.param tden_ota = 50*tramp
.param tden_ota1 = 51*tramp
.param tden_osc = 60*tramp
.param tden_osc1 = 61*tramp
.param tstop = 70*tramp

VDD vdd 0 PWL(0 0 tramp supply)
Ven_ota en_ota 0 PWL(0 0 tden_ota 0 tden_ota1 supply)
Ven_osc en_osc 0 PWL(0 0 tden_osc 0 tden_osc1 supply)

.op
.tran \{tstep\} \{tstop\}

.control

save all
save @m.xi0.xm1.m0[id] 

run

let current = @m.xi0.xm1.m0[id]
write en_sig.raw

.endc

"}
C {vsource.sym} 180 -130 0 0 {name=V1 value=0 savecurrent=false}
C {lab_wire.sym} 180 -190 0 0 {name=p1 sig_type=std_logic lab=vss}
C {gnd.sym} 180 -60 0 0 {name=l1 lab=GND}
C {launcher.sym} 630 -550 0 0 {name=h1
descr="Annotate OP"
tclcommand = "set show_hidden_texts 1; xschem annotate_op"

}
C {res.sym} 330 -320 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 330 -260 0 0 {name=p7 sig_type=std_logic lab=vss}
C {res.sym} 530 -400 0 0 {name=R3
value=50k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 530 -340 0 0 {name=p9 sig_type=std_logic lab=vss}
C {res.sym} 480 -370 0 0 {name=R4
value=50k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 480 -310 0 0 {name=p10 sig_type=std_logic lab=vss}
C {lab_wire.sym} 330 -380 0 0 {name=p11 sig_type=std_logic lab=vref_ota}
C {lab_wire.sym} 440 -400 0 0 {name=p12 sig_type=std_logic lab=vref_cap}
C {lab_wire.sym} 440 -430 0 0 {name=p13 sig_type=std_logic lab=vref_res}
C {noconn.sym} 100 -590 0 0 {name=l4}
C {noconn.sym} 100 -510 0 0 {name=l5}
