LOCAL_PATH := $(call my-dir)

# MFC Firmware
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/mfc_fw.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mfc_fw.bin

# BCM Firmware
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bcm4361B2_murata.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4361B2_murata.hcd \
	$(LOCAL_PATH)/bcm4361B2_semco.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4361B2_semco.hcd \
	$(LOCAL_PATH)/bcmdhd_clm.blob:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_clm.blob \
	$(LOCAL_PATH)/bcmdhd_mfg.bin_b0:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mfg.bin_b0 \
	$(LOCAL_PATH)/bcmdhd_mfg.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mfg.bin_b2 \
	$(LOCAL_PATH)/bcmdhd_mon.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_mon.bin_b2 \
	$(LOCAL_PATH)/bcmdhd_sta.bin_b0:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_sta.bin_b0 \
	$(LOCAL_PATH)/bcmdhd_sta.bin_b2:$(TARGET_COPY_OUT_VENDOR)/firmware/bcmdhd_sta.bin_b2 \
# WIP