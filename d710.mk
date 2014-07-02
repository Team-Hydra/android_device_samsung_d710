# Copyright (C) 2010 The Android Open Source Project
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
# limitations under the License.i

# device specific overlays
DEVICE_PACKAGE_OVERLAYS := \
	device/samsung/d710/overlay \
	device/samsung/galaxys2-common/overlay

# inherit common makefile
$(call inherit-product, device/samsung/d710/device.mk)

# d710 CDMA properties
PRODUCT_PROPERTY_OVERRIDES := \
	ro.com.google.clientidbase=android-sprint-us \
	ro.cdma.home.operator.numeric=310120 \
	ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.user=user[SPACE]SprintNextel

# assert
TARGET_OTA_ASSERT_DEVICE := epic4gtouch,SPH-D710,d710,smdk4210,SPH-D710VMUB,SPH-D710BST
