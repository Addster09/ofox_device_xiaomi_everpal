#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/everpal

# A/B
AB_OTA_PARTITIONS += \
    boot \
    system \
    system_ext \
    product \
    vendor \
    vendor_dlkm \
    odm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# Asserts
TARGET_OTA_ASSERT_DEVICE := evergo,evergreen,everpal,opal

# Boot Image
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery

BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_DTB_OFFSET := 0x07c08000

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := everpal
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 440

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_USES_METADATA_PARTITION := true

BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system \
    system_ext \
    product \
    vendor \
    vendor_dlkm \
    odm
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9122611200

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_ODM := odm

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/mt6833
TARGET_KERNEL_CONFIG := everpal_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz

# Platform
TARGET_BOARD_PLATFORM := mt6833

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.mt6833
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security Patch Level (Hack)
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := rainbow
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_EXCLUDE_APEX := true
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_USES_MKE2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_TWRPAPP := true
#TW_FRAMERATE := 90

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Device config
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 800
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_FASTBOOT_BOOT := true
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.date.utc;ro.build.flavor;ro.build.tags;ro.build.type;ro.build.user;ro.build.version.incremental=ro.system.build.version.incremental;ro.build.version.release=ro.system.build.version.release;ro.build.version.release_or_codename=ro.system.build.version.release;ro.bootimage.build.tags;ro.bootimage.build.type;ro.bootimage.build.fingerprint=ro.system.build.fingerprint;ro.bootimage.build.version.incremental=ro.system.build.version.incremental;ro.bootimage.build.version.release=ro.system.build.version.release;ro.bootimage.build.version.release_or_codename=ro.system.build.version.release;ro.product.build.fingerprint=ro.system.build.fingerprint;ro.product.build.version.incremental=ro.system.build.version.incremental;ro.product.build.version.release=ro.system.build.version.release;ro.product.build.version.release_or_codename=ro.system.build.version.release;ro.build.description=ro.system.build.fingerprint;ro.build.display.id=ro.system.build.fingerprint;ro.build.fingerprint=ro.system.build.fingerprint;ro.odm.build.tags;ro.odm.build.type;ro.odm.build.fingerprint=ro.system.build.fingerprint;ro.odm.build.version.incremental=ro.system.build.version.incremental;ro.odm.build.version.release=ro.system.build.version.release;ro.odm.build.version.release_or_codename=ro.system.build.version.release;ro.system.build.tags;ro.system.build.type;ro.system.build.fingerprint=ro.system.build.fingerprint;ro.system.build.version.incremental=ro.system.build.version.incremental;ro.system.build.version.release=ro.system.build.version.release;ro.system.build.version.release_or_codename=ro.system.build.version.release;ro.system_ext.build.tags;ro.system_ext.build.type;ro.system_ext.build.fingerprint=ro.system.build.fingerprint;ro.system_ext.build.version.incremental=ro.system.build.version.incremental;ro.system_ext.build.version.release=ro.system.build.version.release;ro.system_ext.build.version.release_or_codename=ro.system.build.version.release;ro.vendor.build.tags;ro.vendor.build.type;ro.vendor.build.fingerprint=ro.system.build.fingerprint;ro.vendor.build.version.incremental=ro.system.build.version.incremental;ro.vendor.build.version.release=ro.system.build.version.release;ro.vendor.build.version.release_or_codename=ro.system.build.version.release"

ifneq ($(OF_HIDE_NOTCH),1)
    # Configure Status bar icons for regular TWRP builds only
    TW_CUSTOM_CLOCK_POS := 40
    TW_CUSTOM_CPU_POS := 605
    TW_STATUS_ICONS_ALIGN := center
endif

# Decryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
