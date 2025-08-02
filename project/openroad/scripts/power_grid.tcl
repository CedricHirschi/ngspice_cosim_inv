# Copyright 2023 ETH Zurich and University of Bologna.
# Solderpad Hardware License, Version 0.51, see LICENSE for details.
# SPDX-License-Identifier: SHL-0.51

# Authors:
# - Tobias Senti <tsenti@ethz.ch>
# - Jannis Schönleber <janniss@iis.ee.ethz.ch>
# - Philippe Sauter   <phsauter@iis.ee.ethz.ch>

# Power planning

utl::report "Power Grid"
# ToDo: Check connectivity on left and right power pad cells
source scripts/floorplan_util.tcl

##########################################################################
# Reset
##########################################################################

if {[info exists power_grid_defined]} {
    pdngen -ripup
    pdngen -reset
} else {
    set power_grid_defined 1
}


##########################################################################
##  Power settings
##########################################################################
# Metal4 Core Power Grid - Using Metal4 instead of TopMetal2 for simple designs
# Metal4 has 0.42um pitch, much finer than TopMetal2's 4um pitch
set tpg2Width     1; # conservative width for single stripe
set tpg2Pitch   204; # not used with single stripe but kept for reference
set tpg2Spacing   8; # not used with single stripe
set tpg2Offset    30; # small offset from core edge


##########################################################################
##  Core Power
##########################################################################
# M1 Standardcell Rows (tracks)
add_pdn_stripe -grid {core_grid} -layer {Metal1} -width {0.44} -offset {0} \
    -pitch {3.78}

# Power grid - Single central stripe using Metal4 for simple design
add_pdn_stripe -grid {core_grid} -layer {Metal4} -width $tpg2Width \
    -pitch $tpg2Pitch -spacing $tpg2Spacing -offset $tpg2Offset \
    -extend_to_core_ring -snap_to_grid -number_of_straps 1

# "The add_pdn_connect command is used to define which layers in the power grid are to be connected together.
#  During power grid generation, vias will be added for overlapping power nets and overlapping ground nets."
# M1 is declared vertical but tracks still horizontal
# Metal4 to standard cell power tracks
# Simplified connections for simple design - connect Metal4 directly to standard cell rails
add_pdn_connect -grid {core_grid} -layers {Metal4 Metal1}
add_pdn_connect -grid {core_grid} -layers {Metal4 Metal2}
# Optional: add Metal3 as intermediate layer for better connectivity
# add_pdn_connect -grid {core_grid} -layers {TopMetal2 Metal3}
# add_pdn_connect -grid {core_grid} -layers {Metal3 Metal1}


##########################################################################
##  Generate
##########################################################################
pdngen -failed_via_report ${report_dir}/${log_id_str}_${proj_name}_pdngen.rpt
