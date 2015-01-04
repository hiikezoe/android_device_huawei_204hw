$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/204hw/204hw-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/204hw/overlay

LOCAL_PATH := device/huawei/204hw

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/fstab.huawei:root/fstab.huawei \
  $(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_204hw
PRODUCT_DEVICE := 204hw
