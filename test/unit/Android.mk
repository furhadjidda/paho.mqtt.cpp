
LOCAL_PATH := $(call my-dir)

LOCAL_CPPFLAGS := \
    -Wno-unused-variable \
    -Wno-unused-parameter \
	-std=c++11

# Building Unit tests
libpahocpp_unit_tests := \
  unit_tests.cpp \
  test_async_client.cpp \
  test_buffer_ref.cpp \
  test_client.cpp \
  test_connect_options.cpp \
  test_create_options.cpp \
  test_disconnect_options.cpp \
  test_exception.cpp \
  test_message.cpp \
  test_persistence.cpp \
  test_properties.cpp \
  test_response_options.cpp \
  test_string_collection.cpp \
  test_token.cpp \
  test_topic.cpp \
  test_will_options.cpp

include $(CLEAR_VARS)
LOCAL_CPPFLAGS += -fexceptions
LOCAL_LDLIBS += -llog
LOCAL_SHARED_LIBRARIES := libpaho-mqttpp3 \
	libpaho-mqtt3a \
	liblog
LOCAL_STATIC_LIBRARIES := libcatch2-main
LOCAL_MODULE := pahocpp_unit_tests
LOCAL_SRC_FILES := $(libpahocpp_unit_tests)
include $(BUILD_EXECUTABLE)