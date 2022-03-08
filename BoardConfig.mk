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
TARGET_BOARD_PLATFORM        := sc8830
TARGET_BOARD_PLATFORM_GPU    := mali-400
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_ARCH_VARIANT          := armv7-a
TARGET_CPU_VARIANT           := cortex-a7
TARGET_BOOTLOADER_BOARD_NAME := sc7727s

# Bootloader
TW_HAS_DOWNLOAD_MODE    := true
TW_NO_REBOOT_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := j1pop3g,j1pop3gjv,SM-J110H

# Filesystem
TARGET_USERIMAGES_USE_EXT4  := true
BOARD_USES_MMCUTILS         := true
BOARD_SUPPRESS_EMMC_WIPE    := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_REAL_SDCARD    := true
RECOVERY_SDCARD_ON_DATA     := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_FLASH_BLOCK_SIZE      := 0

# Kernel
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB      := $(LOCAL_PATH)/prebuilt/dtb
BOARD_KERNEL_CMDLINE     := console=ttyS1,115200n8
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_MKBOOTIMG_ARGS   := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/prebuilt/dtb

# Display & Graphics
TW_THEME                         := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP
BOARD_RECOVERY_SWIPE    := true
TW_INPUT_BLACKLIST      := "hbtp_vm"
TW_EXCLUDE_TWRPAPP      := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"
