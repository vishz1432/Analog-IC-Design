v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -10 0 70 {lab=GND}
N 120 -80 130 -80 {lab=vn1}
N 130 -80 240 -80 {lab=vn1}
N 300 -80 420 -80 {lab=vn2}
N 0 -80 70 -80 {lab=nmic}
N 540 -380 580 -380 {lab=virt}
N 540 -250 580 -250 {lab=virt}
N 640 -380 770 -380 {lab=vout}
N 770 -380 770 -130 {lab=vout}
N 770 -130 900 -130 {lab=vout}
N 910 -130 910 -70 {lab=vout}
N 900 -130 910 -130 {lab=vout}
N 580 -250 620 -250 {lab=virt}
N 680 -250 770 -250 {lab=vout}
N -0 -20 -0 -10 {lab=GND}
N -0 -10 0 70 {lab=GND}
N 120 -80 130 -80 {lab=vn1}
N 130 -80 240 -80 {lab=vn1}
N 300 -80 420 -80 {lab=vn2}
N 0 -80 70 -80 {lab=nmic}
N 540 -380 580 -380 {lab=virt}
N 540 -250 580 -250 {lab=virt}
N 640 -380 770 -380 {lab=vout}
N 770 -380 770 -130 {lab=vout}
N 680 -70 680 -30 {lab=GND}
N 770 -130 900 -130 {lab=vout}
N 910 -130 910 -70 {lab=vout}
N 900 -130 910 -130 {lab=vout}
N 580 -250 620 -250 {lab=virt}
N 680 -250 770 -250 {lab=vout}
N -0 -20 -0 -10 {lab=GND}
N 750 -130 770 -130 {lab=vout}
N 480 -80 590 -80 {lab=#net1}
N 590 -120 590 -80 {lab=#net1}
N 600 -90 600 -0 {lab=virt}
N 600 0 600 70 {lab=virt}
N 540 -380 540 -30 {lab=virt}
N 540 -30 600 -30 {lab=virt}
N 590 -120 620 -120 {lab=#net1}
N 600 -100 620 -100 {lab=virt}
N 600 -100 600 -80 {lab=virt}
N 750 -130 750 -110 {lab=vout}
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
C {gnd.sym} 680 -30 0 0 {name=l4 lab=GND}
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
C {vsource.sym} 0 -50 0 0 {name=V3 value="0 AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 100 -80 3 0 {name=R4
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 270 -80 3 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 450 -80 3 0 {name=R5
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {res.sym} 650 -250 3 0 {name=R6
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 610 -380 1 0 {name=C5
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 600 100 0 0 {name=V4 value=1.5 savecurrent=false}
C {gnd.sym} 600 130 0 0 {name=l6 lab=GND}
C {gnd.sym} 680 -30 0 0 {name=l7 lab=GND}
C {capa.sym} 910 -40 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 910 -10 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 40 -80 0 0 {name=vnmic1 sig_type=std_logic lab=nmic
}
C {lab_wire.sym} 190 -80 0 0 {name=p6 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 370 -80 0 0 {name=p7 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 840 -130 0 0 {name=p8 sig_type=std_logic lab=vout}
C {lab_wire.sym} 540 -140 0 0 {name=p9 sig_type=std_logic lab=virt}
C {lab_wire.sym} 600 0 0 0 {name=p10 sig_type=std_logic lab=vcm}
C {symb_1.sym} 860 20 0 0 {name=x1}
