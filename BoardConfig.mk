#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/NB1

# Inherit from common device tree
include device/nokia/msm8998-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := lineageos_NB1_defconfig

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include the proprietary files
include vendor/nokia/NB1/BoardConfigVendor.mk
