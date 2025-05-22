TOP = inv

HOOK_LIBVVP = export LD_LIBRARY_PATH=/foss/tools/iverilog/lib:$LD_LIBRARY_PATH

all: clean sim

sim: simulation/$(TOP)
	$(HOOK_LIBVVP) && cd simulation && ngspice -b $(TOP)_tb.spice

simulation/adc.vcd: simulation/adc
	$(HOOK_LIBVVP) && cd simulation && ngspice -b $(TOP)_tb.spice

simulation:
	mkdir -p simulation

simulation/$(TOP)_tb.spice: simulation
	xschem -x -q -n $(TOP)_tb.sch -o simulation

simulation/$(TOP): simulation/$(TOP)_tb.spice
	iverilog -g2012 -o simulation/$(TOP) $(TOP).sv

gtkwave: simulation/$(TOP).vcd
	gtkwave $<

xschem: simulation
	$(HOOK_LIBVVP) && xschem -o $(PWD)/simulation $(TOP)_tb.sch

clean:
	rm -rf simulation

.PHONY: all gtkwave xschem clean