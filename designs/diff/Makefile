TOP = adc

SIM_DIR = xschem/simulation
OBJ_DIR = verilator/obj_dir

VERILATOR_ARGS  = --binary -j 0 -Wno-fatal
VERILATOR_ARGS += -Wno-style -Wno-WIDTHEXPAND
VERILATOR_ARGS += --timing --autoflush --trace --trace-structs
VERILATOR_ARGS +=  --unroll-count 1 --unroll-stmts 1

VERILOG_SRCS = $(wildcard rtl/*.sv)

all: clean sim

sim: $(SIM_DIR)/$(TOP)
	cd $(SIM_DIR) && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

sim_rtl: $(OBJ_DIR)/$(TOP)_tb.vcd

$(SIM_DIR)/adc.vcd: $(SIM_DIR)/$(TOP)
	cd $(SIM_DIR) && ngspice -b $(TOP)_tb.spice -r $(TOP)_tb.raw -o $(TOP)_tb.log

$(OBJ_DIR)/$(TOP)_tb.vcd: $(VERILOG_SRCS) rtl/common_cells
	cd verilator && verilator $(VERILATOR_ARGS) -O3 -CFLAGS "-O1 -march=native" --top adc_tb -f files.f
	cd $(OBJ_DIR) && ./V$(TOP)_tb

$(SIM_DIR):
	mkdir -p $@

$(SIM_DIR)/$(TOP)_tb.spice: $(SIM_DIR) rtl/common_cells
	cd xschem && xschem -x -q -n $(TOP)_tb.sch -o $(PWD)/$(SIM_DIR)

$(SIM_DIR)/$(TOP): $(SIM_DIR)/$(TOP)_tb.spice
	iverilog -g2012 -o $@ rtl/$(TOP).sv

gtkwave: $(SIM_DIR)/$(TOP).vcd
	gtkwave $<

gtkwave_rtl: $(OBJ_DIR)/$(TOP)_tb.vcd
	gtkwave $<

xschem: $(SIM_DIR) rtl/common_cells
	cd xschem && xschem -o $(PWD)/$(SIM_DIR) $(TOP)_tb.sch

install:
	sudo mkdir -p /usr/local/lib/ngspice
	sudo cp /foss/tools/ngspice/lib/ngspice/ivlng.vpi /usr/local/lib/ngspice
	sudo cp /foss/tools/iverilog/lib/libvvp.so /foss/tools/ngspice/lib/ngspice

rtl/common_cells:
	bender vendor init

clean:
	rm -rf $(SIM_DIR)
	rm -rf $(OBJ_DIR)

.PHONY: all gtkwave gtkwave_rtl xschem clean sim_rtl