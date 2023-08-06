# NEMU-TEE

make Penglai-TEE work on NEMU.

# Usage

* Initialize repo with:

```bash
make init
```

* Use makefile to automatically get work down.

```
# compile
make -j8
# run
make run
```

# Description

This project is aimed at deploying Penglai TEE(Trusted Execution Environment) on NEMU (which is the
instruction set emulator for Xiangshan project), and making more sercurity enhancement based on 
Penglai TEE. 

It is composed of four submodules: 

* NEMU: NJU emulator, used as the instruction set emulator of riscv64.
* opensbi: Opensbi is the firmware for RISCV, penglai implement sercurity monitor(SM) based on opensbi.
* riscv-linux: The linux kernel version 5.10. (Use debian or openeuler)
* riscv-rootfs: The root file system of linux kernel. We put the penglai-driver(S-mode kernel module)
and the penglai-sdk(U-mode API) in this submodule.
