# Boot Animation

du_device := $(patsubst %f,%,$(subst du_,,$(TARGET_PRODUCT)))

ifneq ($(filter begonia raphael enchilada lavender mido wayne whyred platina ginkgo vince twolip beryllium violet X00T RMX1801 tissot x2 jasmine_sprout sirius grus kenzo davinci,$(du_device)),)
scr_resolution := 1080
endif

ifneq ($(filter ysl riva land santoni X00P,$(du_device)),)
scr_resolution := 720
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
