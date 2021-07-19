LOCAL_PATH := $(call my-dir)


libpahocpp-mqtt3_includes := $(LOCAL_PATH) \
	$(LOCAL_PATH)/mqtt \

LOCAL_CPPFLAGS := \
    -Wno-unused-variable \
    -Wno-unused-parameter \
	-std=c++11

libpahocpp-mqtt3_src_files := \
	async_client.cpp \
	client.cpp \
	connect_options.cpp \
	create_options.cpp \
	disconnect_options.cpp \
	iclient_persistence.cpp \
	message.cpp \
	properties.cpp \
	response_options.cpp \
	ssl_options.cpp \
	string_collection.cpp \
	subscribe_options.cpp \
	token.cpp \
	topic.cpp \
	will_options.cpp


include $(CLEAR_VARS)
LOCAL_MODULE    := libpaho-mqttpp3
LOCAL_SHARED_LIBRARIES := libpaho-mqtt3a
LOCAL_CPPFLAGS += -fexceptions
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/mqtt \
	$(LOCAL_PATH)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/mqtt
LOCAL_SRC_FILES := $(libpahocpp-mqtt3_src_files)
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libpaho-mqttpp3-static
LOCAL_STATIC_LIBRARIES := libpaho-mqtt3a
LOCAL_CPPFLAGS += -fexceptions
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/mqtt \
	$(LOCAL_PATH)
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/mqtt
LOCAL_SRC_FILES := $(libpahocpp-mqtt3_src_files)
include $(BUILD_STATIC_LIBRARY)

# Samples

include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := async_publish
LOCAL_SRC_FILES := samples/async_publish.cpp
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := async_publish_time
LOCAL_SRC_FILES := samples/async_publish_time.cpp
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := async_subscribe
LOCAL_SRC_FILES := samples/async_subscribe.cpp
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := async_consume
LOCAL_SRC_FILES := samples/async_consume.cpp
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := sync_publish
LOCAL_SRC_FILES := samples/sync_publish.cpp
include $(BUILD_EXECUTABLE)



include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a
LOCAL_MODULE := sync_consume
LOCAL_SRC_FILES := samples/sync_consume.cpp
include $(BUILD_EXECUTABLE)

# TODO - Built other samples later