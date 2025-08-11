IC_NAME      ?= sarn
INPUT_IMAGE  ?= sarn_logo.png
INPUT_GDS    ?= $(KLAYOUT_DIR)/adc.gds

ARTISTIC_DIR := $(realpath $(dir $(realpath $(filter %artistic.mk,$(MAKEFILE_LIST)))))
ARTISTIC_TOOL_DIR := $(ARTISTIC_DIR)/artistic

PYTHON ?= python3

## ADD-; Add logo to the chip
artistic: $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds render

$(ARTISTIC_DIR)/$(IC_NAME)_tm.gds: $(INPUT_GDS)
	cd $(ARTISTIC_DIR) && $(PYTHON) $(ARTISTIC_TOOL_DIR)/scripts/meerkat_interface.py \
	    -i $(INPUT_GDS) \
	    -m $(ARTISTIC_DIR)/$(IC_NAME)_tm.gds.gz \
	    -g $(ARTISTIC_DIR)/$(IC_NAME)_logo.gds \
	    -o $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz \
	    -w . \
	    -l 134
	cd $(ARTISTIC_DIR) && klayout -zz -rm $(ARTISTIC_TOOL_DIR)/scripts/export_top_metal.py
	cd $(ARTISTIC_DIR) && gzip -dc $(ARTISTIC_DIR)/$(IC_NAME)_tm.gds.gz > $(ARTISTIC_DIR)/$(IC_NAME)_tm.gds

$(ARTISTIC_DIR)/$(IC_NAME)_logo.gds: $(ARTISTIC_DIR)/$(IC_NAME)_tm.gds
	convert $(ARTISTIC_DIR)/$(INPUT_IMAGE) -remap pattern:gray50 $(ARTISTIC_DIR)/mono_$(INPUT_IMAGE)
	cd $(ARTISTIC_DIR) && $(PYTHON) $(ARTISTIC_TOOL_DIR)/scripts/meerkat.py \
		-m "1,3,1,-3" \
	    -i $(ARTISTIC_DIR)/mono_$(INPUT_IMAGE) \
	    -g $(IC_NAME)_tm.gds \
		-l 134 \
		-n $(IC_NAME) \
		-s $(ARTISTIC_DIR)/$(IC_NAME)_logo.svg \
		-o $(ARTISTIC_DIR)/$(IC_NAME)_logo.gds

$(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz: $(ARTISTIC_DIR)/$(IC_NAME)_logo.gds
	cd $(ARTISTIC_DIR) && klayout -zz -rm $(ARTISTIC_TOOL_DIR)/scripts/merge_logo.py

$(ARTISTIC_DIR)/$(IC_NAME)_chip.gds: $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz
	cd $(ARTISTIC_DIR) && gzip -dc $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz > $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds

render: $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz
	mkdir -p /dev/shm/renderics
	cp $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz /dev/shm/renderics/$(IC_NAME)_chip.gds.gz
	cd $(ARTISTIC_TOOL_DIR) && $(MAKE) analyze CFG_FILE=../$(IC_NAME).json
	cd $(ARTISTIC_TOOL_DIR) && $(MAKE) gen_raw CFG_FILE=../$(IC_NAME).json -j
	cd $(ARTISTIC_TOOL_DIR) && $(MAKE) gen_pdfs CFG_FILE=../$(IC_NAME).json -j
	mkdir -p $(ARTISTIC_DIR)/out/
	cp /dev/shm/renderics/MRG__$(IC_NAME)_0-0.png $(ARTISTIC_DIR)/out/
	cp /dev/shm/renderics/PDF__$(IC_NAME)_0-0.pdf $(ARTISTIC_DIR)/out/

clean_artistic:
	rm -f $(ARTISTIC_DIR)/$(IC_NAME)_tm.gds $(ARTISTIC_DIR)/$(IC_NAME)_logo.gds $(ARTISTIC_DIR)/$(IC_NAME)_chip.gds.gz
	rm -f $(ARTISTIC_DIR)/meerkat_design.py
	rm -f $(ARTISTIC_DIR)/$(IC_NAME)_logo.svg $(ARTISTIC_DIR)/mono_$(IC_NAME)_logo.png 
	rm -rf /dev/shm/renderics