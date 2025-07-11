TOP = adc

VERILATOR_ARGS  = --binary -j 0 -Wno-fatal
VERILATOR_ARGS += -Wno-style -Wno-WIDTHEXPAND
VERILATOR_ARGS += --timing --autoflush --trace --trace-structs
VERILATOR_ARGS +=  --unroll-count 1 --unroll-stmts 1

VERILOG_SRCS = $(wildcard rtl/*.sv)

all: clean sim

sim: simulation/$(TOP)
	cd simulation && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

sim_rtl: verilator/obj_dir/$(TOP)_tb.vcd

simulation/adc.vcd: simulation/adc
	cd simulation && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

verilator/obj_dir/$(TOP)_tb.vcd: $(VERILOG_SRCS)
	cd verilator && verilator $(VERILATOR_ARGS) -O3 -CFLAGS "-O1 -march=native" --top adc_tb -f files.f
	cd verilator/obj_dir && ./V$(TOP)_tb

simulation:
	mkdir -p simulation

simulation/$(TOP)_tb.spice: simulation
	xschem -x -q -n $(TOP)_tb.sch -o simulation

simulation/$(TOP): simulation/$(TOP)_tb.spice
	iverilog -g2012 -o simulation/$(TOP) $(TOP).sv

gtkwave: simulation/$(TOP).vcd
	gtkwave $<

gtkwave_rtl: verilator/obj_dir/$(TOP)_tb.vcd
	gtkwave $<

xschem: simulation
	xschem -o $(PWD)/simulation $(TOP)_tb.sch

install: simulation
	sudo mkdir -p /usr/local/lib/ngspice
	sudo cp /foss/tools/ngspice/lib/ngspice/ivlng.vpi /usr/local/lib/ngspice
	sudo cp /foss/tools/iverilog/lib/libvvp.so /foss/tools/ngspice/lib/ngspice
	sudo cp /foss/tools/iverilog/lib/libvvp.so simulation
	sudo cp /foss/tools/ngspice/lib/ngspice/ivlng.vpi simulation

clean:
	rm -rf simulation
	rm -rf verilator/obj_dir

.PHONY: all gtkwave gtkwave_rtl xschem clean sim_rtl