/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#include <cutils/properties.h>
#include <string.h>

inline const char* getBTDefaultName()
{
    char device[PROPERTY_VALUE_MAX];
    property_get("ro.boot.hardware", device, "");

    if (!strcmp("ivy", device)) {
        return "Xperia Z3+";
    } else if (!strcmp("karin", device)) {
        return "Xperia Z4 Tablet";
    } else if (!strcmp("karin_windy", device)) {
        return "Xperia Z4 Tablet";
    } else if (!strcmp("sumire", device)) {
        return "Xperia Z5";
    } else if (!strcmp("suzuran", device)) {
        return "Xperia Z5 Compact";
    } else if (!strcmp("satsuki", device)) {
        return "Xperia Z5 Premium";
    }

    return "Xperia";
}

#define BTM_DEF_LOCAL_NAME getBTDefaultName()

/* #define BTA_AV_CO_CP_SCMS_T   TRUE */
#define SDP_AVRCP_1_5   FALSE

#endif
