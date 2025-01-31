# Copyright (C) 2011 The Android Open Source Project
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	exynos_v4l2.c \
	exynos_subdev.c \
	exynos_mc.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(TOP)/hardware/samsung_slsi-cm/exynos/libexynosutils

LOCAL_HEADER_LIBRARIES := generated_kernel_headers

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libutils \
	libexynosutils

LOCAL_MODULE := libexynosv4l2

include $(BUILD_SHARED_LIBRARY)
