all: build run

full_adder: full_adder.v stimulus.v
	iverilog.exe '-Wall' '-g2012' -o full_adder.vvp full_adder.v stimulus.v

full_adder_gate: full_adder_gate.v stimulus.v
	iverilog.exe '-Wall' '-g2012' -o full_adder_gate.vvp full_adder_gate.v stimulus.v

full_adder_udp: full_adder_udp.v stimulus.v
	iverilog.exe '-Wall' '-g2012' -o full_adder_udp.vvp full_adder_udp.v stimulus.v

build: full_adder full_adder_gate full_adder_udp

run: build
	vvp full_adder.vvp
	vvp full_adder_gate.vvp
	vvp full_adder_udp.vvp
  
clean:
	${RM} *.vvp
  