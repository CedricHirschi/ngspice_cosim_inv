IVERILOG ?= iverilog

TOP = adc
VERILOG_SRCS = $(wildcard ../rtl/*.sv)

IVERILOG_DIR = $(realpath $(dir $(realpath $(filter %iverilog.mk,$(MAKEFILE_LIST)))))
IVERILOG_BUILD_DIR = $(IVERILOG_DIR)/build

## SIM-; Build cosimulation model for the RTL design
iverilog: $(IVERILOG_BUILD_DIR)/$(TOP)

$(IVERILOG_BUILD_DIR)/$(TOP): $(VERILOG_SRCS)
	mkdir -p $(IVERILOG_BUILD_DIR)
	$(IVERILOG) -g2012 -o $@ rtl/$(TOP).sv

iverilog_gatelevel:
	mkdir -p $(IVERILOG_BUILD_DIR)
	$(IVERILOG) -g2012 -o $(IVERILOG_BUILD_DIR)/$(TOP)_gatelevel $(OR_DIR)/out/$(TOP).v $(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/verilog/sg13g2_stdcell.v $(IVERILOG_DIR)/stubs.v

clean_iverilog:
	rm -rf $(IVERILOG_BUILD_DIR)
