#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Enviroment Flags
IS_PHONE := true
TARGET_BUILD_WITH_LTO := false

# Boot Animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# DerpFest-Specific Flags
TARGET_USES_BLUR := true
EXTRA_UDFPS_ANIMATIONS := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Un|Officialify
DERP_BUILDTYPE := Unofficial

# GMS
TARGET_GAPPS_ARCH := arm64

# Device Identifiers
PRODUCT_NAME := derp_pdx224
PRODUCT_DEVICE := pdx224
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 5 IV

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-CQ54-user 13 64.1.A.0.882 064001A000088202006725595 release-keys"

BUILD_FINGERPRINT := Sony/qssi/qssi:13/64.1.A.0.882/064001A000088202006725595:user/release-keys