#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, device/samsung/n80xx-common/n80xx-common.mk)

LOCAL_PATH := device/samsung/n801x

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# Rootdir
PRODUCT_COPY_FILES += \
    device/samsung/n801x/rootdir/init.target.rc:root/init.target.rc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Gps
PRODUCT_COPY_FILES += \
    device/samsung/n801x/configs/gps.conf:system/etc/gps.conf \
    device/samsung/n801x/configs/gps.xml:system/etc/gps.xml
