#!/bin/bash

mkdir unpack
cd unpack
../magiskboot unpack ../r.img
../magiskboot cpio ramdisk.cpio extract
# Reverse fastbootd ENG mode check
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot e10313aaf40300aa6ecc009420010034 e10313aaf40300aa6ecc0094 # 20 01 00 35
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot eec3009420010034 eec3009420010035
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 3ad3009420010034 3ad3009420010035
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 50c0009420010034 50c0009420010035
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 080109aae80000b4 080109aae80000b5
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 20f0a6ef38b1681c 20f0a6ef38b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 23f03aed38b1681c 23f03aed38b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 20f09eef38b1681c 20f09eef38b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 26f0ceec30b1681c 26f0ceec30b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 24f0fcee30b1681c 24f0fcee30b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 27f02eeb30b1681c 27f02eeb30b9681c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot b4f082ee28b1701c b4f082ee28b970c1
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot hexpatch system/bin/vendor_boot 9ef0f4ec28b1701c 9ef0f4ec28b9701c
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot  cpio ramdisk.cpio 'add 0755 system/bin/vendor_boot system/bin/vendor_boot'
~runner/work/Patch-vendor_boot/Patch-vendor_boot/magiskboot  repack ../r.img new-boot.img
cp new-boot.img ../vendor_boot-patched.img
