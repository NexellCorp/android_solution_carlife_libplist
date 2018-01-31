LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := plist_cmp
LOCAL_SRC_FILES := \
	plist_cmp.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../libcnary/include \
	$(LOCAL_PATH)/../include
LOCAL_SHARED_LIBRARIES := \
	libcnary \
	libplist

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := plist_test
LOCAL_SRC_FILES := \
	plist_test.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../libcnary/include \
	$(LOCAL_PATH)/../include
LOCAL_SHARED_LIBRARIES := \
	libcnary \
	libplist

include $(BUILD_EXECUTABLE)
