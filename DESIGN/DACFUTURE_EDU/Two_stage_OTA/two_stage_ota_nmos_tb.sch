v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 20 -390 820 10 {flags=graph
y1=-85
y2=94
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"vo db20()\\""

sim_type=ac
autoload=0
hilight_wave=-1
x2=10}
B 2 850 -390 1650 10 {flags=graph
y1=-160
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=5
node=ph(vo)

sim_type=ac
autoload=0
hilight_wave=-1
x2=10}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
GBW: [to_eng [xschem raw value GBW 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]]
)} 710 -670 0 0 0.4 0.4 {floater=1}
N 220 -660 260 -660 {
lab=#net1}
N 40 -710 40 -550 {
lab=#net1}
N 40 -710 220 -710 {
lab=#net1}
N 40 -490 40 -470 {
lab=GND}
N 220 -490 220 -470 {
lab=GND}
N 220 -570 300 -570 {
lab=#net2}
N 220 -570 220 -550 {
lab=#net2}
N 220 -620 260 -620 {
lab=GND}
N 220 -620 220 -600 {
lab=GND}
N 140 -610 140 -570 {
lab=#net2}
N 300 -610 300 -570 {
lab=#net2}
N 220 -710 220 -660 {
lab=#net1}
N 300 -750 300 -670 {
lab=vim}
N 140 -750 140 -670 {
lab=vip}
N 140 -570 220 -570 {
lab=#net2}
N 180 -620 220 -620 {
lab=GND}
N 180 -660 220 -660 {
lab=#net1}
N 300 -760 380 -760 {lab=vim}
N 300 -760 300 -750 {lab=vim}
N 140 -840 370 -840 {lab=vip}
N 140 -840 140 -750 {lab=vip}
N 400 -590 400 -550 {
lab=VSS}
N 400 -490 400 -470 {
lab=GND}
N 480 -590 480 -550 {
lab=VDD}
N 480 -490 480 -470 {
lab=GND}
N 670 -750 670 -710 {lab=GND}
N 670 -830 670 -810 {lab=vo}
N 380 -820 380 -760 {lab=vim}
N 590 -870 670 -870 {lab=vo}
N 670 -870 670 -830 {lab=vo}
N 370 -910 370 -840 {lab=vip}
N 370 -910 440 -910 {lab=vip}
N 380 -830 380 -820 {lab=vim}
N 380 -830 440 -830 {lab=vim}
C {devices/code_shown.sym} 810 -920 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.param vdd=3.3 vcm=1.65 cl=20p
.option savecurrents
.control
    save all
    op
    show
    write two_stage_ota_nmos_tb.raw
    set appendwrite
    ac dec 20 1 10e9
    let vo_mag = abs(v(vo))
    let vo_phase_margin = phase(v(vo)) * 180/pi + 180
    meas ac A0 max vo_mag
    let ref = A0/sqrt(2)
    meas ac BW when vo_mag=ref fall=1
    let GBW = A0BW
    meas ac UGF when vo_mag=1 fall=1
    meas ac PM find vo_phase_margin when vo_mag=1
    echo $&A0 $&GBW $&UGF $&PM
    remzerovec
    write two_stage_ota_nmos_tb.raw
.endc


"}
C {devices/launcher.sym} 650 -480 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 650 -440 0 0 {name=h27
descr="Load AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac
"
}
C {devices/lab_wire.sym} 620 -870 0 1 {name=p11 sig_type=std_logic lab=vo}
C {devices/vcvs.sym} 140 -640 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 300 -640 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 40 -520 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 220 -520 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 40 -470 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 220 -470 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 220 -600 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 500 -810 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 400 -520 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 400 -470 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 480 -520 0 0 {name=V1 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 400 -590 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 480 -590 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 480 -470 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 670 -780 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 670 -710 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 230 -840 0 1 {name=p4 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 320 -760 0 1 {name=p6 sig_type=std_logic lab=vim}
C {devices/isource.sym} 520 -950 0 0 {name=IB value=10u}
C {devices/lab_wire.sym} 500 -930 2 1 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 520 -980 2 1 {name=p3 sig_type=std_logic lab=VDD}
C {DACFUTURE_EDU/Two_stage_OTA/two_stage_ota_nmos.sym} 500 -730 0 0 {name=x1}
