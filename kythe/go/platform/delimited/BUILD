load("//tools:build_rules/shims.bzl", "go_test", "go_library")

package(default_visibility = ["//kythe:default_visibility"])

go_library(
    name = "delimited",
    srcs = [
        "copy.go",
        ":delimited.go",
    ],
    deps = [
        "//kythe/go/util/dedup",
        "@com_github_golang_protobuf//proto:go_default_library",
    ],
)

go_test(
    name = "delimited_test",
    size = "small",
    srcs = ["delimited_test.go"],
    library = "delimited",
    visibility = ["//visibility:private"],
)
