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
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

TARGET_BOOTLOADER_BOARD_NAME := 204hw

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/huawei/204hw/fstab.huawei
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/204hw/recovery/graphics.c ../../../device/huawei/204hw/recovery/graphics_overlay.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/204hw/recovery/keys.c
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_SPECIFIC_HEADER_PATH := device/huawei/204hw/include
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000
BOARD_WANTS_EMMC_BOOT := true

TARGET_KERNEL_CONFIG := hw_msm8x25_defconfig
TARGET_KERNEL_SOURCE := kernel/huawei/204hw

BOARD_EGL_CFG := device/huawei/204hw/configs/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP -DQCOM_HARDWARE -DUSE_ION

TARGET_QCOM_MEDIA_VARIANT := legacy
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf

BOARD_RIL_CLASS := ../../../device/huawei/204hw/ril/

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
