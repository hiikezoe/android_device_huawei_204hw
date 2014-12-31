USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/204hw/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU : = neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := 204hw

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/huawei/204hw/fstab.huawei
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/204hw/recovery/graphics.c ../../../device/huawei/204hw/recovery/graphics_overlay.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/204hw/recovery/keys.c
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_WANTS_EMMC_BOOT := true

TARGET_KERNEL_CONFIG := hw_msm8x25_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/204hw
BOARD_USES_QCOM_HARDWARE := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
