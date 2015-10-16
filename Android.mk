ifeq ($(filter-out ivy karin karin_windy sumire suzuran,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
