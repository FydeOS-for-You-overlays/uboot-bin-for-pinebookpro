#!/bin/bash
image=$1
dd if=idbloader.img of=$image bs=32k seek=1 conv=fsync,notrunc
dd if=u-boot.img of=$image bs=64k seek=128 conv=fsync,notrunc
dd if=trust.img of=$image bs=64k seek=192 conv=fsync,notrunc
