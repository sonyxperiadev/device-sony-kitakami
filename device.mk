# Copyright (C) 2014 The Android Open Source Project
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

SOMC_PLATFORM := kitakami

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/kitakami/overlay

PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/fstab.kitakami:root/fstab.kitakami \
    device/sony/kitakami/rootdir/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    device/sony/kitakami/rootdir/system/usr/idc/touch_fusion.idc:system/usr/idc/touch_fusion.idc \
    device/sony/kitakami/rootdir/system/etc/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    device/sony/kitakami/rootdir/system/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/sony/kitakami/rootdir/system/etc/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml \
    device/sony/kitakami/rootdir/system/etc/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/sony/kitakami/rootdir/system/etc/sensors_settings:system/etc/sensors_settings \
    device/sony/kitakami/rootdir/system/etc/sec_config:system/etc/sec_config \
    device/sony/kitakami/rootdir/system/etc/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/init.recovery.kitakami.rc:root/init.recovery.kitakami.rc \
    device/sony/kitakami/rootdir/init.recovery.kitakami.rc:root/init.recovery.kitakami64_32.rc \
    device/sony/kitakami/rootdir/init.kitakami.rc:root/init.kitakami.rc \
    device/sony/kitakami/rootdir/init.kitakami.rc:root/init.kitakami64_32.rc \
    device/sony/kitakami/rootdir/init.kitakami.usb.rc:root/init.kitakami.usb.rc \
    device/sony/kitakami/rootdir/init.kitakami.pwr.rc:root/init.kitakami.pwr.rc \
    device/sony/kitakami/rootdir/ueventd.kitakami.rc:root/ueventd.kitakami.rc \
    device/sony/kitakami/rootdir/ueventd.kitakami.rc:root/ueventd.kitakami64_32.rc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/system/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/sony/kitakami/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/sony/kitakami/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/sony/kitakami/rootdir/system/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Keylayout
PRODUCT_COPY_FILES += \
    device/sony/kitakami/rootdir/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    device/sony/kitakami/rootdir/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/sony/kitakami/rootdir/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    device/sony/kitakami/rootdir/system/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl:system/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl \
    device/sony/kitakami/rootdir/system/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/sony/kitakami/rootdir/system/usr/keylayout/touch_fusion.kl:system/usr/keylayout/touch_fusion.kl

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8994 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libacdbloader \
    libacdbmapper \
    libaudcal \
    libaudioalsa \
    libdiag

# For audio.primary.msm8994
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    libaudioroute \
    tinymix

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

# GFX
PRODUCT_PACKAGES += \
    copybit.msm8994 \
    gralloc.msm8994 \
    hwcomposer.msm8994 \
    memtrack.msm8994 \
    libhdmi \
    libqdutils \
    libqdMetaData

PRODUCT_PACKAGES += \
    libion

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

# Lights
PRODUCT_PACKAGES += \
    lights.kitakami

# NFC packages
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag \
    nfc_nci.msm8994

# GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_core \
    libloc_eng \
    libgps.utils \
    gps.msm8994

# WLAN
PRODUCT_PACKAGES += \
    p2p_supplicant.conf \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

#CAMERA
PRODUCT_PACKAGES += \
    libmmcamera_interface \
    libmmjpeg_interface \
    libqomx_core \
    camera.msm8994

PRODUCT_PACKAGES += \
    keystore.msm8994

# Misc
PRODUCT_PACKAGES += \
    libmiscta \
    libta \
    tad_static \
    ta_qmi_service

# OSS
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep \
    thermanager \
    macaddrsetup

PRODUCT_PACKAGES += \
    rmt_storage

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# AOSP Packages
PRODUCT_PACKAGES += \
    InCallUI \
    Launcher3 \
    messaging

PRODUCT_PACKAGES += \
    libemoji

# BoringSSL hacks
PRODUCT_PACKAGES += \
    libboringssl-compat

# APN list
PRODUCT_COPY_FILES += \
    device/sample/etc/old-apns-conf.xml:system/etc/old-apns-conf.xml \
    device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Keyguard
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false \
    dalvik.vm.image-dex2oat-filter=speed

# ART
PRODUCT_DEX_PREOPT_DEFAULT_FLAGS := \
    --compiler-filter=speed

$(call add-product-dex-preopt-module-config,services,--compiler-filter=speed)

# Platform specific default properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.data.qmi.adb_logmask=0

# Enable MultiWindow
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true
