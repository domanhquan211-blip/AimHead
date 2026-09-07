ARCHS          = arm64 arm64e
TARGET         = iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SwipeOffsetPatcher

$(TWEAK_NAME)_FILES          = Tweak.x
$(TWEAK_NAME)_CFLAGS         = -fobjc-arc -O2 -fvisibility=hidden
$(TWEAK_NAME)_LDFLAGS        = -lsubstrate
$(TWEAK_NAME)_FRAMEWORKS     = UIKit Foundation
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS =

include $(THEOS_MAKE_PATH)/tweak.mk
