#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Carbon stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)

# Vendor blobs
$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)

# Device
$(call inherit-product, device/google/barbet/device-barbet.mk)

# Device identifiers
PRODUCT_DEVICE := barbet
PRODUCT_NAME := carbon_barbet
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_MANUFACTURER := Google
PRODUCT_RELEASE_NAME := barbet

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=barbet \
        PRIVATE_BUILD_DESC="barbet-user 11 RD2A.210905.002 7513089 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:11/RD2A.210905.002/7513089:user/release-keys
