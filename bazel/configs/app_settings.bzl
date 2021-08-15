# buildifier: disable=module-docstring
def app_bundle_id():
  return select({
    "//bazel/configs:debug": "com.grab.driver.debug",
    "//bazel/configs:release": "com.grab.driver",
    "//conditions:default": "com.grab.driver.debug"
  })

def app_entitlements():
  return select({
    "//bazel/configs:qa": "Driver/Driver(Enterprise).entitlements",
    "//conditions:default": "Driver/Driver.entitlements"
  })

app_settings = struct(
  app_bundle_id = app_bundle_id,
  app_entitlements = app_entitlements,
  DEFAULT_MINIMUM_OS_VERSION = "11.0"
)
