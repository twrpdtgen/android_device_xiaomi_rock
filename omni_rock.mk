#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rock device
$(call inherit-product, device/xiaomi/rock/device.mk)

PRODUCT_DEVICE := rock
PRODUCT_NAME := omni_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := rock
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_rock-userdebug 13 SP2A.220405.004 eng.root.20230729.124947 test-keys"

BUILD_FINGERPRINT := Redmi/twrp_rock/rock:13/SP2A.220405.004/root07291247:userdebug/test-keys
