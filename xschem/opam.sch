v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -0 120 -0 {lab=ib5u}
N -220 -60 -110 -60 {lab=ib5u}
N -110 -60 -110 -30 {lab=ib5u}
N -110 30 -110 90 {lab=AVSS}
N -190 90 -110 90 {lab=AVSS}
N -110 -50 -30 -50 {lab=ib5u}
N -30 -50 -30 0 {lab=ib5u}
N -160 0 -110 -0 {lab=AVSS}
N -160 0 -160 90 {lab=AVSS}
N 160 -0 240 -0 {lab=AVSS}
N 240 -0 240 90 {lab=AVSS}
N -110 90 240 90 {lab=AVSS}
N 160 30 160 90 {lab=AVSS}
N 30 -130 30 -100 {lab=#net1}
N 30 -100 310 -100 {lab=#net1}
N 310 -130 310 -100 {lab=#net1}
N 160 -100 160 -30 {lab=#net1}
N 30 -350 30 -190 {lab=vom}
N 310 -350 310 -190 {lab=vout}
N 310 -260 420 -260 {lab=vout}
N -0 -470 380 -470 {lab=AVDD}
N 380 -470 380 -380 {lab=AVDD}
N 310 -470 310 -410 {lab=AVDD}
N -80 -470 -0 -470 {lab=AVDD}
N 30 -470 30 -410 {lab=AVDD}
N -80 -160 -10 -160 {lab=Vip}
N 350 -160 440 -160 {lab=Vim}
N 120 -380 120 -290 {lab=vom}
N 30 -290 120 -290 {lab=vom}
N 30 -160 90 -160 {lab=#net1}
N 260 -160 310 -160 {lab=#net1}
N 260 -160 260 -110 {lab=#net1}
N 260 -110 260 -100 {lab=#net1}
N 90 -160 260 -160 {lab=#net1}
N -30 -380 -10 -380 {lab=AVDD}
N -30 -470 -30 -380 {lab=AVDD}
N -10 -380 30 -380 {lab=AVDD}
N 350 -380 360 -380 {lab=AVDD}
N 70 -380 260 -380 {lab=vom}
N 300 -380 350 -380 {lab=AVDD}
N 360 -380 380 -380 {lab=AVDD}
N 300 -410 310 -410 {lab=AVDD}
N 300 -350 310 -350 {lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 140 0 0 0 {name=Mtail
L=1
W=5 
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -90 0 0 1 {name=M1
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} -190 90 2 0 {name=p1 lab=AVSS}
C {iopin.sym} -220 -60 2 0 {name=p2 lab=ib5u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 -160 0 0 {name=Mip
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 330 -160 0 1 {name=M4
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} -80 -470 2 0 {name=p3 lab=AVDD
}
C {iopin.sym} -80 -160 2 0 {name=p4 lab=Vip}
C {iopin.sym} 420 -260 0 0 {name=p5 lab=vout}
C {iopin.sym} 440 -160 0 0 {name=p6 lab=Vim}
C {lab_wire.sym} 30 -250 0 0 {name=p7 sig_type=std_logic lab=vom}
C {devices/code.sym} -620 -550 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 50 -380 0 1 {name=Mcp
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 -380 0 0 {name=Mcm
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
