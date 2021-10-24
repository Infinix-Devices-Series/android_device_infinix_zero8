#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Inherit from merlin device makefile
$(call inherit-product, device/infinix/zero8/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zero8
PRODUCT_NAME := lineage_zero8
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Zero 8
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix
TARGET_VENDOR := infinix
TARGET_VENDOR_PRODUCT_NAME := zero8
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys
