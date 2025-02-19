CPU_CORE = cortex-m4

FSP_MCU_DIR = hw/mcu/renesas/fsp/ra/fsp/src/bsp/mcu/ra4m1
FSP_BOARD_DIR = hw/mcu/renesas/fsp/ra/board/ra4m1_ek

# All source paths should be relative to the top level.
LD_FILE = $(BOARD_PATH)/ra4m1_ek.ld

# For flash-jlink target
JLINK_DEVICE = R7FA4M1AB
JLINK_IF     = SWD

flash: flash-jlink
