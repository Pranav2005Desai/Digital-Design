# ==========================================
# Project Configuration
# ==========================================

TOP      = mux_2_tb
RTL      = rtl/mux_2.sv
TB       = tb/mux_2_tb.sv
OBJ_DIR  = sim/obj_dir
VCD_FILE = sim/mux_2.vcd

# ==========================================
# Build
# ==========================================

build:
	verilator \
	--binary \
	--trace \
	--timing \
	--top-module $(TOP) \
	-Mdir $(OBJ_DIR) \
	$(RTL) \
	$(TB)

# ==========================================
# Run Simulation
# ==========================================

run:
	./$(OBJ_DIR)/V$(TOP)

# ==========================================
# Open Waveform
# ==========================================

wave:
	gtkwave $(VCD_FILE)

# ==========================================
# Clean Generated Files
# ==========================================

clean:
	rm -rf $(OBJ_DIR)
	rm -f $(VCD_FILE)

# ==========================================
# Full Flow
# ==========================================

all: build runss
