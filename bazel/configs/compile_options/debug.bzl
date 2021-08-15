load(":defaults.bzl", "SWIFT_COMPILER_FLAGS")

SWIFT_DEBUG_COMPILER_FLAGS = [
  # Enable the DEBUG flag, for using it in macros
  "-DDEBUG",
  # Do not make optimizations: compilation is faster
  "-Onone",
  # Emit debug info, preferred setting for debugging with LLDB. (swiftc --help)
  "-g",
  # Make libraries testable
  "-enable-testing",
  # Suppress swift warnings
  "-suppress-warnings",
  # Enable leak check
  "-DLEAKS_CHECK_ENABLED"
] + SWIFT_COMPILER_FLAGS