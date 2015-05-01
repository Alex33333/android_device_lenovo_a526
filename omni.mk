## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := A526

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/A526/device_A526.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := A526
PRODUCT_NAME := omni_A526
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := A526
PRODUCT_MANUFACTURER := Lenovo
