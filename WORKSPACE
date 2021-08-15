load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# use http archive can be a bit faster than git repo (even with shallow checkout)

http_archive(
  name = "bazel_skylib",
  url = "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
  sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
)



git_repository(
  name = "build_bazel_rules_ios",
  remote = "https://github.com/ob/rules_ios.git",
  commit = "844972fdb0e467b551793ccf1943b64d0cd89d53",
  shallow_since = "",
)

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "9ab0872489de056ee8030fabd482e5dd76faa30051d31b8be3561293a9af1c43",
    strip_prefix = "rules_apple-54e906af5a45ecd6863bc73d60c7a7419d01bea7",
    url = "https://github.com/bazelbuild/rules_apple/archive/54e906af5a45ecd6863bc73d60c7a7419d01bea7.tar.gz",
)

http_archive(
    name = "build_bazel_rules_swift",
    sha256 = "3406826f36f4e4c6b854794d818670371baebd35dd252297007b791d5c8b5ae6",
    strip_prefix = "rules_swift-93a91f4a56d813107a85c91aa06941f70108226f",
    url = "https://github.com/bazelbuild/rules_swift/archive/93a91f4a56d813107a85c91aa06941f70108226f.tar.gz",
)

# This patch fixes the issue in which selected tests are not picked up by xctestrunner
# local_repository(
#   name = "xctestrunner",
#   path = "bazel/xctestrunner"
# )

# Embed local_config_cc to resolve cache-miss with wrapped_clang (https://github.com/bazelbuild/bazel/issues/8902)
# TODO (bang): How to embed local_config_cc and update when upgrade bazel version
# local_repository(name="local_config_cc", path="bazel/local_config_cc")

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")
apple_rules_dependencies(ignore_version_differences = True)

load("@build_bazel_rules_swift//swift:repositories.bzl", "swift_rules_dependencies")
swift_rules_dependencies()

http_archive(
    name = "com_google_protobuf",
    sha256 = "",
    strip_prefix = "protobuf-3.16.0",
    urls = ["https://github.com/protocolbuffers/protobuf/archive/v3.16.0.tar.gz"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")
protobuf_deps()
