# Application Cangjie Wrapper(beta feature)

## Introduction

The Application Cangjie Wrapper provides application-related capabilities for developers using the Cangjie language for application development on OpenHarmony. The Application Cangjie Wrapper provides developers with the ability to access system settings. For example, obtaining system settings such as screen brightness and date/time format. Only standard devices are supported.

## System Architecture

**Figure 1** Application Cangjie Architecture

!["Application Cangjie Architecture"](figures/application_cangjie_wrapper_architecture_en.png)

As shown in the architecture diagram:

Interface Layer:

- Settings interface:
    - Provides developers the ability to query time and date: Developers can specify the display format of time and date, such as 12-hour format / 24-hour format.
    - Provides the ability to retrieve display effect settings. For example, developers can get the value of the screen brightness setting.
    - Ability to retrieve data items for a specified domain, where domain data items include device attribute shared domain and user attribute domain.

Framework Layer:

- Settings Function Encapsulation: Provides the ability to access system-related properties. This encapsulation layer is implemented based on the functionalities provided by Settings.

Dependency Component Introduction in Architecture Diagram:

- settings: Responsible for providing basic settings application functionality.
- cangjie_ark_interop: Responsible for providing Cangjie annotation class definitions for API annotation, and providing BusinessException exception class definitions thrown to users.
- ability_cangjie_wrapper: Responsible for providing basic capabilities of Ability or Application context, including accessing specific application resources.
- Cangjie DFX: Responsible for providing log interfaces, providing Cangjie interfaces that can be called by the file management Cangjie interface to print logs at critical paths.

## Directory

```
applications/standard/applications_cangjie_wrapper
├── figures                 # Architecture diagrams in README
├── kit
│   └── BasicServicesKit    # Cangjie settings application kit interfaces
├── ohos
│   └── settings            # Cangjie settings application interface implementation
└── test
    └── settings            # Cangjie settings application interface test code
```

## Usage Instructions

Provides the following settings application functions:

- Query time and date settings
- Query display effect settings
- Query related settings for specified domains

For settings application APIs, please refer to [Settings Application API Reference](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-settings.md).

## Constraints

Compared to APIs provided by ArkTS, the following functions are not currently supported:

- Setting time and date
- Setting display effects
- Registering/unregistering domain-specified data item observers
- Opening network management settings page
- Enabling/disabling airplane mode
- Checking if an application can be displayed as a floating window

## Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/how-to-contribute.md).

## Related Repositories

[applications_settings](https://gitcode.com/openharmony/applications_settings/blob/master/README.md)

[cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/README.md)

[ability_cangjie_wrapper](https://gitcode.com/openharmony-sig/ability_ability_cangjie_wrapper/blob/master/README.md)

[hiviewdfx_hiviewdfx_cangjie_wrapper](https://gitcode.com/openharmony-sig/hiviewdfx_hiviewdfx_cangjie_wrapper/blob/master/README.md)
