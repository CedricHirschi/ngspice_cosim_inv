TOP = inv

all: clean sim

sim: simulation/$(TOP)
	cd simulation && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

simulation/adc.vcd: simulation/adc
	cd simulation && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

simulation:
	mkdir -p simulation

simulation/$(TOP)_tb.spice: simulation
	xschem -x -q -n $(TOP)_tb.sch -o simulation

simulation/$(TOP): simulation/$(TOP)_tb.spice
	iverilog -g2012 -o simulation/$(TOP) $(TOP).sv

gtkwave: simulation/$(TOP).vcd
	gtkwave $<

xschem: simulation
	xschem -o $(PWD)/simulation $(TOP)_tb.sch

install:
	sudo mkdir -p /usr/local/lib/ngspice
	sudo cp /foss/tools/ngspice/lib/ngspice/ivlng.vpi /usr/local/lib/ngspice
	sudo cp /foss/tools/iverilog/lib/libvvp.so /foss/tools/ngspice/lib/ngspice

clean:
	rm -rf simulation

.PHONY: all gtkwave xschem clean