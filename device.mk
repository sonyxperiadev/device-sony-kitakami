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

SONY_ROOT = device/sony/kitakami/rootdir

SOMC_PLATFORM := kitakami

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/kitakami/overlay

PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/sec_config:system/etc/sec_config \
    $(SONY_ROOT)/system/etc/gps.conf:system/etc/gps.conf \
    $(SONY_ROOT)/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    $(SONY_ROOT)/system/usr/idc/touch_fusion.idc:system/usr/idc/touch_fusion.idc \
    $(SONY_ROOT)/system/etc/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    $(SONY_ROOT)/system/etc/sensors_settings:system/etc/sensors_settings

PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/fstab.kitakami:root/fstab.kitakami \
    $(SONY_ROOT)/init.recovery.kitakami.rc:root/init.recovery.kitakami.rc \
    $(SONY_ROOT)/init.kitakami.rc:root/init.kitakami.rc \
    $(SONY_ROOT)/init.kitakami.usb.rc:root/init.kitakami.usb.rc \
    $(SONY_ROOT)/init.kitakami.pwr.rc:root/init.kitakami.pwr.rc \
    $(SONY_ROOT)/ueventd.kitakami.rc:root/ueventd.kitakami.rc

PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(SONY_ROOT)/system/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(SONY_ROOT)/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(SONY_ROOT)/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(SONY_ROOT)/system/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(SONY_ROOT)/system/etc/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml

# Device Specific Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml

# NFC
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(SONY_ROOT)/system/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(SONY_ROOT)/system/usr/keylayout/mhl-rcp.kl:system/usr/keylayout/mhl-rcp.kl \
    $(SONY_ROOT)/system/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl:system/usr/keylayout/msm8994-tomtom-snd-card_Button_Jack.kl \
    $(SONY_ROOT)/system/usr/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(SONY_ROOT)/system/usr/keylayout/touch_fusion.kl:system/usr/keylayout/touch_fusion.kl

# QMI
PRODUCT_COPY_FILES += \
    $(SONY_ROOT)/system/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(SONY_ROOT)/system/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(SONY_ROOT)/system/etc/data/qmi_config.xml:system/etc/data/qmi_config.xml


# NFC packages
#PRODUCT_PACKAGES += \
#    com.android.nfc_extras \
#    NfcNci \
#    Tag \
#    nfc_nci.pn54x.default

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8994

# GFX
PRODUCT_PACKAGES += \
    copybit.msm8994 \
    gralloc.msm8994 \
    hwcomposer.msm8994 \
    memtrack.msm8994

# GPS
PRODUCT_PACKAGES += \
    gps.msm8994

# CAMERA
PRODUCT_PACKAGES += \
    camera.msm8994

PRODUCT_PACKAGES += \
    keystore.msm8994

# Lights
PRODUCT_PACKAGES += \
    lights.kitakami

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.kitakami

# RILD
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0 \
    ril.subscription.types=NV,RUIM

# system prop for opengles version
# 196609 is decimal for 0x30001 to
# report major/minor versions as 3/1
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609
