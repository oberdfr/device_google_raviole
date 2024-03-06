# Copyright (C) 2023 The Android Open-Source Project
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

# This file was autogenerated by country_conf_gen.sh

ifneq ($(LOCAL_PATH),device/google/raviole/uwb)
  $(error LOCAL_PATH in country_conf_gen.sh needs to be updated, and uwb_calibration_country.mk regenerated)
endif
diffs := $(shell diff $(LOCAL_PATH)/uwb_calibration_country.mk <(device/google/raviole/uwb/country_conf_gen.sh))
ifneq ($(diffs),)
  $(error device/google/raviole/uwb/uwb_calibration_country.mk is not up to date, please run device/google/raviole/uwb/country_conf_gen.sh > device/google/raviole/uwb/uwb_calibration_country.mk)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/UWB-calibration-fcc.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-us.conf \
    $(LOCAL_PATH)/UWB-calibration-fcc.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ca.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-at.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-be.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-bg.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-hr.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-cy.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-cz.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-dk.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ee.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-fi.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-fr.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-de.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-gr.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-hu.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ie.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-it.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-lv.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-lt.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-lu.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-mt.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-nl.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-pl.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-pt.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ro.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-sk.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-si.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-es.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-se.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-gb.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ni.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-is.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-li.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-no.conf \
    $(LOCAL_PATH)/UWB-calibration-ce.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ch.conf \
    $(LOCAL_PATH)/UWB-calibration-jp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-jp.conf \
    $(LOCAL_PATH)/UWB-calibration-tw.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-tw.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ar.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-am.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-az.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-by.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-id.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-kz.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-kg.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-np.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-pk.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-py.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ru.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-sb.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-tj.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-tm.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-ua.conf \
    $(LOCAL_PATH)/UWB-calibration-restricted.conf:$(TARGET_COPY_OUT_VENDOR)/etc/uwb/UWB-calibration-uz.conf \
