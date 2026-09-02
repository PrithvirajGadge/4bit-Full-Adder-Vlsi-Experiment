 # ============================================================
# 4-BIT FULL ADDER - BOOLEAN BOARD
# ============================================================
# Board: Real Digital Boolean Board
# FPGA: Spartan-7 XC7S50
# I/O Standard: LVCMOS33
#
# Inputs:
# A3 A2 A1 A0
# B3 B2 B1 B0
# Cin
#
# Outputs:
# Sum3 Sum2 Sum1 Sum0
# Cout
# ============================================================


# ============================================================
# INPUTS - A
# ============================================================

# A0 -> SW0
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports A0]

# A1 -> SW1
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports A1]

# A2 -> SW2
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports A2]

# A3 -> SW3
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports A3]


# ============================================================
# INPUTS - B
# ============================================================

# B0 -> SW4
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports B0]

# B1 -> SW5
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports B1]

# B2 -> SW6
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports B2]

# B3 -> SW7
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports B3]


# ============================================================
# CARRY INPUT
# ============================================================

# Cin -> SW8
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports Cin]


# ============================================================
# OUTPUTS - SUM
# ============================================================

# Sum0 -> LED0
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports Sum0]

# Sum1 -> LED1
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports Sum1]

# Sum2 -> LED2
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports Sum2]

# Sum3 -> LED3
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports Sum3]


# ============================================================
# CARRY OUTPUT
# ============================================================

# Cout -> LED4
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports Cout]


# ============================================================
# END OF CONSTRAINTS
# ============================================================
