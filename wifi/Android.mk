#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

# Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/conf/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/conf/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4361B2_murata.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4361B2_murata.hdc \
    $(LOCAL_PATH)/firmware/bcm4361B2_semco.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4361B2_semco.hdc \
    $(LOCAL_PATH)/firmware/bcmdhd_clm.blob:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_clm.blob \
    $(LOCAL_PATH)/firmware/bcmdhd_mfg.bin_b0:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mfg.bin_b0 \
    $(LOCAL_PATH)/firmware/bcmdhd_mfg.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mfg.bin_b2 \
    $(LOCAL_PATH)/firmware/bcmdhd_mon.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mon.bin_b2 \
    $(LOCAL_PATH)/firmware/bcmdhd_sta.bin_b0:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_sta.bin_b0 \
    $(LOCAL_PATH)/firmware/bcmdhd_sta.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_sta.bin_b2 \
    $(LOCAL_PATH)/firmware/nvram.txt_murata_r041_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/nvram.txt_murata_r041_b2 \
    $(LOCAL_PATH)/firmware/nvram.txt_r02a_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/nvram.txt_r02a_b2 \
    $(LOCAL_PATH)/firmware/nvram.txt_r02b_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/nvram.txt_r02b_b2
