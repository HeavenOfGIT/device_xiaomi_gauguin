#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from gauguin device
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Bootanimation density
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_gauguin
PRODUCT_DEVICE := gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 10i

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gauguininpro-user 11 RKQ1.200826.002 V12.0.1.0.RJSINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/gauguininpro/gauguin:11/RKQ1.200826.002/V12.0.1.0.RJSINXM:user/release-keys

# Octaiv Stuff
OCTAVI_DEVICE_MAINTAINER := Ebherybhan

# GApps
WITH_GAPPS := true
TARGET_ARCH := arm64
