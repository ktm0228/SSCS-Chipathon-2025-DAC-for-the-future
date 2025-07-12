v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -90 50 -50 {lab=GND}
N 50 -190 50 -150 {lab=vss}
N 110 -190 110 -150 {lab=vdd}
N 170 -190 170 -150 {lab=in}
N 110 -90 110 -50 {lab=vss}
N 240 -240 290 -240 {lab=in}
N 340 -320 340 -280 {lab=vdd}
N 340 -200 340 -160 {lab=vss}
N 390 -240 450 -240 {lab=out}
N 170 -90 170 -50 {lab=vss}
C {vsource.sym} 50 -120 0 0 {name=V1 value=0 savecurrent=false}
C {lab_wire.sym} 50 -180 0 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 110 -180 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 170 -180 0 0 {name=p3 sig_type=std_logic lab=in}
C {gnd.sym} 50 -50 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 110 -60 0 0 {name=p4 sig_type=std_logic lab=vss}
C {vsource.sym} 110 -120 0 0 {name=V3 value=3.3 savecurrent=false}
C {vsource.sym} 170 -120 0 0 {name=VIN value=3.3 savecurrent=true
}
C {inv/inv.sym} 440 -220 0 0 {name=x1}
C {lab_wire.sym} 270 -240 0 0 {name=p5 sig_type=std_logic lab=in
}
C {lab_wire.sym} 440 -240 0 0 {name=p7 sig_type=std_logic lab=out
}
C {lab_wire.sym} 340 -300 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 340 -170 0 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 170 -60 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/code_shown.sym} -570 -690 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -570 -580 0 0 {name=NGSPICE only_toplevel=true
value="


.control
save all

** Set sources

alter @VIN[DC] = 0
alter @VIN[PULSE] = [ 0 3.3 0 100p 100p 500n 1u ] 

** Simulations

op
dc vin 0 3.3 0.01
tran 1n 10u

** Plots

setplot DC
plot v(out)

setplot TRAN
plot v(in) v(out) 

setplot TRAN
let idd = v3#branch
plot idd

setplot OP

write inv_tb.raw
.endc
"}
C {launcher.sym} 290 -390 0 0 {name=h1
descr="Annotate OP"
tclcommand = "set show_hidden_texts 1; xschem annotate_op"

}
