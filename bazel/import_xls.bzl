load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def xls_dependency():
    http_file(
        name = "com_google_xls",
        url = "https://github.com/code-perspective/xls.git",
    )