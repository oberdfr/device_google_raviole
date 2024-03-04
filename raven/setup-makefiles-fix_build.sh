#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=raven
VENDOR=google

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Function to remove defined PRODUCT_PACKAGES
remove_product_packages() {
    sed -i '/com\.google\.android\.camera\.experimental2021 \\/d' "${ANDROID_ROOT}/vendor/google/raven/raven-vendor.mk"
    sed -i '/org\.carconnectivity\.android\.digitalkey\.timesync \\/d' "${ANDROID_ROOT}/vendor/google/raven/raven-vendor.mk"
}

# Function to add PRODUCT_COPY_FILES
add_product_copy_files() {
    cat << EOF >> "${ANDROID_ROOT}/vendor/google/raven/raven-vendor.mk"

PRODUCT_COPY_FILES += \\
    vendor/google/raven/proprietary/vendor/framework/com.google.android.camera.experimental2021.jar:\$(TARGET_COPY_OUT_VENDOR)/framework/com.google.android.camera.experimental2021.jar \\
    vendor/google/raven/proprietary/system_ext/framework/org.carconnectivity.android.digitalkey.timesync.jar:\$(TARGET_COPY_OUT_SYSTEM_EXT)/framework/org.carconnectivity.android.digitalkey.timesync.jar
EOF
}

# Function to modify Android.bp file
modify_android_bp() {
    local ANDROID_BP_FILE="${ANDROID_ROOT}/vendor/google/raven/Android.bp"
    if [ -f "${ANDROID_BP_FILE}" ]; then
        # Make a backup of the original file
        cp "${ANDROID_BP_FILE}" "${ANDROID_BP_FILE}.orig"

        # Use sed to modify the file
        sed -i '/android_app_import {/,/}/s/presigned: true,/presigned: true,\n        preprocessed: true,/g' "${ANDROID_BP_FILE}"
    else
        echo "Android.bp file not found at ${ANDROID_BP_FILE}"
    fi
}

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"

# Warning headers and guards
write_headers

write_makefiles "${MY_DIR}/proprietary-files.txt" true
# write_makefiles "${MY_DIR}/proprietary-files-carriersettings.txt" true
write_makefiles "${MY_DIR}/proprietary-files-vendor.txt" true

# Remove defined PRODUCT_PACKAGES
remove_product_packages

# Add PRODUCT_COPY_FILES
add_product_copy_files

# Modify Android.bp file
modify_android_bp

# Finish
write_footers
