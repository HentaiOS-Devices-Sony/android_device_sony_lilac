$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/lilac/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
# vendor/aosp/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 720
# vendor/aosp/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### GApps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
IS_PHONE := true

### PIXEL
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_lilac
PRODUCT_DEVICE := lilac
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8441
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lilac \
    PRIVATE_BUILD_DESC="G8441-user 9 47.2.A.11.228 3311891731 release-keys"

BUILD_FINGERPRINT := Sony/G8441/G8441:9/47.2.A.11.228/3311891731:user/release-keys

#ifneq ($(LINEAGE_DEV_CERTIFICATE),)
#    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
#endif

#ifneq ($(LINEAGE_VERITY_CERTIFICATE),)
#    PRODUCT_VERITY_SIGNING_KEY := $(LINEAGE_VERITY_CERTIFICATE)
#endif
