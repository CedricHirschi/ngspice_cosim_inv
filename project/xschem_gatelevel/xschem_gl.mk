XSCHEM ?= xschem-proot

XSCHEM_GL_DIR = $(realpath $(dir $(realpath $(filter %xschem_gl.mk,$(MAKEFILE_LIST)))))
XSCHEM_GL_SIM_DIR = $(XSCHEM_GL_DIR)/simulation

define run_xschem_gl
	cd $(XSCHEM_GL_DIR) && $(XSCHEM) $(1)
endef

$(XSCHEM_GL_SIM_DIR):
	mkdir -p $@

$(XSCHEM_GL_SIM_DIR)/$(TOP).spice: $(XSCHEM_GL_SIM_DIR) $(VERILOG_SRCS)
	$(call run_xschem_gl,-x -q -n $(TOP).sch -o $(XSCHEM_GL_SIM_DIR))

$(XSCHEM_GL_SIM_DIR)/$(TOP).cdl: $(XSCHEM_GL_SIM_DIR) $(VERILOG_SRCS)
	$(call run_xschem_gl,-x -q --tcl "set spiceprefix 0; set lvs_netlist 1" -n $(TOP).sch -o $(XSCHEM_GL_SIM_DIR) --netlist_filename $(TOP).cdl)

## SIM-; Open the gatelevel schematic in xschem
xschem_gatelevel: $(XSCHEM_GL_SIM_DIR)
	$(call run_xschem_gl,-o $(XSCHEM_GL_SIM_DIR) $(TOP)_tb.sch)

clean_xschem_gatelevel:
	rm -rf $(XSCHEM_GL_SIM_DIR)

.PHONY: xschem_gatelevel clean_xschem_gatelevel