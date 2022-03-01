#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some decommon aosp stuff
$(call inherit-product, vendor/syberia/config/common_full_phone.mk)

# Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := false

# Inherit from tulip device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := tulip
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := syberia_tulip
PRODUCT_MODEL := Redmi Note 6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tulip-user 9 PKQ1.180904.001 V10.3.2.0.PEKMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/tulip/tulip:9/PKQ1.180904.001/V10.3.2.0.PEKMIXM:user/release-keys
