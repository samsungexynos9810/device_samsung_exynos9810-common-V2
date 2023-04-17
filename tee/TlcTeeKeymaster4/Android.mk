# =============================================================================
#
# Module: libMcTeeKeymaster4.so - Client library handling key operations
# with TEE Keymaster trustlet
#
# =============================================================================

ifndef TRUSTONIC_ANDROID_LEGACY_SUPPORT

LOCAL_PATH := $(call my-dir)

ifeq ($(APP_PROJECT_PATH),)
MY_LIBRARY_MODULE := keystore.$(TARGET_BOARD_PLATFORM)
else
MY_LIBRARY_MODULE := libMcTeeKeymaster4
endif


# =============================================================================

include $(CLEAR_VARS)
LOCAL_MODULE := $(MY_LIBRARY_MODULE)

ifeq ($(APP_PROJECT_PATH),)
LOCAL_MODULE_RELATIVE_PATH := hw
endif
LOCAL_CPPFLAGS := -Wall
LOCAL_CPPFLAGS += -Wextra
LOCAL_CPPFLAGS += -Werror
LOCAL_CPPFLAGS += -std=c++11

LOCAL_CPPFLAGS += -DKEYMASTER_WANTED_VERSION=4

ifdef ANDROID_P
LOCAL_CPPFLAGS += -DANDROID_P
endif

LOCAL_CPPFLAGS += -DTT_BUILD

ALL_SRC_FILES := $(wildcard ${LOCAL_PATH}/src/*.cpp)
ALL_SRC_FILES += $(wildcard ${LOCAL_PATH}/cust/*.cpp)
LOCAL_SRC_FILES := $(ALL_SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/cust

LOCAL_SHARED_LIBRARIES := libMcClient
ifeq ($(APP_PROJECT_PATH),)
LOCAL_SHARED_LIBRARIES += liblog
else
LOCAL_LDLIBS := -llog
endif
LOCAL_SHARED_LIBRARIES += libcrypto

LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path,/)
$(call import-module,$(COMP_PATH_AndroidBoringSsl))
$(call import-module,$(COMP_PATH_MobiCoreClientLib_module))
$(call import-module,$(COMP_PATH_AndroidGTest))
$(call import-module,$(ANDROID_PACK_PATH_TlcTeeGatekeeper))

endif # !TRUSTONIC_ANDROID_LEGACY_SUPPORT
