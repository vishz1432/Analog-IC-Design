v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -20 10 -20 {lab=vip}
N -50 20 10 20 {lab=vim}
N 50 -70 50 -30 {lab=vop}
N 50 -70 120 -70 {lab=vop}
N 50 30 50 60 {lab=vom}
N 50 60 130 60 {lab=vom}
C {vcvs.sym} 50 0 0 0 {name=E1 value=1000}
C {iopin.sym} 130 60 0 0 {name=p1 lab=vom}
C {iopin.sym} 120 -70 0 0 {name=p2 lab=vop}
C {iopin.sym} -50 -20 2 0 {name=p3 lab=vip}
C {iopin.sym} -50 20 2 0 {name=p4 lab=vim}
