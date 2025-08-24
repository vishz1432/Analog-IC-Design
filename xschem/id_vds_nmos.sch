v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -20 -260 -0 {lab=vg}
N -260 -20 -180 -20 {lab=vg}
N -260 60 -260 90 {lab=GND}
N -260 90 70 90 {lab=GND}
N 70 60 70 90 {lab=GND}
N -140 10 -140 90 {lab=GND}
N -140 -20 -60 -20 {lab=GND}
N -60 -20 -60 40 {lab=GND}
N -140 40 -60 40 {lab=GND}
N -140 -90 -140 -50 {lab=vd}
N -140 -90 70 -90 {lab=vd}
N 70 -90 70 -0 {lab=vd}
N -160 90 -160 120 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -160 -20 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -260 30 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 70 30 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -160 120 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -240 -20 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -110 -90 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {simulator_commands_shown.sym} -510 -220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
 DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.1

.ENDC
"}
C {devices/code.sym} 150 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
