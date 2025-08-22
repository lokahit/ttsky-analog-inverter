v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -570 -1150 230 -750 {flags=graph
y1=0.10277785
y2=2.1027777
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.2761576e-08
x2=3.4256516e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
pinout
in"
color="4 5 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N -760 -580 -720 -580 {lab=out}
N -1070 -620 -1060 -620 {lab=in}
N -720 -580 -710 -580 {lab=out}
N -710 -580 -650 -580 {lab=out}
N -650 -580 -630 -580 {lab=out}
N -570 -580 -550 -580 {lab=pinout}
N -550 -580 -550 -570 {lab=pinout}
N -710 -580 -710 -550 {lab=out}
C {double_inverter.sym} -910 -600 0 0 {name=x1}
C {devices/launcher.sym} -1190 -710 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/code.sym} -1280 -600 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vsource.sym} -880 -730 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -810 -730 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} -810 -760 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -880 -760 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -620 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -600 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -550 -580 2 0 {name=p5 sig_type=std_logic lab=pinout

}
C {gnd.sym} -880 -700 0 0 {name=l1 lab=GND}
C {gnd.sym} -810 -700 0 0 {name=l2 lab=GND}
C {res.sym} -600 -580 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -550 -540 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -550 -510 0 0 {name=l3 lab=GND}
C {simulator_commands_shown.sym} -1100 -410 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n

.control
tran 100p 200n
write testbench.raw
.endc


"}
C {lab_pin.sym} -710 -550 2 0 {name=p7 sig_type=std_logic lab=out

}
C {ipin.sym} -1070 -620 0 0 {name=p6 lab=in}
