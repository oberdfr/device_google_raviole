# For Google Camera
#PRODUCT_COPY_FILES += \
    device/google/raviole/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

# HBM
#PRODUCT_COPY_FILES += \
    device/google/raviole/permissions/permissions_com.android.hbmsvmanager.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.android.hbmsvmanager.xml

# Pixel Camera Services / Camera extensions
#PRODUCT_COPY_FILES += \
    device/google/raviole/permissions/permissions_com.google.android.apps.camera.services.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.apps.camera.services.xml

# wireless_charger HAL service
include device/google/gs-common/wireless_charger/wireless_charger.mk

# --- Only build if TARGET_BUILD_LINEAGEHW is set --- #
ifeq ($(TARGET_BUILD_LINEAGEHW), true)

# PowerShare
include hardware/google/pixel/powershare/device.mk

endif

# Build necessary packages for vendor

# Audio
PRODUCT_PACKAGES += \
    libaudioroutev2.vendor \
    libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth-V1-ndk.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64

# Camera
PRODUCT_PACKAGES += \
    libGralloc4Wrapper

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor:64 \
    android.hardware.media.c2@1.2.vendor:64 \
    libavservices_minijail.vendor \
    libcodec2_hidl@1.0.vendor \
    libcodec2_hidl@1.1.vendor:64 \
    libcodec2_hidl@1.2.vendor:64 \
    libcodec2_soft_common.vendor:64 \
    libcodec2_vndk.vendor \
    libexynosutils \
    libexynosv4l2 \
    libmedia_ecoservice.vendor \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_bufferpool@2.0.1.vendor

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui-V1-ndk.vendor:64 \
    android.hardware.confirmationui-lib.trusty:64 \
    android.hardware.confirmationui@1.0.vendor:64 \
    libteeui_hal_support.vendor:64

# Graphics
PRODUCT_PACKAGES += \
    ANGLE \
    libEGL_angle \
    libGLESv1_CM_angle \
    libGLESv2_angle

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-V5-ndk.vendor:64 \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson:64

# Nos
PRODUCT_PACKAGES += \
    libkeymaster4support.vendor:64 \
    libkeymint_support.vendor:64 \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_feature:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0.vendor \
    android.hardware.sensors@2.0-ScopedWakelock.vendor \
    android.hardware.sensors@2.0.vendor \
    android.hardware.sensors@2.1.vendor \
    libsensorndkbridge \
    sensors.dynamic_sensor_hal

# Tether offload
PRODUCT_PACKAGES += \
    android.hardware.tetheroffload.config@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.1.vendor:64 \
    libnetfilter_conntrack:64 \
    libnfnetlink:64

# Trusty
PRODUCT_PACKAGES += \
    android.trusty.stats.nw.setter-cpp.vendor:64 \
    libbinder_trusty:64 \
    libtrusty_metrics:64

# Misc interfaces
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-cpp.vendor:64 \
    android.frameworks.stats-V1-ndk.vendor:32 \
    android.hardware.authsecret-V1-ndk.vendor:64 \
    android.hardware.biometrics.common-V2-ndk.vendor:64 \
    android.hardware.biometrics.fingerprint-V2-ndk.vendor:64 \
    android.hardware.gnss-V3-ndk.vendor:64 \
    android.hardware.health-V1-ndk.vendor \
    android.hardware.input.common-V1-ndk.vendor:64 \
    android.hardware.input.processor-V1-ndk.vendor:64 \
    android.hardware.keymaster@3.0.vendor:64 \
    android.hardware.keymaster@4.0.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.neuralnetworks-V4-ndk.vendor:64 \
    android.hardware.neuralnetworks@1.0.vendor:64 \
    android.hardware.neuralnetworks@1.1.vendor:64 \
    android.hardware.neuralnetworks@1.2.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.oemlock-V1-ndk.vendor:64 \
    android.hardware.power@1.0.vendor:64 \
    android.hardware.power@1.1.vendor:64 \
    android.hardware.power@1.2.vendor:64 \
    android.hardware.radio.config@1.0.vendor \
    android.hardware.radio.config@1.1.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.radio@1.2.vendor \
    android.hardware.radio@1.3.vendor \
    android.hardware.radio@1.4.vendor \
    android.hardware.radio@1.5.vendor \
    android.hardware.radio@1.6.vendor \
    android.hardware.thermal-V1-ndk.vendor:32 \
    android.hardware.thermal@1.0.vendor:32 \
    android.hardware.thermal@2.0.vendor:32 \
    android.hardware.weaver-V2-ndk.vendor:64 \
    android.hardware.wifi-V1-ndk.vendor:64 \
    com.google.hardware.pixel.display-V4-ndk.vendor:64

# TFlite
PRODUCT_PACKAGES += \
    libtensorflowlite_jni

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    persist.uwb.enable_uci_stack=1 \
    ro.hotword.detection_service_required=true \
    ro.camerax.extensions.enabled=true

PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.feature.enable_wifi_tracker=true \
    ro.carriersetup.vzw_consent_page=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true \
    ro.config.alarm_alert=Fresh_start.ogg \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

PRODUCT_VENDOR_PROPERTIES += \
    ro.build.expect.bootloader=slider-1.3-10780582 \
    ro.build.expect.baseband=g5123b-125137-231014-B-10950115 \
    ro.gfx.angle.supported=true \
    vendor.debug.ssrdump.type=sscoredump \
    persist.vendor.ril.use_radio_hal=1.6 \
    ro.vendor.config.build_carrier=europen \
    vendor.rild.libpath=libsitril.so \
    persist.vendor.ril.support_nr_ds=0 \
    persist.vendor.ril.ecc.use.xml=1 \
    ro.vendor.uwb.calibration.calibrationpaths=/vendor/etc/uwb/calib_paths \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true \
    ro.vendor.dolby.dax.version=DAX3_G_3.7.3.0_r1