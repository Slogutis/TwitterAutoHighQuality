ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwitterAuto4K

TwitterAuto4K_FILES = Tweak.x
TwitterAuto4K_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
