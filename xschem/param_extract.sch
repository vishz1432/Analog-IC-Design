v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -90 -150 -40 {lab=vgds}
N -20 -90 -20 -60 {lab=vgds}
N -90 -30 -60 -30 {lab=vgds}
N -90 -90 -90 -30 {lab=vgds}
N -20 -30 60 -30 {lab=GND}
N 60 -30 60 40 {lab=GND}
N -150 20 -150 140 {lab=GND}
N -80 140 -80 160 {lab=GND}
N -20 -0 -20 60 {lab=#net1}
N -20 120 -20 140 {lab=GND}
N -150 140 -80 140 {lab=GND}
N -80 140 -20 140 {lab=GND}
N 60 40 60 140 {lab=GND}
N -20 140 60 140 {lab=GND}
N -150 -90 -20 -90 {lab=vgds}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -40 -30 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -150 -10 0 0 {name=Vds value=1 savecurrent=false}
C {vsource.sym} -20 90 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -80 160 0 0 {name=l1 lab=GND}
C {devices/code.sym} 260 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -510 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL 
  OP
  DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
  DC Vds 0 1.8 0.05 TEMP -40 120 20
  PLOT abs(vds#branch)
  plot sqrt(2*abs(vds#branch))
  plot log (abs(vds#branch))
.ENDC
"}
C {lab_wire.sym} -140 -90 0 0 {name=p1 sig_type=std_logic lab=vgds}
