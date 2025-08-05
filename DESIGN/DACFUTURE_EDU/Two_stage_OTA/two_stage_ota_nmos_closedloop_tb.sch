v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -300 550 -280 {
lab=GND}
N 630 -300 630 -280 {
lab=GND}
N 630 -380 630 -360 {
lab=v_ss}
N 1120 -380 1330 -380 {
lab=v_ss}
N 1080 -830 1120 -830 {
lab=v_dd}
N 1080 -550 1080 -380 {
lab=v_ss}
N 1330 -530 1330 -380 {
lab=v_ss}
N 1330 -630 1330 -590 {
lab=v_out}
N 1250 -630 1330 -630 {
lab=v_out}
N 1250 -630 1250 -510 {
lab=v_out}
N 1180 -630 1250 -630 {
lab=v_out}
N 930 -510 1250 -510 {
lab=v_out}
N 930 -600 930 -510 {
lab=v_out}
N 930 -590 1000 -590 {
lab=v_out}
N 730 -510 730 -380 {
lab=v_ss}
N 630 -380 730 -380 {
lab=v_ss}
N 730 -660 730 -570 {
lab=v_in}
N 730 -660 1000 -660 {
lab=v_in}
N 1120 -830 1120 -810 {
lab=v_dd}
N 1120 -750 1120 -710 {
lab=#net1}
N 1080 -760 1080 -710 {
lab=v_dd}
N 550 -760 1080 -760 {
lab=v_dd}
N 550 -760 550 -360 {
lab=v_dd}
N 1080 -830 1080 -760 {
lab=v_dd}
N 1080 -380 1120 -380 {
lab=v_ss}
N 730 -380 1080 -380 {
lab=v_ss}
N 1080 -710 1080 -690 {lab=v_dd}
N 1120 -710 1120 -680 {lab=#net1}
N 1100 -680 1120 -680 {lab=#net1}
N 1170 -630 1180 -630 {lab=v_out}
N 1000 -590 1020 -590 {lab=v_out}
N 1000 -660 1020 -660 {lab=v_in}
N 1020 -670 1020 -660 {lab=v_in}
N 1080 -570 1080 -550 {lab=v_ss}
C {devices/code_shown.sym} 30 -750 0 0 {name=NGSPICE only_toplevel=true 
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.temp 27
.control
option sparse
save all
op
show
write two_stage_ota_nmos_closedloop_tb.raw
set appendwrite

ac dec 101 1k 100MEG
write two_stage_ota_nmos_closedloop_tb.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} 550 -330 0 0 {name=Vdd value=3.3
}
C {devices/gnd.sym} 550 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 190 -30 0 0 {name=l5 author="(c) 2024-2025 H. Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 710 -160 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 950 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 550 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 630 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 630 -280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 630 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 1330 -560 0 0 {name=C1
value=20p}
C {devices/lab_wire.sym} 1330 -630 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 730 -540 0 0 {name=Vin value="dc 1.65 ac 1"}
C {devices/lab_wire.sym} 790 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1120 -780 0 0 {name=I0 value=10u pwl(0 0 5u 0 6u 10u)"}
C {devices/spice_probe.sym} 850 -660 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1210 -630 0 0 {name=p6 attrs=""}
C {DACFUTURE_EDU/Two_stage_OTA/two_stage_ota_nmos.sym} 1080 -490 0 0 {name=x1}
