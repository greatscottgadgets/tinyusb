ifeq ($(TOOLCHAIN),gcc)
  CFLAGS += \
    -mthumb \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \

else ifeq ($(TOOLCHAIN),iar)
  CFLAGS += --cpu cortex-m4 --fpu VFPv4
  ASFLAGS += --cpu cortex-m4 --fpu VFPv4
endif

FREERTOS_PORTABLE_SRC = $(FREERTOS_PORTABLE_PATH)/ARM_CM4F
