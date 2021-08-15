# bazel_playground_ios


Test issue of swift_library depends on apple_framework

run:

bazel build Common:DriverCoreDataLib

Will get error, although we already set minimum deployment target = 11.0

```
INFO: Analyzed target //Common:DriverCoreDataLib (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
ERROR: /Users/bang.nguyen/Documents/OpenSource/bazel_playground_ios/Common/BUILD:6:14: Compiling Swift module Common_DriverCoreDataLib failed (Exit 1): worker failed: error executing command 
  (cd /private/var/tmp/_bazel_bang.nguyen/1117c12523d589d607a76774a46fdb60/execroot/__main__ && \
  exec env - \
    APPLE_SDK_PLATFORM=iPhoneSimulator \
    APPLE_SDK_VERSION_OVERRIDE=14.0 \
    XCODE_VERSION_OVERRIDE=12.0.1.12A7300 \
  bazel-out/host/bin/external/build_bazel_rules_swift/tools/worker/worker swiftc @bazel-out/darwin-fastbuild/bin/Common/Common_DriverCoreDataLib.swiftmodule-0.params)
Execution platform: @local_config_platform//:host
Common/DriverCoreData/Classes/FoundationCommons.swift:2:8: error: compiling for iOS 11.0, but module 'FoundationCommons' has a minimum deployment target of iOS 14.0: /private/var/tmp/_bazel_bang.nguyen/1117c12523d589d607a76774a46fdb60/execroot/__main__/bazel-out/applebin_ios-ios_x86_64-fastbuild-ST-3afe02f162b1/bin/Common/FoundationCommons/FoundationCommons.framework/Modules/FoundationCommons.swiftmodule/x86_64.swiftmodule
import FoundationCommons
       ^
Target //Common:DriverCoreDataLib failed to build
INFO: Elapsed time: 0.654s, Critical Path: 0.54s
INFO: 2 processes: 2 internal.
FAILED: Build did NOT complete successfully
```
