CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d)
CUSTOM_PLATFORM_VERSION := bamberga

CUSTOM_VERSION := $(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)
CUSTOM_VERSION_PROP := sixteen

# PixelOS Platform Version
PRODUCT_PRODUCT_PROPERTIES += \
    ro.custom.build.date=$(CUSTOM_BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.custom.version=uwuAOSP_$(CUSTOM_VERSION)

# Updater
ifeq ($(IS_OFFICIAL),true)
    PRODUCT_PRODUCT_PROPERTIES += \
        org.uwuaosp.build_type=ci \
        org.uwuaosp.version=$(CUSTOM_VERSION_PROP)
endif
