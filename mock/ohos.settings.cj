/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

package ohos.settings

import ohos.app.ability.ui_ability.UIAbilityContext
import ohos.labels.APILevel

@!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core", throwexception: true, workerthread: true]
public func getValue<T>(context: UIAbilityContext, name: T, defValue: String): String where T <: ToString {
    return String()
}

@!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core", throwexception: true, workerthread: true]
public func getValue<T, P>(context: UIAbilityContext, name: T, defValue: String, domainName: P): String where T <: ToString {
    return String()
}

@!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
public enum DomainName <: ToString {
    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    DeviceShared
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    UserProperty
    | ...

    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    public override func toString(): String {
        return String()
    }
}

@!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
public enum Date <: ToString {
    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    DateFormat
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    TimeFormat
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    AutoGainTime
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    AutoGainTimeZone
    | ...

    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    public override func toString(): String {
        return String()
    }
}

@!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
public enum Display <: ToString {
    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    FontScale
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    ScreenBrightnessStatus
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    AutoScreenBrightness
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    ScreenOffTimeout
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    AutoScreenBrightnessMode
    | @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    ManualScreenBrightnessMode
    | ...

    @!APILevel[since: "22", syscap: "SystemCapability.Applications.Settings.Core"]
    public override func toString(): String {
        return String()
    }
}