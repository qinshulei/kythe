load("//tools:build_rules/shims.bzl", "go_test", "go_library")

package(default_visibility = ["//kythe:default_visibility"])

go_library(
    name = "kcd",
    srcs = ["kcd.go"],
)

go_test(
    name = "kcd_test",
    size = "small",
    srcs = ["kcd_test.go"],
    library = "kcd",
    visibility = ["//visibility:private"],
)
