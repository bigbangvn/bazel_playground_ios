
load("@build_bazel_rules_swift//swift:swift.bzl", "SwiftInfo", "swift_library")

load("@build_bazel_rules_ios//rules:framework.bzl", "apple_framework")

swift_library(
    name = "DriverCoreDataLib",
    srcs = glob(["DriverCoreData/**/*.swift"]),
    deps = ["//Common:FoundationCommons"],
    generates_header = False
)

package(default_visibility = ["//visibility:public"])

apple_framework(
    name = "FoundationCommons",
    module_name = "FoundationCommons",
    public_headers = glob(["FoundationCommons/**/*.h"]),
    srcs = glob(["FoundationCommons/**/*.m",
        "FoundationCommons/**/*.swift"]),
    deps = []
  )

