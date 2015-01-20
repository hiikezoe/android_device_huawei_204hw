$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/204hw/204hw-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/204hw/overlay

LOCAL_PATH := device/huawei/204hw

PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/fstab.huawei:root/fstab.huawei \
  $(LOCAL_PATH)/rootdir/init.huawei.rc:root/init.huawei.rc \
  $(LOCAL_PATH)/rootdir/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  $(LOCAL_PATH)/rootdir/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
  $(LOCAL_PATH)/rootdir/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
  $(LOCAL_PATH)/rootdir/ueventd.huawei.rc:root/ueventd.huawei.rc

PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
  frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
  frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
  frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
  frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
  frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
  frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, $(LOCAL_PATH)/idc/idc.mk)
$(call inherit-product, $(LOCAL_PATH)/keylayout/keylayout.mk)
$(call inherit-product, $(LOCAL_PATH)/keychars/keychars.mk)

PRODUCT_PACKAGES += \
  libgenlock \
  copybit.msm7x27a \
  gralloc.msm7x27a \
  hwcomposer.msm7x27a \
  libtilerenderer

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_204hw
PRODUCT_DEVICE := 204hw

