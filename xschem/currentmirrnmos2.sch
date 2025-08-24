v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 -240 -390 -140 {lab=GND}
N -20 -240 -20 -140 {lab=GND}
N -90 -240 -20 -240 {lab=GND}
N -90 -210 -90 -140 {lab=GND}
N -560 -260 -560 -210 {lab=#net1}
N -560 -270 -560 -260 {lab=#net1}
N -90 -310 -90 -270 {lab=#net2}
N -90 -310 70 -310 {lab=#net2}
N 70 -310 80 -310 {lab=#net2}
N 80 -310 80 -220 {lab=#net2}
N 80 -160 80 -140 {lab=GND}
N -200 -140 -200 -130 {lab=GND}
N -560 -330 -560 -270 {lab=#net1}
N -560 -330 -210 -330 {lab=#net1}
N -210 -330 -210 -240 {lab=#net1}
N -240 -240 -140 -240 {lab=#net1}
N -140 -240 -130 -240 {lab=#net1}
N -280 -330 -280 -270 {lab=#net1}
N -390 -240 -280 -240 {lab=GND}
N -280 -210 -280 -140 {lab=GND}
N -560 -150 -560 -140 {lab=GND}
N -560 -140 -380 -140 {lab=GND}
N -380 -140 80 -140 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -260 -240 0 1 {name=M1
L=4
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -560 -180 2 0 {name=In value=50u}
C {vsource.sym} 80 -190 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {gnd.sym} -200 -130 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -110 -240 0 0 {name=M2
L=4
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 240 -540 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -800 -510 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.CONTROL 
  OP
  DC Vds 0 1.8 0.05
  PLOT abs(vds#branch)
  AC DEC 100 100 1000
  PLOT "1/vm(vds#branch)"
.ENDC
* ngspice commands
"}
