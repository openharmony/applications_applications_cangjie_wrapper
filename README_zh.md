# 应用仓颉接口

## 简介

应用仓颉接口是在 OpenHarmony 上基于应用子系统能力之上封装的仓颉API。当前仓颉只支持设置应用，设置应用是 OpenHarmony 系统中预置的系统应用，为用户提供设置系统属性的交互界面，例如设置系统时间，屏幕亮度等系统属性。

### 架构图

![](figures/application_cangjie_wrapper_architecture.png "应用仓颉架构图")

## 目录

```
applications/standard/applications_cangjie_wrapper
├── ohos             # 仓颉settings接口实现
├── kit              # 仓颉kit化代码
├── figures          # 存放readme中的架构图
```

## 约束

- 当前开放的设置应用仓颉接口仅支持standard设备。

## 使用说明

提供以下设置应用功能：

- 查询时间和日期设置
- 查询显示效果设置
- 查询域名

与ArkTS相比，暂不支持以下功能：

- 设置时间和日期
- 设置显示效果
- 注册/注销 域名指定数据项观察者
- 打开网络管理设置页面
- 启用/禁用飞行模式
- 检查应用是否能够以悬浮窗形式显示

设置应用相关API请参见[ohos.settings（设置数据项名称）](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_zh_cn/apis/BasicServicesKit/cj-apis-settings.md)。

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[applications_settings](https://gitee.com/openharmony/applications_settings/blob/master/README.md)