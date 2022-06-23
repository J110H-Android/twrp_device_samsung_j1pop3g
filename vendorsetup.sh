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

export ALLOW_MISSING_DEPENDENCIES=true
export OF_FL_PATH1="/flashlight"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/sprd-sdhci.3/by-name/RECOVERY"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/platform/sprd-sdhci.3/by-name/SYSTEM"
export FOX_RECOVERY_BOOT_PARTITION="/dev/block/platform/sprd-sdhci.3/by-name/KERNEL"
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_XZ_UTILS=1
export OF_DEVICE_WITHOUT_PERSIST=1

add_lunch_combo omni_j1pop3g-eng
