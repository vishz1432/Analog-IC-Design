v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -120 60 -50 {lab=GND}
N -180 -310 -40 -310 {lab=#net1}
N 20 -310 200 -310 {lab=vim}
N -250 -50 210 -50 {lab=GND}
N 210 -150 210 -50 {lab=GND}
N 60 -310 60 -180 {lab=vim}
N 340 -240 430 -240 {lab=vop}
N -180 -310 -180 -210 {lab=#net1}
N -250 -140 -250 -50 {lab=GND}
N -250 -140 -180 -140 {lab=GND}
N -180 -150 -180 -140 {lab=GND}
N 200 -310 200 -190 {lab=vim}
N 200 -190 210 -190 {lab=vim}
N 250 -240 250 -200 {lab=vop}
N 250 -240 340 -240 {lab=vop}
N -40 -50 -40 -30 {lab=GND}
N 250 -140 250 -30 {lab=GND}
N -40 -30 250 -30 {lab=GND}
N -420 -200 -220 -200 {lab=#net2}
N -420 -200 -420 -110 {lab=#net2}
N -640 -160 -640 -100 {lab=#net3}
N -640 -40 -640 -30 {lab=GND}
N -270 -440 -10 -440 {lab=#net4}
N -270 -440 -270 -160 {lab=#net4}
N 50 -440 320 -440 {lab=vop}
N 320 -440 320 -240 {lab=vop}
N -640 -160 -580 -160 {lab=#net3}
N -520 -160 -400 -160 {lab=#net5}
N -340 -160 -220 -160 {lab=#net4}
C {res.sym} -10 -310 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 60 -150 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 60 -310 0 0 {name=p1 sig_type=std_logic lab=vim}
C {lab_wire.sym} 430 -240 0 0 {name=p2 sig_type=std_logic lab=vop}
C {vcvs.sym} -180 -180 0 0 {name=E1 value=1000}
C {vcvs.sym} 250 -170 0 0 {name=E2 value=1}
C {gnd.sym} -40 -30 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -910 -720 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.op
.control
save all
set appendwrite
AC DEC 100 1 10e6
*MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
*LET f3db = gain_db - 3.0
*print f3db
*MEAS AC fpole WHEN vdb(vout)=f3db FALL=1
*MEAS AC fzero WHEN vdb(vout)=f3db RISE=1
*MEAS AC fmid WHEN vdb(vout)=gain_db
**phase
*LET phase_deg = cph(vout)*180/PI
*MEAS AC phase_zero FIND phase_deg AT=fzero
*MEAS AC phase_pole FIND phase_deg AT=fpole
*MEAS AC phase_mid FIND phase_deg AT=fmid
*LET zero_ph = phase_mid-45
*LET zero_ph WHEN phase_deg=phase_zero_ph
*TRAN 1u 5m
plot v(vop)
* ngspice commands
"}
C {vsource.sym} -420 -80 0 0 {name=V1 value=1.5 savecurrent=false}
C {vsource.sym} -640 -70 0 0 {name=V2 value="0 AC 1" savecurrent=false}
C {gnd.sym} -640 -30 0 0 {name=l2 lab=GND}
C {gnd.sym} -420 -50 0 0 {name=l3 lab=GND}
C {res.sym} 20 -440 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -370 -160 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -550 -160 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
