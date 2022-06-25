#!/bin/sh
#

disk=$1
dd of=idbloader.img if=$disk bs=32k skip=1 count=125 conv=fsync,notrunc
dd of=u-boot.img if=$disk bs=64k skip=128 count=64 conv=fsync,notrunc
dd of=trust.img if=$disk bs=64k skip=192 count=64 conv=fsync,notrunc
