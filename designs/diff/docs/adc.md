
# Entity: adc 
- **File**: adc.sv

## Diagram
![Diagram](adc.svg "Diagram")
## Generics

| Generic name | Type    | Value | Description |
| ------------ | ------- | ----- | ----------- |
| RESOLUTION   | integer | 8     |             |

## Ports

| Port name | Direction | Type             | Description |
| --------- | --------- | ---------------- | ----------- |
| clk_i     | input     |                  |             |
| start_i   | input     |                  |             |
| rst_ni    | input     |                  |             |
| comp_p_i  | input     |                  |             |
| comp_n_i  | input     |                  |             |
| sample_o  | output    |                  |             |
| dac_p_o   | output    | [RESOLUTION-1:0] |             |
| dac_n_o   | output    | [RESOLUTION-1:0] |             |
| rdy_o     | output    |                  |             |
| result_o  | output    | [RESOLUTION-1:0] |             |

## Signals

| Name  | Type  | Description |
| ----- | ----- | ----------- |
| comp  | logic |             |
| rdy_q | logic |             |
| rdy_d | logic |             |

## Types

| Name    | Type                                                                                                                                                                                                 | Description |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| state_t | enum logic [1:0] {<br><span style="padding-left:20px">             IDLE,<br><span style="padding-left:20px">             SAMPLE,<br><span style="padding-left:20px">             CONVERT           } |             |
| data_t  | logic [RESOLUTION-1:0]                                                                                                                                                                               |             |

## Processes
- combinational_sar_logic: (  )
  - **Type:** always_comb

## State machines

![Diagram_state_machine_0]( fsm_adc_00.svg "Diagram")