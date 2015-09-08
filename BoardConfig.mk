# Copyright 2014 The Android Open Source Project
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

PRODUCT_VENDOR_KERNEL_HEADERS := device/sony/kitakami/kernel-headers

TARGET_BOARD_PLATFORM := msm8994

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

TARGET_USES_64_BIT_BINDER := true
TARGET_USES_64_BIT_BCMDHD := true

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_KERNEL_BOOTIMG := true
BOARD_CUSTOM_MKBOOTIMG := mkqcdtbootimg
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt_dir $(OUT)/dtbs

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=kitakami user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += dwc3.maximum_speed=high lpm_levels.sleep_disabled=1 boot_cpus=0-5 dwc3_msm.prop_chg_detect=Y coherent_pool=8M earlyprintk=msm_hsl_uart,0xf991e000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5513412608
#Reserve space for data encryption (24360517632-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24360501248
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_RECOVERY_FSTAB = device/sony/kitakami/rootdir/fstab.kitakami

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true

USE_DEVICE_SPECIFIC_CAMERA := true

# Wi-Fi definitions for Broadcom solution
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcmdhd.bin"

# BT definitions for Broadcom solution
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/kitakami/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/sony/kitakami/bluetooth/vnd_generic.txt


# GPS definitions for Qualcomm solution
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_SYSTEM_PROP := device/sony/kitakami/system.prop

# NFC
BOARD_NFC_CHIPSET := pn547
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
    WITH_DEXPREOPT ?= true
endif

BUILD_KERNEL := true
-include vendor/sony/kernel/KernelConfig.mk

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/sony/kitakami/sepolicy

BOARD_SEPOLICY_UNION += \
    addrsetup.te \
    device.te \
    file.te \
    property.te \
    sct.te \
    sensors.te \
    service.te \
    system_app.te \
    tad.te \
    ta_qmi.te \
    thermanager.te \
    timekeep.te \
    file_contexts \
    property_contexts \
    service_contexts

