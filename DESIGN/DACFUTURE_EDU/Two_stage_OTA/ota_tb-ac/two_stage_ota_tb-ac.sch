v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -300 520 -280 {
lab=GND}
N 600 -300 600 -280 {
lab=GND}
N 600 -380 600 -360 {
lab=v_ss}
N 1420 -570 1420 -420 {
lab=v_ss}
N 1270 -650 1350 -650 {
lab=v_out}
N 1290 -650 1290 -530 {
lab=v_out}
N 900 -510 1220 -510 {
lab=v_out}
N 900 -600 900 -510 {
lab=v_out}
N 900 -640 970 -640 {
lab=v_out}
N 700 -510 700 -380 {
lab=v_ss}
N 600 -380 700 -380 {
lab=v_ss}
N 700 -660 700 -570 {
lab=v_in}
N 700 -660 970 -660 {
lab=v_in}
N 520 -760 520 -360 {
lab=v_dd}
N 1050 -380 1090 -380 {
lab=v_ss}
N 700 -380 1050 -380 {
lab=v_ss}
N 900 -640 900 -600 {lab=v_out}
N 1220 -510 1290 -510 {lab=v_out}
N 1290 -530 1290 -510 {lab=v_out}
N 1120 -610 1120 -380 {lab=v_ss}
N 1090 -380 1120 -380 {lab=v_ss}
N 1120 -770 1120 -730 {lab=v_dd}
N 520 -860 520 -760 {lab=v_dd}
N 520 -860 1160 -860 {lab=v_dd}
N 1160 -860 1160 -730 {lab=v_dd}
N 1120 -860 1120 -830 {lab=v_dd}
N 1120 -380 1420 -380 {lab=v_ss}
N 1420 -420 1420 -380 {lab=v_ss}
N 1350 -650 1420 -650 {lab=v_out}
N 1420 -650 1420 -630 {lab=v_out}
N 940 -680 970 -680 {lab=#net1}
N 940 -700 970 -700 {lab=#net2}
C {devices/code_shown.sym} 0 -120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 0 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write two_stage_ota_tb-ac.raw
set appendwrite

ac dec 101 1k 100MEG
write two_stage_ota_tb-ac.raw
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
C {devices/vsource.sym} 520 -330 0 0 {name=Vdd value=3.3}
C {devices/gnd.sym} 520 -280 0 0 {name=l3 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="(c) 2024-2025 H. Pretl, Apache-2.0 license"}
C {devices/launcher.sym} 680 -160 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 920 -160 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_pin.sym} 520 -380 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 600 -330 0 0 {name=Vss value=0}
C {devices/gnd.sym} 600 -280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/capa.sym} 1420 -600 0 0 {name=C1
value=20p}
C {devices/lab_wire.sym} 1350 -650 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 700 -540 0 0 {name=Vin value="dc 1.65 ac 1"}
C {devices/lab_wire.sym} 760 -660 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {devices/isource.sym} 1120 -800 0 0 {name=I0 value=20u pwl(0 0 10u 0 11u 20u)"}
C {devices/spice_probe.sym} 820 -660 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 1300 -650 0 0 {name=p6 attrs=""}
C {/foss/designs/SSCS-Chipathon-2025-DAC-for-the-future/DESIGN/DACFUTURE_EDU/Two_stage_OTA/two_stage_ota.sym} 1120 -670 0 0 {name=x1}
C {noconn.sym} 940 -700 0 0 {name=l2}
C {noconn.sym} 940 -680 0 0 {name=l4}
