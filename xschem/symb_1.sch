v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -40 -40 -40 {lab=vip}
N -90 -0 -40 -0 {lab=vim}
N -0 -80 0 -50 {lab=#net1}
N -0 -80 80 -80 {lab=#net1}
N -0 10 100 10 {lab=#net2}
N 140 -80 210 -80 {lab=#net3}
N 210 -80 210 -70 {lab=#net3}
N 100 10 210 10 {lab=#net2}
N 210 -10 210 10 {lab=#net2}
N 210 -80 290 -80 {lab=#net3}
N 210 10 290 10 {lab=#net2}
N 290 -80 290 -60 {lab=#net3}
N 290 0 290 10 {lab=#net2}
N 330 -50 360 -50 {lab=vout}
N 330 -10 370 -10 {lab=vom}
C {vcvs.sym} 0 -20 0 0 {name=E1 value=1000}
C {iopin.sym} -90 -40 2 0 {name=p1 lab=vip}
C {iopin.sym} -90 0 2 0 {name=p2 lab=vim}
C {res.sym} 110 -80 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 -40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 290 -30 2 0 {name=E2 value=10}
C {iopin.sym} 360 -50 0 0 {name=p3 lab=vout 
}
C {iopin.sym} 370 -10 0 0 {name=p4 lab=vom}
