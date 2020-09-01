#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
#TWRP
BUILD_TWRP := true

# Density
TARGET_SCREEN_DENSITY := 400

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

WITH_GMS := true

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys"

# Device identifier
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := rr_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# GAPPS
$(call inherit-product, vendor/gapps/gapps.mk)
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Resurrection Remix
TARGET_FACE_UNLOCK_SUPPORTED := true
RR_BUILDTYPE := Official
