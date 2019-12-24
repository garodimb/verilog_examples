all: build run

build: mux2_1.v stimulus.v
	iverilog '-Wall' '-g2012' -o mux2_1.vvp mux2_1.v stimulus.v

run: build
	vvp mux2_1.vvp
  
clean:
	${RM} *.vvp *.vcd
  