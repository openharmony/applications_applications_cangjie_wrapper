# 应用仓颉接口

## 简介

应用仓颉接口是在 OpenHarmony 上基于应用子系统能力之上封装的仓颉API。当前仓颉只支持设置应用，设置应用是 OpenHarmony 系统中预置的系统应用，为用户提供设置系统属性的交互界面，例如设置系统时间，屏幕亮度等系统属性，当前设置应用仓颉接口支持standard设备。

## 系统架构

**图 1**  应用仓颉架构图

!["应用仓颉架构图"](figures/application_cangjie_wrapper_architecture.png )

如架构图所示：

- 查询时间和日期：提供获取当前设置的时间和日期数据项的接口。
- 查询显示效果：提供获取当前设置的显示效果数据项的接口。
- 查询域名数据项：提供获取指定域名数据项的接口，包含设备属性共享域和用户属性域。
- 仓颉应用FFI接口定义：负责定义被仓颉语言调用的C语言互操作接口，用于实现仓颉设置应用能力。
- 设置应用模块：负责提供设置应用基础功能，封装C语言接口提供给仓颉进行互操作。

## 目录

```
applications/standard/applications_cangjie_wrapper
├── figures                 # 存放README中的架构图
├── kit
│   └── BasicServicesKit    # 仓颉设置应用kit化接口
├── ohos
│   └── settings            # 仓颉设置应用接口实现
├── test
    └── APILevel22
        └── settings        # 仓颉设置应用接口测试代码
```

## 使用说明

- 提供以下设置应用功能：
  
  - 查询时间和日期设置
  - 查询显示效果设置
  - 查询指定域名的相关设置

- 与ArkTS提供的API能力相比，暂不支持以下功能：
  
  - 设置时间和日期
  - 设置显示效果
  - 注册/注销 域名指定数据项观察者
  - 打开网络管理设置页面
  - 启用/禁用飞行模式
  - 检查应用是否能够以悬浮窗形式显示

- 设置应用相关API请参见[设置应用API参考](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_zh_cn/apis/BasicServicesKit/cj-apis-settings.md)。

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[applications_settings](https://gitee.com/openharmony/applications_settings/blob/master/README_zh.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README_zh.md)

[ability_cangjie_wrapper](https://gitcode.com/openharmony-sig/ability_ability_cangjie_wrapper/blob/master/README_zh.md)
