ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = removeota

removeota_FILES = main.m
removeota_CFLAGS = -fobjc-arc
removeota_CODESIGN_FLAGS = -Sentitlements.plist
removeota_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
