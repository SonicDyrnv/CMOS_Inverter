v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -60 -0 -0 {
lab=Output_Vout}
N 0 60 0 100 {
lab=Voltage_GND}
N -120 -20 -50 -20 {
lab=Vin_Gate_Location2}
N -40 -90 -40 30 {
lab=Vin_Gate_Location2}
N -50 -20 -40 -20 {
lab=Vin_Gate_Location2}
N 0 -160 0 -120 {
lab=Voltage_VCC}
N 0 -20 60 -20 {
lab=Output_Vout}
N -0 30 70 30 {
lab=Voltage_GND}
N 70 30 70 90 {
lab=Voltage_GND}
N 0 -90 70 -90 {
lab=Voltage_VCC}
N 70 -150 70 -90 {
lab=Voltage_VCC}
C {sky130_fd_pr/nfet_01v8.sym} -20 30 0 0 {name=M1
W=1.01
L=0.57
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -90 0 0 {name=M2
W=1.01
L=0.57
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
C {lab_pin.sym} 0 -160 0 0 {name=p1 sig_type=std_logic lab="Voltage_VCC"}
C {lab_pin.sym} 0 100 0 0 {name=p2 sig_type=std_logic lab="Voltage_GND"}
C {lab_pin.sym} -120 -20 0 0 {name=p3 sig_type=std_logic lab="Vin_Gate_Location2"}
C {iopin.sym} -460 -80 0 0 {name=p4 lab="Voltage_VCC"}
C {iopin.sym} -460 -50 0 0 {name=p5 lab=Vin_Gate_Location2}
C {iopin.sym} -460 -20 0 0 {name=p6 lab="Voltage_GND"}
C {opin.sym} -460 20 0 0 {name=p7 lab="Output_Vout"}
C {lab_pin.sym} 60 -20 0 0 {name=p8 sig_type=std_logic lab="Output_Vout"}
C {lab_pin.sym} 70 90 0 0 {name=p9 sig_type=std_logic lab="Voltage_GND"}
C {lab_pin.sym} 70 -150 0 0 {name=p10 sig_type=std_logic lab="Voltage_VCC"}
