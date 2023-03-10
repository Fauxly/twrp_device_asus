#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/asus/P021

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_VARIANT := x86

#TARGET_CPU_SMP := true

# Assert
TARGET_OTA_ASSERT_DEVICE := P021

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive idle=halt androidboot.hardware=sofia3g nolapic_pm firmware_class.path=/system/vendor/firmware nolapic_timer x86_intel_xgold_timer=soctimer_only vmalloc=256M slub_max_order=0 build_version=3 debug notsc
TARGET_PREBUILT_KERNEL := device/asus/P021/kernel
BOARD_KERNEL_BASE := 0x007f8000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0xffc08000 --tags_offset 0xff808100
TARGET_KERNEL_ARCH := x86
TARGET_KERNEL_HEADER_ARCH := x86
TARGET_KERNEL_SOURCE := kernel/asus/P021
TARGET_KERNEL_CONFIG := P021_defconfig

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# Platform
TARGET_BOARD_PLATFORM := sofia3g

TARGET_DROIDBOOT_LIBS := libintel_droidboot

TARGET_BOOTLOADER_BOARD_NAME := EeePad

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# display
DEVICE_RESOLUTION := 600x1024
TW_IGNORE_MAJOR_AXIS_0 := true
TW_THEME := landscape_hdpi
TW_ROTATION := 90
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
BOARD_HAS_FLIPPED_SCREEN := true

# For test after DEVICE_RESOLUTION
#DEVICE_SCREEN_WIDTH := 600
#DEVICE_SCREEN_HEIGHT := 1024
