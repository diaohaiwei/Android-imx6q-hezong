# This is a FSL Android Reference Design platform based on i.MX6Q ARD board
# It will inherit from FSL core product which in turn inherit from Google generic

$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)
$(call inherit-product, device/fsl/imx6/rtkbt/rtkbt.mk)

ifneq ($(wildcard device/fsl/sabresd_6dq/fstab_nand.freescale),)
$(shell touch device/fsl/sabresd_6dq/fstab_nand.freescale)
endif

ifneq ($(wildcard device/fsl/sabresd_6dq/fstab.freescale),)
$(shell touch device/fsl/sabresd_6dq/fstab.freescale)
endif

# Overrides
PRODUCT_NAME := sabresd_6dq
PRODUCT_DEVICE := sabresd_6dq

PRODUCT_COPY_FILES += \
	device/fsl/sabresd_6dq/init.rc:root/init.freescale.rc \
        device/fsl/sabresd_6dq/init.i.MX6Q.rc:root/init.freescale.i.MX6Q.rc \
        device/fsl/sabresd_6dq/init.i.MX6DL.rc:root/init.freescale.i.MX6DL.rc \
	device/fsl/sabresd_6dq/init.i.MX6QP.rc:root/init.freescale.i.MX6QP.rc \
	device/fsl/sabresd_6dq/audio_policy.conf:system/etc/audio_policy.conf \
	device/fsl/sabresd_6dq/audio_effects.conf:system/vendor/etc/audio_effects.conf

PRODUCT_COPY_FILES +=	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6d.bin:system/lib/firmware/vpu/vpu_fw_imx6d.bin 	\
	external/linux-firmware-imx/firmware/vpu/vpu_fw_imx6q.bin:system/lib/firmware/vpu/vpu_fw_imx6q.bin
# setup dm-verity configs.
ifneq ($(BUILD_TARGET_DEVICE),sd)
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk3p5
 $(call inherit-product, build/target/product/verity.mk)
else 
 PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/mmcblk2p5
 $(call inherit-product, build/target/product/verity.mk)

endif

# GPU files

DEVICE_PACKAGE_OVERLAYS := device/fsl/sabresd_6dq/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG += xlarge large tvdpi hdpi xhdpi

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	device/fsl/sabresd_6dq/required_hardware.xml:system/etc/permissions/required_hardware.xml
PRODUCT_PACKAGES += AudioRoute

# others
PRODUCT_COPY_FILES += \
	device/fsl/sabresd_6dq/files/ESFileExplorer.apk:system/app/ESFileExplorer.apk	\
	device/fsl/sabresd_6dq/files/UCBrowser.apk:system/app/UCBrowser.apk	\
	device/fsl/sabresd_6dq/files/8723bu.ko:system/lib/modules/8723bu.ko	\
	device/fsl/sabresd_6dq/files/can.sh:system/bin/can.sh	\
	device/fsl/sabresd_6dq/files/3gdata_call.conf:system/etc/3gdata_call.conf \
	device/fsl/sabresd_6dq/files/init.gprs-pppd:system/etc/ppp/init.gprs-pppd \
	device/fsl/sabresd_6dq/files/rild:system/bin/rild \
	device/fsl/sabresd_6dq/files/libreference-ril.so:system/lib/libreference-ril.so \
	device/fsl/sabresd_6dq/files/libril.so:system/lib/librild.so	\
	device/fsl/sabresd_6dq/files/libandroid_tq.so:system/lib/libandroid_tq.so	\
	device/fsl/sabresd_6dq/files/CanServer.apk:system/app/CanServer.apk	\
	device/fsl/sabresd_6dq/files/ShellCMD.apk:system/app/ShellCMD.apk	\
	device/fsl/sabresd_6dq/files/Tripledisplay_TQ.apk:system/app/Tripledisplay_TQ.apk	\
	device/fsl/sabresd_6dq/files/tq_test.apk:system/app/tq_test.apk	\
	device/fsl/sabresd_6dq/files/shell.sh:system/bin/shell.sh
