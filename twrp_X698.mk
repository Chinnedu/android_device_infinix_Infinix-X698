#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from X698 device
$(call inherit-product, device/infinix/X698/device.mk)

PRODUCT_DEVICE := X698
PRODUCT_NAME := twrp_X698
PRODUCT_BRAND := Ifinix
PRODUCT_MODEL := Infinix X698
PRODUCT_MANUFACTURER := infinix
PRODUCT_RELEASE_NAME := infinix note 11s

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x698_h812-user 11 RP1A.200720.011 94822 release-keys"

BUILD_FINGERPRINT := Infinix/X698-GL/Infinix-X698:11/RP1A.200720.011/220916V623:user/release-keys
