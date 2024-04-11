#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/ishtar

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    system_ext \
    product \
    vendor \
    vendor_dlkm \
    odm \
    boot \
    dtbo \
    recovery

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kalama
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Assert
TARGET_OTA_ASSERT_DEVICE := ishtar

# Platform
TARGET_BOARD_PLATFORM := kalama

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_ODM_DLKM_PROP += $(DEVICE_PATH)/odm_dlkm.prop
TARGET_VENDOR_DLKM_PROP += $(DEVICE_PATH)/vendor_dlkm.prop

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
include vendor/xiaomi/ishtar/BoardConfigVendor.mk
