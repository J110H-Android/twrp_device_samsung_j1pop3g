#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/j1pop3g

# Platform
TARGET_ARCH                  := arm
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_VARIANT           := generic
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_BOOTLOADER_BOARD_NAME := sc7727s
TARGET_BOARD_PLATFORM        := sc8830
TARGET_BOARD_PLATFORM_GPU    := mali-400
BOARD_VENDOR                 := samsung

# Bootloader
TW_NO_REBOOT_BOOTLOADER     := true
TW_HAS_DOWNLOAD_MODE        := true
BOARD_HAS_NO_MISC_PARTITION := true

# Assert
TARGET_OTA_ASSERT_DEVICE := j1pop3g,j1pop3gjv,SM-J110H

# Filesystem
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE             := 1024
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_HAS_NO_REAL_SDCARD           := true
RECOVERY_SDCARD_ON_DATA            := true
BOARD_CUSTOM_BOOTIMG_MK            := $(LOCAL_PATH)/mkbootimg.mk

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB    := $(LOCAL_PATH)/prebuilt/dtb
BOARD_KERNEL_CMDLINE   := console=ttyS1,115200n8
BOARD_KERNEL_PAGESIZE  := 2048
BOARD_KERNEL_BASE      := 0x00000000
BOARD_KERNEL_OFFSET    := 0x00008000
BOARD_RAMDISK_OFFSET   := 0x01000000
BOARD_SECOND_OFFSET    := 0x00f00000
BOARD_TAGS_OFFSET      := 0x00000100
BOARD_MKBOOTIMG_ARGS   += --dt $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS   += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS   += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS   += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS   += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS   += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS   += --tags_offset $(BOARD_TAGS_OFFSET)

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TeamWin Recovery
TW_THEME                := portrait_hdpi
TW_EXCLUDE_TZDATA       := false
TW_EXCLUDE_NANO         := false
TW_EXCLUDE_BASH         := false
TW_INCLUDE_FB2PNG       := true
TW_FORCE_USE_BUSYBOX    := true
TW_INCLUDE_CRYPTO       := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"

# SkyHawk Recovery
ifneq ($(wildcard vendor/shrp),)
	SHRP_DEVICE_CODE          := j1pop3g
	SHRP_PATH                 := $(LOCAL_PATH)
	SHRP_EXTERNAL             := /external_sd
	SHRP_OTG                  := /usb-otg
	SHRP_FLASH                := 1
	SHRP_REC                  := /dev/block/platform/sprd-sdhci.3/by-name/RECOVERY
	SHRP_CUSTOM_FLASHLIGHT    := true
	SHRP_FONP_1               := /sys/devices/virtual/camera/rear/rear_flash
	SHRP_FLASH_MAX_BRIGHTNESS := 1
	SHRP_EXPRESS              := true
	TW_INCLUDE_FB2PNG         := false
	TW_FORCE_USE_BUSYBOX      := false
endif
