#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from grandppltedx device
$(call inherit-product, device/samsung/grandppltedx/device.mk)

PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := grandppltedx
PRODUCT_NAME := lineage_grandppltedx
PRODUCT_MODEL := SM-G532G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=grandpplte \
   PRIVATE_BUILD_DESC="grandppltedx-user 6.0.1 MMB29T G532GDXU1ASA5 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT=samsung/grandppltedx/grandpplte:6.0.1/MMB29T/G532DXU1ASA5:user/release-keys \
