v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 580 -320 580 -300 {
lab=d}
N 460 -150 460 -120 {
lab=0}
N 770 -150 770 -120 {
lab=0}
N 680 -150 680 -120 {
lab=0}
N 580 -240 580 -210 {
lab=0}
N 680 -270 680 -210 {
lab=b}
N 460 -270 460 -210 {
lab=g}
N 460 -270 540 -270 {
lab=g}
N 580 -270 680 -270 {
lab=b}
N 580 -320 770 -320 {
lab=d}
N 770 -320 770 -210 {
lab=d}
N 580 -210 580 -120 {
lab=0}
N 850 -150 850 -120 {
lab=0}
N 850 -250 850 -210 {
lab=n}
N 460 -120 850 -120 {lab=0}
C {symbols/nfet_03v3.sym} 560 -270 0 0 {name=M1
L=\{lx\}
W=\{wx\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {title.sym} 160 -50 0 0 {name=l1 author="Kevin Kong"}
C {devices/code_shown.sym} 0 -850 0 0 {name=COMMANDS1 only_toplevel=false
value="
.param wx=5u lx=0.28u
.noise v(n) vg lin 1 1 1 1

.control
option numdgt = 3
set wr_singlescale
set wr_vecnames

compose l_vec  values 0.28u 0.29u
+ 0.3u 0.4u 0.5u 0.6u 0.7u 0.8u 0.9u 1u 2u 3u 4u 5u 50u 55u 60u
compose vg_vec start= 0 stop=3.301  step=25m
compose vd_vec start= 0 stop=3.301  step=25m
compose vb_vec start= 0 stop=-0.4 step=-0.2

foreach var1 $&l_vec
  alterparam lx=$var1
  reset
  foreach var2 $&vg_vec
    alter vg $var2
    foreach var3 $&vd_vec
      alter vd $var3
      foreach var4 $&vb_vec
        alter vb $var4
        run
        wrdata techsweep_nfet_03v3.txt noise1.all
        destroy all
        set appendwrite
        unset set wr_vecnames  
      end
    end 
  end
end
unset appendwrite

alterparam lx=0.28u
reset
op
show
write techsweep_nfet_03v3.raw
.endc
"}
C {devices/code_shown.sym} 480 -840 0 0 {name=COMMANDS2 only_toplevel=false
value="
.save @m.xm1.m0[capbd]
.save @m.xm1.m0[capbs]
.save @m.xm1.m0[cdd]
.save @m.xm1.m0[cgb]
.save @m.xm1.m0[cgd]
.save @m.xm1.m0[cgdo]
.save @m.xm1.m0[cgg]
.save @m.xm1.m0[cgs]
.save @m.xm1.m0[cgso]
.save @m.xm1.m0[css]
.save @m.xm1.m0[gds] 
.save @m.xm1.m0[gm] 
.save @m.xm1.m0[gmbs] 
.save @m.xm1.m0[id]
.save @m.xm1.m0[l]
.save @m.xm1.m0[vth]
.save @vb[dc]
.save @vd[dc]
.save @vg[dc]
.save onoise.m.xm1.m0.id
.save onoise.m.xm1.m0.1overf
.save g d b n
"}
C {devices/code_shown.sym} 760 -610 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} 460 -180 0 0 {name=vg value="DC 0.9 AC 1" savecurrent=false}
C {devices/vsource.sym} 770 -180 0 0 {name=vd value=0.9 savecurrent=false}
C {devices/vsource.sym} 680 -180 0 1 {name=vb value=0 savecurrent=false}
C {devices/lab_wire.sym} 510 -270 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/lab_wire.sym} 680 -320 0 0 {name=p2 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 680 -270 0 0 {name=p3 sig_type=std_logic lab=b}
C {devices/ccvs.sym} 850 -180 0 0 {name=Hn vnam=vd value=1}
C {devices/lab_wire.sym} 850 -250 0 0 {name=p4 sig_type=std_logic lab=n}
C {devices/lab_wire.sym} 510 -120 0 0 {name=p5 sig_type=std_logic lab=0}
C {devices/launcher.sym} 870 -420 0 0 {name=h1
descr="load op & annotate" 
tclcommand="xschem raw_read $netlist_dir/techsweep_nfet_03v3.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/launcher.sym} 870 -460 0 0 {name=h3
descr="save, netlist & simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/ngspice_get_value.sym} 1030 -160 0 0 {name=r1 node=v(@m.xm1.m0[vth])
descr="Vt="}
C {devices/ngspice_get_value.sym} 920 -280 0 0 {name=r2 node=@m.xm1.m0[cgg]
descr="cgg="}
C {devices/ngspice_get_expr.sym} 1030 -200 0 0 {name=r4 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.m0[gm]\}] / [ngspice::get_node \{@m.xm1.m0[gds]\}]]]"
descr="gm/gds="}
C {devices/ngspice_get_value.sym} 920 -240 0 0 {name=r3 node=@m.xm1.m0[capbd]
descr="capdb="}
C {devices/ngspice_get_value.sym} 920 -200 0 0 {name=r5 node=@m.xm1.m0[capbs]
descr="capbs="}
C {devices/ngspice_get_expr.sym} 1030 -240 0 0 {name=r6 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.m0[gm]\}] / [ngspice::get_node \{@m.xm1.m0[cgg]\}] / 6.283]]"
descr="fT_intrinsic="}
C {devices/ngspice_get_expr.sym} 1030 -280 0 0 {name=r7 
node="[format %.4g [expr [ngspice::get_node \{@m.xm1.m0[gm]\}] / [ngspice::get_node \{i(@m.xm1.m0[id])\}]]]"
descr="gm/ID="}
C {devices/ngspice_get_value.sym} 920 -160 0 0 {name=r8 node=@m.xm1.m0[cgdo]
descr="cgdo="}
C {devices/ngspice_get_value.sym} 920 -120 0 0 {name=r9 node=@m.xm1.m0[cgso]
descr="cgso="}
