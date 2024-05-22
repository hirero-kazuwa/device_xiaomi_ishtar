#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_DISABLE_EPPE := true
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true
#WITH_GMS := true
# Inherit from ishtar device
$(call inherit-product, device/xiaomi/ishtar/device.mk)

PRODUCT_DEVICE := ishtar
PRODUCT_NAME := lineage_ishtar
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 13 Ultra
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
