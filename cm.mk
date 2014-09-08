$(call inherit-product, device/htc/zara/full_zara.mk)

PRODUCT_RELEASE_NAME := zara

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/zara/device.mk)

# Device naming
PRODUCT_DEVICE := zara
PRODUCT_NAME := cm_zara
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire 601 GSM
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=zara BUILD_ID=KOT49H BUILD_FINGERPRINT="htc/htc_europe/zara:4.4.2/KOT49H/334166.10:user/release-keys" PRIVATE_BUILD_DESC="5.11.401.10 CL334166 release-keys"
