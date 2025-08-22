v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -190 330 -190 {lab=input}
N 280 -190 280 -90 {lab=input}
N 280 -90 330 -90 {lab=input}
N 370 -160 370 -120 {lab=#net1}
N 370 -190 450 -190 {lab=VDD}
N 450 -220 450 -190 {lab=VDD}
N 370 -220 450 -220 {lab=VDD}
N 370 -90 450 -90 {lab=VSS}
N 450 -90 450 -60 {lab=VSS}
N 370 -60 450 -60 {lab=VSS}
N 230 -140 280 -140 {lab=input}
N 370 -250 370 -220 {lab=VDD}
N 370 -60 370 -30 {lab=VSS}
N 620 -160 620 -120 {lab=output}
N 620 -190 700 -190 {lab=VDD}
N 700 -220 700 -190 {lab=VDD}
N 620 -220 700 -220 {lab=VDD}
N 620 -90 700 -90 {lab=VSS}
N 700 -90 700 -60 {lab=VSS}
N 620 -60 700 -60 {lab=VSS}
N 620 -250 620 -220 {lab=VDD}
N 620 -60 620 -30 {lab=VSS}
N 620 -140 710 -140 {lab=output}
N 530 -190 580 -190 {lab=#net1}
N 530 -190 530 -90 {lab=#net1}
N 530 -90 580 -90 {lab=#net1}
N 370 -140 530 -140 {lab=#net1}
C {iopin.sym} 23.73554848682278 -240 0 0 {name=p1 lab=VDD
}
C {iopin.sym} 23.73554848682278 -200 0 0 {name=p2 lab=VSS
}
C {sky130_fd_pr/pfet_01v8.sym} 350 -190 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 350 -90 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 370 -250 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -30 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 600 -190 0 0 {name=M3
W=20
L=0.15
nf=20
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 600 -90 0 0 {name=M4
W=20
L=0.15
nf=20
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 620 -250 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 620 -30 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {ipin.sym} 230 -140 0 0 {name=p9 lab=input
}
C {opin.sym} 710 -140 0 0 {name=p3 lab=output}
