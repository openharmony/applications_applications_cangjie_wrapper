# Application Cangjie Wrapper

## Introduction

The Application Cangjie Wrapper provides application-related capabilities for developers using the Cangjie language for application development on OpenHarmony. Currently, Cangjie only supports settings applications. The settings application is a pre-installed system application in the OpenHarmony system that provides users with an interactive interface for setting system properties, such as system time and screen brightness. The current settings application Cangjie interface supports standard devices.

## System Architecture

**Figure 1** Application Cangjie Architecture

!["Application Cangjie Architecture"](figures/application_cangjie_wrapper_architecture_en.png)

As shown in the architecture diagram:

Interface Layer

- Query Time and Date: Provides developers with the ability to obtain current time and date settings.
- Query Display Effects: Provides developers with the ability to obtain current display effect settings.
- Query Domain Data Items: Provides developers with the ability to obtain specified domain data items, including device property shared domains and user property domains.

Framework Layer

- Time and Date Query Function Encapsulation: Based on the time and date data item query capabilities provided by the underlying settings component, implements the function of obtaining current time and date settings.

- Display Effects Query Function Encapsulation: Based on the display effects query capabilities provided by the underlying settings component, implements the function of obtaining current display effect settings.

- Domain Data Item Query Function Encapsulation: Based on the domain-based data item query capabilities provided by the underlying settings component, implements the function of obtaining specified domain data items.

- 

Dependency Component Introduction in Architecture Diagram:

- settings: Responsible for providing basic settings application functionality, encapsulating C language interfaces for interoperability with Cangjie.

- cangjie_ark_interop: Responsible for providing Cangjie annotation class definitions for API annotation, and providing BusinessException exception class definitions thrown to users.

- ability_cangjie_wrapper: Responsible for providing basic capabilities of Ability or Application context, including accessing specific application resources.

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
