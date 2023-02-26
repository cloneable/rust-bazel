#!/usr/bin/env bash

# touch cargo.lock.toml bazel.lock.json
rm -f rust-project.json
echo -n "" >cargo.lock.toml
echo -n "" >bazel.lock.json

CARGO_BAZEL_REPIN=1 bazel sync --only=crate_index

CARGO_BAZEL_REPIN=1 bazel run @rules_rust//tools/rust_analyzer:gen_rust_project
