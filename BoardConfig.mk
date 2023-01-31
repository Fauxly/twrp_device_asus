#
# Copyright 2013 The Android Open-Source Project
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

DEVICE_PATH := device/asus/P021

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# inherit from the proprietary version
#include vendor/asus/P021/BoardConfigVendor.mk

#TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := false
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_ABI := x86
TARGET_CPU_VARIANT := x86
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_ABI_LIST := x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := x86,armeabi-v7a,armeabi
TARGET_CPU_SMP := true

TARGET_BOARD_PLATFORM := sofia3g
TARGET_DROIDBOOT_LIBS := libintel_droidboot

TARGET_BOOTLOADER_BOARD_NAME := sofia3g

# bootstub as 2nd bootloader
TARGET_BOOTLOADER_IS_2ND := true

BOARD_KERNEL_CMDLINE := idle=halt androidboot.hardware=sofia3g nolapic_pm firmware_class.path=/system/vendor/firmware nolapic_timer x86_intel_xgold_timer=soctimer_only vmalloc=256M slub_max_order=0 build_version=3 debug notsc androidboot.selinux=permissive
#BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 4096
#BOARD_MKBOOTIMG_ARGS := --kernel_offset = 0x00800000 --ramdisk_offset = 0x00400000 --second_offset = 0x00700000

#TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
TARGET_PREBUILT_KERNEL := device/asus/P021/kernel

# Inline kernel building
#TARGET_KERNEL_SOURCE := kernel/asus/p023
#TARGET_KERNEL_ARCH := x86_64
#BOARD_KERNEL_IMAGE_NAME := bzImage
#TARGET_KERNEL_CONFIG := ?_defconfig

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 42024960
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# EGL
BOARD_EGL_CFG := device/asus/P021/configs/egl.cfg

BOARD_HAS_NO_SELECT_BUTTON := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TARGET_RECOVERY_FSTAB := device/asus/p023/fstab.sofia3g
#RECOVERY_FSTAB_VERSION := 2
#TARGET_RECOVERY_FSTAB = device/asus/p023/twrp.fstab

#TWRP

TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_SUPERSU := true
TW_NO_USB_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_NTFS_3G := true
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_VARIANT := twrp
