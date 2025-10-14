/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.settings

import ohos.app.ability.ui_ability.{UIAbilityContext, getStageContext}
import ohos.business_exception.{BusinessException, getUniversalErrorMsg}
import ohos.labels.*

import std.collection.HashMap

const SYSTEM_INTERNAL_ERROR: Int32 = 14700104
let ERROR_CODE_MAP = HashMap<Int32, String>(
    [(SYSTEM_INTERNAL_ERROR, "System internal error such as out memory or deadlock.")])

func getErrorMsg(code: Int32): String {
    if (let Some(v) <- getUniversalErrorMsg(code)) {
        return v
    } else if (ERROR_CODE_MAP.contains(code)) {
        return ERROR_CODE_MAP[code]
    } else {
        return "Unknown error code ${code}"
    }
}

/**
 * Get value from settingsdata(synchronous method).
 *
 * @param { UIAbilityContext } context - Indicates Context instance.
 * @param { T } name - Indicates the name of the character string.
 * @param { String } defValue - Indicates the default value of the character string.
 * @returns { String } Returns settingsdata value.
 * @throws { BusinessException } 14800000 - Parameter error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T>(context: UIAbilityContext, name: T, defValue: String): String where T <: ToString {
    let stageContext = getStageContext(context)
    if (stageContext.isNull()) {
        throw BusinessException(14800000, "Parameter error.")
    }
    var ret: Int32 = 0
    var value: String = ""
    unsafe {
        try (
            cName = LibC.mallocCString(name.toString()).asResource(),
            cDefValue = LibC.mallocCString(defValue).asResource()
        ) {
            let result = FfiSettingsGetValue(stageContext, cName.value, cDefValue.value, CString(CPointer()), inout ret)
            if (result.isNull()) {
                throw BusinessException(ret, getErrorMsg(ret))
            }
            value = result.toString()
            LibC.free(result)
        }
    }
    value
}

/**
 * Get value from settingsdata(synchronous method).
 *
 * @param { UIAbilityContext } context - Indicates Context instance.
 * @param { T } name - Indicates the name of the character string.
 * @param { String } defValue - Indicates the default value of the character string.
 * @param { P } domainName - Indicates the name of the domain name to set.
 * @returns { String } Returns settingsdata value.
 * @throws { BusinessException } 14800000 - Parameter error.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Applications.Settings.Core"
]
public func getValue<T, P>(context: UIAbilityContext, name: T, defValue: String, domainName: P): String where T <: ToString,
    P <: ToString {
    let stageContext = getStageContext(context)
    if (stageContext.isNull()) {
        throw BusinessException(14800000, "Parameter error.")
    }
    var ret: Int32 = 0
    var value: String = ""
    unsafe {
        try (
            cName = LibC.mallocCString(name.toString()).asResource(),
            cDefValue = LibC.mallocCString(defValue).asResource(),
            cDomainName = LibC.mallocCString(domainName.toString()).asResource()
        ) {
            let result = FfiSettingsGetValue(stageContext, cName.value, cDefValue.value, cDomainName.value, inout ret)
            if (result.isNull()) {
                throw BusinessException(ret, getErrorMsg(ret))
            }
            value = result.toString()
            LibC.free(result)
        }
    }
    value
}

