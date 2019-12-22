all: build run

build: comparator5.v stimulus5.v
	iverilog.exe '-Wall' '-g2012' -o comparator5.vvp comparator5.v stimulus5.v

run: build
	vvp comparator5.vvp
  
clean:
	${RM} *.vvp
  