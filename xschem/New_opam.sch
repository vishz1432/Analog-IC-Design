v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -370 -40 -370 130 {lab=vin}
N -370 -40 -280 -40 {lab=vin}
N -220 -40 -150 -40 {lab=#net1}
N -90 -40 -40 -40 {lab=virt}
N -60 -160 -10 -160 {lab=virt}
N -60 -160 -60 -40 {lab=virt}
N 90 -30 150 -30 {lab=vout}
N 50 -160 110 -160 {lab=vout}
N 110 -160 110 -30 {lab=vout}
N -40 -20 -40 130 {lab=vcm}
N 20 10 20 230 {lab=GND}
N -370 230 20 230 {lab=GND}
N -40 190 -40 230 {lab=GND}
N -370 180 -370 230 {lab=GND}
C {symb_1.sym} 200 100 0 0 {name=x1}
C {res.sym} -120 -40 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 20 -160 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -250 -40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -370 150 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -40 160 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -370 230 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -330 -40 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 150 -30 0 0 {name=p2 sig_type=std_logic lab=vout}
C {lab_wire.sym} -40 -160 0 0 {name=p3 sig_type=std_logic lab=virt
}
C {lab_wire.sym} -40 10 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -570 -510 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.op
.control
save all
set appendwrite
AC DEC 100 1 10e6
MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
LET f3db = gain_db - 3.0
print f3db
MEAS AC fpole WHEN vdb(vout)=f3db FALL=1
MEAS AC fzero WHEN vdb(vout)=f3db RISE=1
MEAS AC fmid WHEN vdb(vout)=gain_db
**phase
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
*MEAS AC phase_mid FIND phase_deg AT=fmid
LET zero_ph = phase_mid-45
LET zero_ph WHEN phase_deg=phase_zero_ph
TRAN 1u 5m
* ngspice commands
"}
