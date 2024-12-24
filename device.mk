#
# Copyright (C) 2013 The Android Open-Source Project
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

PRODUCT_COPY_FILES += \
    device/amlogic/common/products/mbox/init.amlogic.rc:root/init.amlogic.rc \
    device/amlogic/yushan_one/init.amlogic.board.rc:root/init.amlogic.board.rc \
    device/amlogic/yushan_one/init.amlogic.usb.rc:root/init.amlogic.usb.rc \
    device/amlogic/yushan_one/init.crestron.rc:root/init.crestron.rc \
    device/amlogic/common/products/mbox/ueventd.amlogic.rc:root/ueventd.amlogic.rc

PRODUCT_COPY_FILES += \
    device/amlogic/yushan_one/files/media_profiles.xml:system/etc/media_profiles.xml \
    device/amlogic/yushan_one/files/audio_policy.conf.mic:system/etc/audio_policy.conf.mic \
    device/amlogic/yushan_one/files/audio_policy.conf.nomic:system/etc/audio_policy.conf.nomic \
    device/amlogic/yushan_one/files/media_codecs.xml:system/etc/media_codecs.xml \
    device/amlogic/yushan_one/files/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/amlogic/yushan_one/files/mesondisplay.cfg:system/etc/mesondisplay.cfg

PRODUCT_COPY_FILES += \
    device/amlogic/yushan_one/files/touchfw_update.sh:/system/bin/touchfw_update.sh \
    device/amlogic/yushan_one/files/touch_update:/system/bin/touch_update

# remote IME config file
PRODUCT_COPY_FILES += \
    device/amlogic/yushan_one/files/remote.conf:system/etc/remote.conf \
    device/amlogic/yushan_one/files/Vendor_0001_Product_0001.kl:/system/usr/keylayout/Vendor_0001_Product_0001.kl

PRODUCT_AAPT_CONFIG := xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := mbx,nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/amlogic/yushan_one/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

# FITCProxy
PRODUCT_PACKAGES += \
    libcurl \
    libbson \
    FITCProxy  
    
# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
