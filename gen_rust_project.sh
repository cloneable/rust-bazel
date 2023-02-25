#!/usr/bin/env bash

CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index

bazel run @rules_rust//tools/rust_analyzer:gen_rust_project
