
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("@heir//tools:heir-opt.bzl", "heir_opt")
load("@heir//tools:heir-jaxite.bzl", "fhe_jaxite_lib")

cc_library(
    name = "simple_sum",
    srcs = ["simple_sum.cpp"],
    hdrs = ["simple_sum.h"],
)

heir_opt(
    name = "add_one_lut3_fhe",
    src = "@heir//tests/Examples/jaxite:add_one_lut3.mlir",
    pass_flags = [
        "--mlir-to-cggi",
        "--scheme-to-jaxite",
    ],
    generated_filename = "add_one_lut3_fhe.mlir",
)

fhe_jaxite_lib(
    name = "add_one_lut3_fhe",
    heir_opt_pass_flags = [
        "--mlir-to-cggi",
        "--scheme-to-jaxite",
    ],
    mlir_src = "add_one_lut3.mlir",
    py_lib_target_name = "add_one_lut3_fhe_lib",
)

py_library(
    name = "add_one_py_lib",
    srcs = ["add_one_lib.py"],
    deps = [
        "@heir_pip_deps//jaxite",
    ],
)

py_binary(
    name = "add_one",
    srcs = ["add_one.py"],
    deps = [
        ":add_one_lut3_fhe_lib",
        ":add_one_py_lib",
        "@heir_pip_deps//absl_py",
        "@heir_pip_deps//jaxite",
    ],
)