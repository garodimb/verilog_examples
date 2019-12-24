all: build run

build: comparator.v stimulus.v
	iverilog '-Wall' '-g2012' -o comparator.vvp comparator.v stimulus.v

run: build
	vvp comparator.vvp
  
clean:
	${RM} *.vvp
  