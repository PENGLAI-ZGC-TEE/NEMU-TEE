DTS_HOME=$(SBI_HOME)/dts
DTS_NAME=system.dts
FW_FDT_PATH=$(DTS_HOME)/xiangshan.dtb
FW_PAYLOAS_PATH=$(LINUX_HOME)/vmlinux.bin
IMG=$(SBI_HOME)/build/platform/generic/firmwave/fw_payload.bin
RISCV_ROOTFS_HOME=$(shell pwd)/riscv-rootfs

ARCH=riscv64
CROSS_COMPILE=riscv64-unknown-linux-gnu-
CROSS_COMPILE_OBJCOPY=$(CROSS_COMPILE)objcopy

.PHONY: init

init: 
	git submodule update --init --recursive

add-submodule:
	git submodule add https://github.com/PengXuanyao/openEuler-for-nemu.git riscv-linux
	git submodule add https://github.com/PengXuanyao/opensbi-for-nemu.git opensbi
	git submodule add https://github.com/PengXuanyao/rootfs-for-nemu riscv-rootfs
