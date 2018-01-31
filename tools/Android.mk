LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := plistutil
LOCAL_SRC_FILES := \
	plistutil.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../include
LOCAL_SHARED_LIBRARIES := \
	libcnary \
	libplist

include $(BUILD_EXECUTABLE)
