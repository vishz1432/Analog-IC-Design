v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Vim} -515 -576 2 1 0.2 0.2 {}
N -1100 -580 -1100 -390 {lab=vm}
N -1100 -330 -1100 -250 {lab=vcm}
N -1100 -250 -800 -250 {lab=vcm}
N -800 -330 -800 -250 {lab=vcm}
N -840 -340 -840 -290 {lab=GND}
N -1230 -290 -840 -290 {lab=GND}
N -1230 -290 -1230 -200 {lab=GND}
N -1230 -340 -1140 -340 {lab=GND}
N -1230 -340 -1230 -290 {lab=GND}
N -1370 -460 -1370 -210 {lab=vindiff}
N -1370 -460 -840 -460 {lab=vindiff}
N -840 -460 -840 -380 {lab=vindiff}
N -1140 -460 -1140 -380 {lab=vindiff}
N -1370 -150 -1370 -90 {lab=GND}
N -990 -250 -990 -80 {lab=vcm}
N -270 -540 -270 -500 {lab=vo}
N -270 -450 -270 -380 {lab=GND}
N -690 -800 -690 -720 {lab=GND}
N -690 -910 -690 -860 {lab=vdda}
N -690 -910 -370 -910 {lab=vdda}
N -370 -910 -370 -850 {lab=vdda}
N -800 -510 -490 -510 {lab=vp}
N -800 -510 -800 -390 {lab=vp}
N -1100 -580 -490 -580 {lab=vm}
N -370 -790 -370 -600 {lab=#net1}
N -380 -600 -370 -600 {lab=#net1}
N -400 -910 -400 -610 {lab=vdda}
N -290 -550 -270 -550 {lab=vo}
N -400 -490 -400 -410 {lab=GND}
N -270 -550 -270 -540 {lab=vo}
C {vcvs.sym} -1100 -360 0 0 {name=E1 value=-0.5
}
C {vcvs.sym} -800 -360 0 0 {name=E3 value=0.5
}
C {vsource.sym} -990 -50 0 0 {name=Vcm value= "0 AC 0" savecurrent=false}
C {vsource.sym} -1370 -180 0 0 {name=V2 value= "0.9 AC 1" savecurrent=false}
C {vsource.sym} -690 -830 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -1230 -200 0 0 {name=l1 lab=GND}
C {gnd.sym} -1370 -90 0 0 {name=l2 lab=GND}
C {gnd.sym} -990 -20 0 0 {name=l3 lab=GND}
C {isource.sym} -370 -820 0 0 {name=I0 value=5u}
C {gnd.sym} -400 -410 0 0 {name=l4 lab=GND}
C {capa.sym} -270 -480 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -270 -380 0 0 {name=l5 lab=GND}
C {gnd.sym} -690 -720 0 0 {name=l6 lab=GND}
C {devices/code.sym} -200 -880 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -1380 -1190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.temp 27
.control
save all
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
save @m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xmcp.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xmcm.msky130_fd_pr__pfet_01v8_lvt[gm]
op
AC DEC 100 1 1e9
set appendwrite
write TB_opa_curr_mirr.raw
.endc
* ngspice commands
"}
C {lab_wire.sym} -1270 -460 0 0 {name=p1 sig_type=std_logic lab=vindiff}
C {lab_wire.sym} -510 -910 0 0 {name=p2 sig_type=std_logic lab=vdda}
C {lab_wire.sym} -830 -250 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {opam.sym} -60 -400 0 0 {name=x1}
C {lab_wire.sym} -1030 -580 0 0 {name=p3 sig_type=std_logic lab=vm}
C {lab_wire.sym} -710 -510 0 0 {name=p5 sig_type=std_logic lab=vp}
C {lab_wire.sym} -270 -530 0 0 {name=p6 sig_type=std_logic lab=vo}
