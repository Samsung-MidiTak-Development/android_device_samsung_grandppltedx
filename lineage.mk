#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := grandppltedx

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/grandppltedx/device.mk)

# Display
#-- is qhd (960 x 540)
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
DEVICE_RESOLUTION := 540x960

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grandppltedx
PRODUCT_NAME := lineage_grandppltedx
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-G532G
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=grandpplte \
   PRIVATE_BUILD_DESC="grandppltedx-user 6.0.1 MMB29T G532GDXU1ASA5 release-keys"

BUILD_FINGERPRINT="google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
