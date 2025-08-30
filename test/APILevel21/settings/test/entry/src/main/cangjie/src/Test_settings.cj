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

package ohos_app_cangjie_entry

import kit.BasicServicesKit.*
import std.unittest.testmacro.*
import std.unittest.*
import std.unittest.common.*
import std.unittest.testmacro.*
import ohos.base.*
import std.regex.Regex
import kit.TestKit.*
import kit.PerformanceAnalysisKit.*

public func changeBrightnessTo(deltaX: Int32): Unit {
    Hilog.info(0, "CangjieTest", "swipe before")
    let driver = Driver.create()
    driver.swipe(1158, 157, 1158, 500)
    Hilog.info(0, "CangjieTest", "swipe end")
    sleep(3 * Duration.second)
    click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("Ctrl.HeaderLayout_Bg_settings").centerPoint)
    sleepFor(1.second)
    click(at: Screen.getTheOnlyUiComponentWhoseIdEqualsTo("display_settings.title").centerPoint)
    let centerPointOfSlider = Screen.getTheOnlyUiComponentWhoseIdEqualsTo("brightness_slider").centerPoint
    click(at: Point(centerPointOfSlider.x + deltaX, centerPointOfSlider.y))
    sleepFor(5.second)
    pressBack()
}

@Test
class Test_settings {
    @TestCase
    @Tag[APILevel21, TestLevel0]
    func setAndGetBrightness(): Unit {
        //changeBrightnessTo(-200)
        Hilog.info(0, "CangjieTest", "Start")
        const defaultValue = "-1"
        let brightnessValueRegex = Regex("^(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)$")
        let delegator = AbilityDelegatorRegistry.getAbilityDelegator()
        @Expect(brightnessValueRegex.matches(getValue<Display>(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue)))
        @Expect(brightnessValueRegex.matches(getValue<Display, DomainName>(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.DeviceShared)))
        @Expect(getValue<Display, DomainName>(getAbilityContext(), Display.ScreenBrightnessStatus, defaultValue, DomainName.UserProperty), defaultValue)
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func testEnumDate(): Unit {
        let enumArray: Array<Date> = [DateFormat, TimeFormat, AutoGainTime, AutoGainTimeZone]
        let strArray: Array<String> = [
            "settings.date.date_format",
            "settings.date.time_format",
            "settings.date.auto_gain_time",
            "settings.date.auto_gain_time_zone"
        ]
        for (i in 0..enumArray.size) {
            @Expect(enumArray[i].toString() == strArray[i])
        }
    }

    @TestCase
    @Tag[APILevel21, TestLevel0]
    func testEnumDisplay(): Unit {
        let enumArray: Array<Display> = [
            FontScale,
            ScreenBrightnessStatus,
            AutoScreenBrightness,
            ScreenOffTimeout,
            DefaultScreenRotation,
            AnimatorDurationScale,
            TransitionAnimationScale,
            WindowAnimationScale,
            DisplayInversionStatus
        ]
        let strArray: Array<String> = [
            "settings.display.font_scale",
            "settings.display.screen_brightness_status",
            "settings.display.auto_screen_brightness",
            "settings.display.screen_off_timeout",
            "settings.display.default_screen_rotation",
            "settings.display.animator_duration_scale",
            "settings.display.transition_animation_scale",
            "settings.display.window_animation_scale",
            "settings.display.display_inversion_status"
        ]
        for (i in 0..enumArray.size) {
            @Expect(enumArray[i].toString() == strArray[i])
        }
    }
}
