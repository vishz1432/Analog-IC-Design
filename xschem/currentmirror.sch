v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 -0 -250 100 {lab=GND}
N 120 -0 120 100 {lab=GND}
N 50 0 120 -0 {lab=GND}
N 50 30 50 100 {lab=GND}
N -420 -20 -420 30 {lab=#net1}
N -420 -30 -420 -20 {lab=#net1}
N 50 -70 50 -30 {lab=#net2}
N 50 -70 210 -70 {lab=#net2}
N 210 -70 220 -70 {lab=#net2}
N 220 -70 220 20 {lab=#net2}
N 220 80 220 100 {lab=GND}
N -60 100 -60 110 {lab=GND}
N -420 -90 -420 -30 {lab=#net1}
N -420 -90 -70 -90 {lab=#net1}
N -70 -90 -70 -0 {lab=#net1}
N -100 -0 -0 0 {lab=#net1}
N -0 0 10 0 {lab=#net1}
N -140 -90 -140 -30 {lab=#net1}
N -250 -0 -140 -0 {lab=GND}
N -140 30 -140 100 {lab=GND}
N -420 90 -420 100 {lab=GND}
N -420 100 -240 100 {lab=GND}
N -240 100 220 100 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -120 0 0 1 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -420 60 2 0 {name=In value=50u}
C {vsource.sym} 220 50 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {gnd.sym} -60 110 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -780 -330 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL 
  OP
  DC Vds 0 1.8 0.05
  PLOT abs(vds#branch)
  AC DEC 100 100 1000
  PLOT "1/vm(vds#branch)"
.ENDC
"}
C {devices/code.sym} 150 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 30 0 0 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
