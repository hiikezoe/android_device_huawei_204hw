## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 204hw

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/204hw/device_204hw.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 204hw
PRODUCT_NAME := cm_204hw
PRODUCT_BRAND := huawei
PRODUCT_MODEL := 204hw
PRODUCT_MANUFACTURER := huawei
