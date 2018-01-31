LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := libplist
LOCAL_SRC_FILES := \
	base64.c \
	bytearray.c \
	hashtable.c \
	ptrarray.c \
	time64.c \
	xplist.c \
	bplist.c \
	plist.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../libcnary/include
LOCAL_CFLAGS := \
	-Wall -Wextra -Wredundant-decls -Wshadow -Wpointer-arith -Wwrite-strings -Wswitch-default -Wno-unused-parameter -fvisibility=default -pthread
LOCAL_SHARED_LIBRARIES := \
	libcnary

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := libplist++
LOCAL_SRC_FILES := \
	Node.cpp \
	Structure.cpp \
	Array.cpp \
	Boolean.cpp \
	Data.cpp \
	Date.cpp \
	Dictionary.cpp \
	Integer.cpp \
	Key.cpp \
	Real.cpp \
	String.cpp \
	Uid.cpp
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../ \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../libcnary/include
LOCAL_CFLAGS := \
	-Wall -Wextra -Wredundant-decls -Wshadow -Wpointer-arith -Wwrite-strings -Wswitch-default -Wno-unused-parameter -fvisibility=default -pthread
LOCAL_SHARED_LIBRARIES := \
	libcnary \
	libplist

include $(BUILD_SHARED_LIBRARY)
