
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("//:fhe_xls.bzl", "cc_to_xls_ir")

cc_library(
    name = "simple_sum",
    srcs = ["simple_sum.cc"],
    hdrs = ["simple_sum.h"],
    deps = [
      # Simply add xlscc as dependency and see if it builds
       "@com_google_xls//xls/contrib/xlscc:xlscc",
       "@com_google_xls//xls/tools:codegen_main",
       "@com_google_xls//xls/tools:opt_main",
    ],
)

cc_to_xls_ir(
    name = "simple_sum_fhe",
    src = "simple_sum.cc",  
    hdrs = ["simple_sum.h"],
    library_name = "simple_sum_fhe_lib",
)