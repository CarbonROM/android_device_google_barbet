#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Carbon stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/carbon/config/gsm.mk)
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)

include device/google/barbet/device-carbon.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := carbon_barbet
PRODUCT_DEVICE := barbet
PRODUCT_MANUFACTURER := Google
PRODUCT_RELEASE_NAME := barbet

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=barbet \
    PRIVATE_BUILD_DESC="barbet-user 13 TP1A.221005.002 8672226 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:13/TP1A.221005.002/8672226:user/release-keys

$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)
