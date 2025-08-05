v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 60 570 860 970 {flags=graph
y1=-43
y2=60
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
B 2 890 570 1690 970 {flags=graph
y1=-180
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
)} 750 290 0 0 0.4 0.4 {floater=1}
N 260 300 300 300 {
lab=#net1}
N 80 250 80 410 {
lab=#net1}
N 80 250 260 250 {
lab=#net1}
N 80 470 80 490 {
lab=GND}
N 260 470 260 490 {
lab=GND}
N 260 390 340 390 {
lab=#net2}
N 260 390 260 410 {
lab=#net2}
N 260 340 300 340 {
lab=GND}
N 260 340 260 360 {
lab=GND}
N 180 350 180 390 {
lab=#net2}
N 340 350 340 390 {
lab=#net2}
N 260 250 260 300 {
lab=#net1}
N 340 210 340 290 {
lab=vim}
N 180 210 180 290 {
lab=vip}
N 180 390 260 390 {
lab=#net2}
N 220 340 260 340 {
lab=GND}
N 220 300 260 300 {
lab=#net1}
N 340 200 420 200 {lab=vim}
N 340 200 340 210 {lab=vim}
N 180 120 410 120 {lab=vip}
N 180 120 180 210 {lab=vip}
N 440 370 440 410 {
lab=VSS}
N 440 470 440 490 {
lab=GND}
N 520 370 520 410 {
lab=VDD}
N 520 470 520 490 {
lab=GND}
N 800 200 800 240 {lab=GND}
N 410 70 410 120 {lab=vip}
N 410 70 420 70 {lab=vip}
N 400 30 420 30 {lab=#net3}
N 400 50 420 50 {lab=#net4}
N 400 50 420 50 {lab=#net4}
N 800 120 800 140 {lab=vo}
N 420 90 420 140 {lab=vim}
N 420 140 420 200 {lab=vim}
N 570 -20 570 -0 {lab=VDD}
N 510 -80 570 -80 {lab=VSS}
N 720 80 800 80 {lab=vo}
N 800 80 800 120 {lab=vo}
C {devices/lab_wire.sym} 610 0 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 850 40 0 0 {name=COMMANDS
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
    write two_stage_ota_tb.raw
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
    write two_stage_ota_tb.raw
.endc


"}
C {devices/launcher.sym} 690 480 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 700 530 0 0 {name=h27
descr="Load AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac
"
}
C {devices/lab_wire.sym} 750 80 0 1 {name=p11 sig_type=std_logic lab=vo}
C {devices/vcvs.sym} 180 320 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 340 320 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 80 440 0 0 {name=Vdm value="dc 0 ac 1" savecurrent=false}
C {devices/vsource.sym} 260 440 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 80 490 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 260 490 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 260 360 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 570 120 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 440 440 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} 440 490 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 520 440 0 0 {name=V1 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 440 370 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 370 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 520 490 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 800 170 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 800 240 0 0 {name=l2 lab=GND}
C {devices/isource.sym} 570 -50 2 0 {name=IB value=25e-6}
C {devices/lab_wire.sym} 270 120 0 1 {name=p4 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 360 200 0 1 {name=p6 sig_type=std_logic lab=vim}
C {DACFUTURE_EDU/Two_stage_OTA/two_stage_ota.sym} 570 60 0 0 {name=x1}
C {noconn.sym} 400 30 0 0 {name=l4}
C {noconn.sym} 400 50 0 0 {name=l8}
C {noconn.sym} 720 40 0 1 {name=l9}
C {devices/lab_wire.sym} 510 -80 0 0 {name=p3 sig_type=std_logic lab=VSS}
