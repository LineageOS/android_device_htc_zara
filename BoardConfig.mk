# Copyright (C) 2015 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common zara-common
include device/htc/zara-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := zara

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := zara

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/zara/rootdir/etc/fstab.qcom

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1912601600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5100273664
BOARD_CACHEIMAGE_PARTITION_SIZE := 251657728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# inherit from the proprietary version
include vendor/htc/zara/BoardConfigVendor.mk
