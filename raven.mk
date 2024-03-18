#
# Copyright 2020 The Android Open-Source Project
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

$(call inherit-product, device/google/gs101/vortex-common.mk)
$(call inherit-product, device/google/raviole/device-raven.mk)

PRODUCT_NAME := raven
PRODUCT_SYSTEM_NAME := raven
PRODUCT_NAME_FOR_ATTESTATION := raven

PRODUCT_DEVICE := raven
PRODUCT_SYSTEM_DEVICE := raven
PRODUCT_DEVICE_FOR_ATTESTATION := raven

PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_SYSTEM_MODEL := Pixel 6 Pro
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 6 Pro

PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google
PRODUCT_BRAND_FOR_ATTESTATION := google

PRODUCT_MANUFACTURER := Google
PRODUCT_SYSTEM_MANUFACTURER := Google
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google

PRODUCT_PACKAGES += com.android.vndk.current.on_vendor

TARGET_BUILD_LINEAGEHW := false
TARGET_PREBUILT_PIXELAPPS := true