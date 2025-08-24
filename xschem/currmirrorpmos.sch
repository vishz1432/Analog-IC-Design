v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -40 110 -40 {lab=#net1}
N -370 -70 -370 -0 {lab=#net1}
N -370 60 -370 110 {lab=GND}
N 340 -170 340 50 {lab=GND}
N 150 -10 150 110 {lab=#net2}
N 150 -40 230 -40 {lab=#net3}
N -150 -10 -150 20 {lab=#net1}
N -150 -110 -150 -70 {lab=#net3}
N -150 -110 150 -110 {lab=#net3}
N 150 -110 150 -70 {lab=#net3}
N -20 -230 -20 -110 {lab=#net3}
N -20 -290 330 -290 {lab=GND}
N 330 -290 340 -290 {lab=GND}
N 340 -290 340 -170 {lab=GND}
N -210 -40 -150 -40 {lab=#net3}
N -210 -90 -210 -40 {lab=#net3}
N -210 -90 -150 -90 {lab=#net3}
N 230 -100 230 -40 {lab=#net3}
N 150 -100 230 -100 {lab=#net3}
N -30 -40 -30 80 {lab=#net1}
N -370 -70 -250 -70 {lab=#net1}
N -250 -70 -250 20 {lab=#net1}
N -250 20 -150 20 {lab=#net1}
N -370 110 -10 110 {lab=GND}
N -300 80 -30 80 {lab=#net1}
N -300 -20 -300 80 {lab=#net1}
N -370 -20 -300 -20 {lab=#net1}
N 150 110 340 110 {lab=#net2}
N 180 -320 180 -290 {lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 -40 0 0 {name=M10
L=1
W=4
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -130 -40 0 1 {name=M1
L=1
W=4
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -370 30 0 0 {name=Id value=50u}
C {vsource.sym} 340 80 0 0 {name=Vds value="1 AC 1" savecurrentfalse}
C {gnd.sym} -10 110 0 0 {name=l1 lab=GND}
C {devices/code.sym} 410 -310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -520 -270 0 0 {name=COMMANDS
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
C {vsource.sym} -20 -260 2 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 180 -320 2 0 {name=l2 lab=GND}
