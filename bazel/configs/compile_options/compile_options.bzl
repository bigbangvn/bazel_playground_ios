# buildifier: disable=module-docstring
load(":debug.bzl","SWIFT_DEBUG_COMPILER_FLAGS")
load(":release.bzl","SWIFT_RELEASE_COMPILER_FLAGS")

# This function switches the compiler flags according to the configuration
def swift_compile_options():
  return select({
    "//bazel/configs:debug" : SWIFT_DEBUG_COMPILER_FLAGS,
    "//bazel/configs:release" : SWIFT_RELEASE_COMPILER_FLAGS,
    "//conditions:default": SWIFT_DEBUG_COMPILER_FLAGS,
  })
