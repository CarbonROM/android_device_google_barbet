#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Add before redbull BoardConfigCarbon.mk
BOOT_KERNEL_MODULES += ftm5.ko

include device/google/redbull/BoardConfigCarbon.mk

include vendor/google/barbet/BoardConfigVendor.mk
