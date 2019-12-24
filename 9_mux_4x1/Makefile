all: build run

build: mux4_1.v stimulus.v
	iverilog '-Wall' '-g2012' -o mux4_1.vvp mux4_1.v stimulus.v

run: build
	vvp mux4_1.vvp
  
clean:
	${RM} *.vvp *.vcd
  