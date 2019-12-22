all: build run

build: comparator2bit.v stimulus2bit.v
	iverilog.exe '-Wall' '-g2012' -o comparator2bit.vvp comparator2bit.v stimulus2bit.v

run: build
	vvp comparator2bit.vvp
  
clean:
	${RM} *.vvp
  