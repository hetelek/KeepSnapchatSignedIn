THEOS_DEVICE_IP = 192.168.1.6
TARGET := iphone:7.1:2.0
ARCHS := armv7 armv7s arm64
ADDITIONAL_OBJCFLAGS = -fobjc-arc

include theos/makefiles/common.mk

TWEAK_NAME = KeepSnapchatSignedIn
KeepSnapchatSignedIn_FILES = Tweak.xm
KeepSnapchatSignedIn_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Snapchat"
