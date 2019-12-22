TESTCASES = \
	1_comparator \
	2_greater_than_5 \
	3_comparator2bit \
	4_comparator_using_gates \
	5_user_defined_primitive \
	6_full_adder \
	7_full_adder_2_bits \

all: 	
	for dir in $(TESTCASES); \
	do \
		$(MAKE) -C $$dir -f Makefile all; \
	done

build:
	for dir in $(TESTCASES); \
	do \
		$(MAKE) -C $$dir -f Makefile build; \
	done

run:
	for dir in $(TESTCASES); \
	do \
		$(MAKE) -C $$dir -f Makefile run; \
	done
  
clean:
	for dir in $(TESTCASES); \
	do \
		$(MAKE) -C $$dir -f Makefile clean; \
	done
  