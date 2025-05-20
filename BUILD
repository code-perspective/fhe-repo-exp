
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("fhe_xls.bzl", "cc_to_xls_ir")

cc_library(
    name = "simple_sum",
    srcs = ["simple_sum.cpp"],
    hdrs = ["simple_sum.h"],
)

cc_to_xls_ir(
    name = "simple_sum_fhe",
    src = "simple_sum.cpp",  
    hdrs = ["simple_sum.h"],
    library_name = "simple_sum_fhe_lib",
)