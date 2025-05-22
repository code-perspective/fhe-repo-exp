
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")
load("//:fhe_xls.bzl", "cc_to_xls_ir")

cc_library(
    name = "simple_sum",
    srcs = ["simple_sum.cc"],
    hdrs = ["simple_sum.h"],
    deps = [
        # The following are called as binaries
        "@com_google_xls//xls/contrib/xlscc:xlscc",
        # "@com_google_xls//xls/dev_tools:booleanify_main",
        # "@com_google_xls//xls/tools:codegen_main",
        # "@com_google_xls//xls/tools:opt_main",


        # The following are added as BUILD dependencies
        # "@com_google_xls//xls/common/file:filesystem",
        # "@com_google_xls//xls/common/logging",
        # "@com_google_xls//xls/common/status:matchers",
        # "@com_google_xls//xls/common/status:status_macros",
        "@com_google_xls//xls/contrib/xlscc:metadata_output_cc_proto",
        "@com_google_xls//xls/netlist",
        "@com_google_xls//xls/netlist:cell_library",
        "@com_google_xls//xls/netlist:function_extractor",
        "@com_google_xls//xls/netlist:interpreter",
        "@com_google_xls//xls/netlist:lib_parser",
        "@com_google_xls//xls/netlist:netlist_parser",
        # "@com_google_xls//xls/protected:ir",
        # "@com_google_xls//xls/protected:netlist",
        # "@com_google_xls//xls/public:function_builder",
        # "@com_google_xls//xls/public:ir",
        # "@com_google_xls//xls/public:ir_parser",
        # "@com_google_xls//xls/public:value",
        # "@com_google_xls//xls/tools:booleanify_main", # this is both binary and build dependency
        # "@com_google_xls//xls/tools:opt_main",
    ],
    data = [
        # "@com_google_xls//xls/tools:codegen_main",
        "@com_google_xls//xls/tools:opt_main",
        "@com_google_xls//xls/dev_tools:booleanify_main",
    ]
)

cc_to_xls_ir(
    name = "simple_sum_fhe",
    src = "simple_sum.cc",  
    hdrs = ["simple_sum.h"],
    library_name = "simple_sum_fhe_lib",
)