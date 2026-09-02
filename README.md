# 4-Bit Full Adder using Verilog and Vivado

## Overview

This project implements a **4-bit Full Adder** using **Verilog HDL** and Xilinx Vivado.

The design adds two 4-bit binary numbers along with a Carry-in (`Cin`) and produces a 4-bit Sum and a Carry-out (`Cout`).

The design is intended to be synthesized, implemented, and programmed onto a Boolean FPGA board.

---

## Aim

To design and implement a 4-bit Full Adder using Verilog HDL, simulate and synthesize the design using Vivado, analyze the synthesis and power reports, and demonstrate the circuit on a Boolean FPGA board.

---

## Inputs and Outputs

### Inputs

The circuit has 9 input signals:

- `A3`
- `A2`
- `A1`
- `A0`
- `B3`
- `B2`
- `B1`
- `B0`
- `Cin`

Therefore:

**Total inputs = 9**

### Outputs

The circuit has 5 output signals:

- `Sum3`
- `Sum2`
- `Sum1`
- `Sum0`
- `Cout`

Therefore:

**Total outputs = 5**

---

## Block Diagram

```text
             A3 A2 A1 A0
                │
                │
             B3 B2 B1 B0
                │
                ▼
          ┌───────────────┐
          │               │
 Cin ────►│  4-BIT FULL   │
          │    ADDER      │
          │               │
          └───────┬───────┘
                  │
          ┌───────┴───────┐
          ▼               ▼
       Sum[3:0]          Cout
```

---

## Full Adder Logic

A 1-bit Full Adder has three inputs:

```text
A
B
Cin
```

and two outputs:

```text
Sum
Cout
```

The Boolean equations are:

```text
Sum = A XOR B XOR Cin
```

```text
Cout = (A AND B) OR (B AND Cin) OR (A AND Cin)
```

A 4-bit Full Adder uses four 1-bit Full Adder stages.

The carry propagates from one stage to the next:

```text
Cin → FA0 → C1 → FA1 → C2 → FA2 → C3 → FA3 → Cout
```

This is known as a **Ripple Carry Adder**.

---

## Verilog Implementation

The main Verilog design is available in:

```text
src/Full_source.v
```

The design uses four full-adder stages.

---

## Simulation

The testbench is available in:

```text
simulation/tb_Full_source.v
```

The testbench applies different combinations of inputs and verifies the Sum and Carry-out.

### Example test cases

| A | B | Cin | Expected Sum | Expected Cout |
|---|---|---:|---|---:|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0011 | 0010 | 0 | 0101 | 0 |
| 0101 | 0011 | 0 | 1000 | 0 |
| 1010 | 0101 | 0 | 1111 | 0 |
| 1111 | 0001 | 0 | 0000 | 1 |
| 1111 | 1111 | 1 | 1111 | 1 |

---

## Example Calculation

For:

```text
A = 0101
B = 0011
Cin = 0
```

The result is:

```text
  0101
+ 0011
------
  1000
```

Therefore:

```text
Sum  = 1000
Cout = 0
```

### Carry Example

For:

```text
A = 1111
B = 0001
Cin = 0
```

The result is:

```text
  1111
+ 0001
------
1 0000
```

Since the adder has only four Sum bits:

```text
Sum  = 0000
Cout = 1
```

---

## Vivado Implementation Flow

The project follows this flow:

```text
Create Vivado Project
        ↓
Write Verilog Code
        ↓
Create Testbench
        ↓
Run Behavioral Simulation
        ↓
Check Waveform
        ↓
Add XDC Constraints
        ↓
Run Synthesis
        ↓
Check Synthesis Report
        ↓
Run Implementation
        ↓
Check Timing
        ↓
Generate Bitstream
        ↓
Program FPGA
        ↓
Test on Boolean Board
        ↓
Generate Power Report
```

---

## Boolean Board Demonstration

The design can be demonstrated using switches and LEDs on the Boolean FPGA board.

### Inputs

The switches can be assigned as:

```text
Switch → Signal

SW0 → A0
SW1 → A1
SW2 → A2
SW3 → A3

SW4 → B0
SW5 → B1
SW6 → B2
SW7 → B3

SW8 → Cin
```

### Outputs

The LEDs can be assigned as:

```text
LED → Signal

LED0 → Sum0
LED1 → Sum1
LED2 → Sum2
LED3 → Sum3
LED4 → Cout
```

**Note:** The actual FPGA pin numbers depend on the specific Boolean board. The XDC file must use the pin assignments provided for the board being used.

---

## Synthesis

Synthesis converts the Verilog HDL description into FPGA logic resources.

The synthesis report can be used to examine:

- LUT utilization
- Flip-Flop utilization
- I/O utilization
- Combinational logic
- Other FPGA resources

Since the 4-bit Full Adder is a combinational circuit, it does not require registers or flip-flops for storing data.

The actual utilization values are documented in:

```text
reports/synthesis-report.md
```

---

## Power Analysis

The Vivado Power Report provides an estimate of the power consumed by the implemented design.

Power is generally divided into:

- Static Power
- Dynamic Power

### Static Power

Power consumed by the FPGA even when the logic is not switching.

### Dynamic Power

Power consumed due to switching activity in the logic and I/O.

The actual power values depend on the FPGA device, implementation, operating conditions, and switching activity.

The power report is documented in:

```text
reports/power-report.md
```

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Boolean FPGA Board
- Vivado Simulator
- GitHub

---

## Files

```text
src/
    Full_source.v
```

Contains the 4-bit Full Adder RTL design.

```text
simulation/
    tb_Full_source.v
```

Contains the Verilog simulation testbench.

```text
constraints/
    Full_source.xdc
```

Contains FPGA pin and I/O constraints.

```text
reports/
    synthesis-report.md
    power-report.md
```

Contains analysis of Vivado synthesis and power reports.

```text
docs/
    experiment.md
```

Contains the detailed experiment documentation.

---

## Result

The 4-bit Full Adder was successfully designed using Verilog HDL. The design can be simulated, synthesized, implemented, and programmed onto a Boolean FPGA board.

The circuit performs binary addition of two 4-bit numbers with an optional carry input and generates a 4-bit Sum and Carry-out.

---
Schematic Diagram 
<img width="1681" height="956" alt="image" src="https://github.com/user-attachments/assets/f60cb87a-df2a-487a-8f63-e512dcabfb35" />



Digital Electronics / FPGA / Verilog HDL Lab
