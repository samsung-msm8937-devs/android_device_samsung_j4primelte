#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

#ResurrectionRemix
TARGET_FACE_UNLOCK_SUPPORTED := true

#BOOT ANIMATION
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from j4primelte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j4primelte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := rr_j4primelte
PRODUCT_MODEL := Galaxy J4+

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j4primelte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j4primeltedx-user 9 PPR1.180610.011 J415FXXU2BSDM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"
