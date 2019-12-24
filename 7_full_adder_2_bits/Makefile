all: build run

build: full_adder_2_bits.v stimulus.v
	iverilog '-Wall' '-g2012' -o full_adder_2_bits.vvp full_adder_2_bits.v stimulus.v

run: build
	vvp full_adder_2_bits.vvp
  
clean:
	${RM} *.vvp
  