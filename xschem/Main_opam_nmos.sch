v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -520 230 -520 310 {lab=GND}
N -400 160 -390 160 {lab=vn1}
N -390 160 -280 160 {lab=vn1}
N -220 160 -100 160 {lab=vn2}
N -520 160 -450 160 {lab=nmic}
N 20 -370 60 -370 {lab=virt}
N 20 -140 20 160 {lab=virt}
N 20 -240 60 -240 {lab=virt}
N 120 -370 250 -370 {lab=vout}
N 210 210 210 250 {lab=GND}
N 320 150 450 150 {lab=vout}
N 460 150 460 210 {lab=vout}
N 450 150 460 150 {lab=vout}
N -40 160 110 160 {lab=virt}
N 60 -240 100 -240 {lab=virt}
N 160 -240 250 -240 {lab=vout}
N -520 220 -520 230 {lab=GND}
N 110 190 120 190 {lab=vcm}
N 250 -370 340 -370 {lab=vout}
N 250 -240 340 -240 {lab=vout}
N 210 250 210 270 {lab=GND}
N 20 -370 20 -140 {lab=virt}
N 340 -370 340 -130 {lab=vout}
N 340 -130 340 150 {lab=vout}
N 230 -10 230 100 {lab=vib5u}
N 210 -160 210 90 {lab=vdda}
N 210 -160 290 -160 {lab=vdda}
N 230 -160 230 -70 {lab=vdda}
N 290 -100 290 -70 {lab=GND}
N 110 160 120 160 {lab=virt}
N 120 120 120 160 {lab=virt}
N 80 190 110 190 {lab=vcm}
N 80 190 80 310 {lab=vcm}
C {vsource.sym} -520 190 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} -420 160 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -250 160 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -70 160 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -520 310 0 0 {name=l1 lab=GND}
C {res.sym} 130 -240 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 90 -370 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 80 340 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 80 370 0 0 {name=l3 lab=GND}
C {gnd.sym} 210 270 0 0 {name=l4 lab=GND}
C {capa.sym} 460 240 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 460 270 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -480 160 0 0 {name=vnmic sig_type=std_logic lab=nmic
}
C {lab_wire.sym} -330 160 0 0 {name=p1 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -150 160 0 0 {name=p2 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 430 150 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 20 100 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 80 260 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {opam.sym} 550 300 0 0 {name=x1}
C {isource.sym} 230 -40 0 0 {name=I0 value=5u}
C {vsource.sym} 290 -130 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 290 -70 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 250 -160 0 0 {name=p6 sig_type=std_logic lab=vdda}
C {lab_wire.sym} 230 40 0 0 {name=p7 sig_type=std_logic lab=vib5u}
C {devices/code.sym} 720 -470 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -630 -540 0 0 {name=COMMANDS
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
*AC DEC 100 1 1e9
.endc


"
* ngspice commands
"}
