v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1000 -730 1800 -330 {flags=graph
y1=-0.052512262
y2=1.9474877
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.5e-06
x2=6.5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -0 -10 0 70 {lab=GND}
N 120 -80 130 -80 {lab=vn1}
N 130 -80 240 -80 {lab=vn1}
N 300 -80 420 -80 {lab=vn2}
N 0 -80 70 -80 {lab=nmic}
N 540 -380 580 -380 {lab=virt}
N 540 -380 540 -80 {lab=virt}
N 540 -250 580 -250 {lab=virt}
N 640 -380 770 -380 {lab=vout}
N 770 -380 770 -130 {lab=vout}
N 670 -130 770 -130 {lab=vout}
N 670 -70 670 -30 {lab=GND}
N 770 -130 900 -130 {lab=vout}
N 910 -130 910 -70 {lab=vout}
N 900 -130 910 -130 {lab=vout}
N 600 -120 600 70 {lab=vcm}
N 600 -120 640 -120 {lab=vcm}
N 480 -80 630 -80 {lab=virt}
N 580 -250 620 -250 {lab=virt}
N 680 -250 770 -250 {lab=vout}
N -0 -20 -0 -10 {lab=GND}
C {vsource.sym} 0 -50 0 0 {name=V1 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 100 -80 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 270 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 450 -80 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 0 70 0 0 {name=l1 lab=GND}
C {vcvs.sym} 670 -100 0 0 {name=E1 value=1000}
C {res.sym} 650 -250 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 610 -380 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 600 100 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 600 130 0 0 {name=l3 lab=GND}
C {gnd.sym} 670 -30 0 0 {name=l4 lab=GND}
C {capa.sym} 910 -40 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 910 -10 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 40 -80 0 0 {name=vnmic sig_type=std_logic lab=nmic
}
C {lab_wire.sym} 190 -80 0 0 {name=p1 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 370 -80 0 0 {name=p2 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 840 -130 0 0 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 540 -140 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 600 0 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {simulator_commands_shown.sym} -90 -850 0 0 {name=COMMANDS
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
.endc


"}
