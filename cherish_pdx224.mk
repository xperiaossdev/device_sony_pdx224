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

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Enviroment Flags
IS_PHONE := true
TARGET_BUILD_WITH_LTO := false

# Boot Animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Cherish-Specific Flags
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
EXTRA_UDFPS_ANIMATIONS := false
TARGET_INCLUDE_WIFI_EXT := false
TARGET_SUPPORTS_QUICK_TAP  := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_CARRIER_SETTINGS := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Un|Officialify
CHERISH_BUILD_TYPE := UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Your Local GitHub Retard

# Device Identifiers
PRODUCT_NAME := cherish_pdx224
PRODUCT_DEVICE := pdx224
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 5 IV

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="XQ-CQ54-user 13 64.1.A.0.882 064001A000088202006725595 release-keys"

BUILD_FINGERPRINT := Sony/qssi/qssi:13/64.1.A.0.882/064001A000088202006725595:user/release-keys