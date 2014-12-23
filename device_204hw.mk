$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/204hw/204hw-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/204hw/overlay

LOCAL_PATH := device/huawei/204hw

PRODUCT_COPY_FILES += \
  vendor/huawei/204hw/proprietary/bin/linker:recovery/root/sbin/linker \
  vendor/huawei/204hw/proprietary/bin/rmt_storage:recovery/root/sbin/rmt_storage \
  vendor/huawei/204hw/proprietary/bin/rmt_oeminfo:recovery/root/sbin/rmt_oeminfo \
  vendor/huawei/204hw/proprietary/lib/libc.so:recovery/root/sbin/libc.so \
  vendor/huawei/204hw/proprietary/lib/libcutils.so:recovery/root/sbin/libcutils.so \
  vendor/huawei/204hw/proprietary/lib/liblog.so:recovery/root/sbin/liblog.so \
  vendor/huawei/204hw/proprietary/lib/libm.so:recovery/root/sbin/libm.so \
  vendor/huawei/204hw/proprietary/lib/liboeminfo.so:recovery/root/sbin/liboeminfo.so \
  vendor/huawei/204hw/proprietary/lib/libstdc++.so:recovery/root/sbin/libstdc++.so \
  vendor/huawei/204hw/proprietary/lib/libutils.so:recovery/root/sbin/libutils.so \
  vendor/huawei/204hw/proprietary/lib/libz.so:recovery/root/sbin/libz.so

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_204hw
PRODUCT_DEVICE := 204hw
