LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES:= \
	$(call include-path-for,bluez-libs) \
	$(LOCAL_PATH)/bluez-repos/lib

LOCAL_CFLAGS:= \
	-DVERSION=\"1.41\" \
	-lbluetooth

LOCAL_MODULE_TAGS := debug
LOCAL_MODULE:=hcidump

LOCAL_SRC_FILES:= \
	src/hcidump.c \
	parser/avctp.c \
	parser/avdtp.c \
	parser/bnep.c \
	parser/bpa.c \
	parser/capi.c \
	parser/cmtp.c \
	parser/csr.c \
	parser/ericsson.c \
	parser/hci.c \
	parser/hcrp.c \
	parser/hidp.c \
	parser/l2cap.c \
	parser/lmp.c \
	parser/obex.c \
	parser/parser.c \
	parser/ppp.c \
	parser/rfcomm.c \
	parser/sdp.c \
	parser/tcpip.c

LOCAL_SHARED_LIBRARIES := \
	libbluetooth



include $(BUILD_EXECUTABLE)
include $(LOCAL_PATH)/bluez/libs/Android.mk
