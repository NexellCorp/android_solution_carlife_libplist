LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := libcnary
LOCAL_SRC_FILES := \
	node.c \
	list.c \
	node_list.c \
	iterator.c \
	node_iterator.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include
LOCAL_CFLAGS := \
	-Wall -Wextra -Wredundant-decls -Wshadow -Wpointer-arith -Wwrite-strings -Wswitch-default -Wno-unused-parameter -fvisibility=default -pthread
LOCAL_LDFLAGS := \

LOCAL_SHARED_LIBRARIES := \

include $(BUILD_SHARED_LIBRARY)
