#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from diting device.
$(call inherit-product, device/xiaomi/diting/device.mk)

# Rom Stuff
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
SUPERIOR_OFFICIAL := false
BUILD_WITH_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_MATLOG := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true

# Maintainer
PRODUCT_SYSTEM_PROPERTIES += \
     ro.spos.maintainer=Zinger

## Device identifier
PRODUCT_DEVICE := diting
PRODUCT_NAME := superior_ditingp
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
