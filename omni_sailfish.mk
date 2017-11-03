#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Inherit Omni product configuration	
-include device/google/marlin/sailfish/device-omni.mk

PRODUCT_NAME := omni_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:8.0.0/OPR6.170623.012/4283428:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 8.0.0 OPR6.170623.012 4283428 release-keys"

$(call inherit-product-if-exists, vendor/google_devices/sailfish/sailfish-vendor-blobs.mk)
