#!/bin/bash

export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER=/usr/bin/aarch64-linux-gnu-gcc-10
export QEMU_LD_PREFIX=/usr/aarch64-linux-gnu
export V8_FROM_SOURCE=1

echo "Build aarch64-unknown-linux-gnu (release profile)"
cargo build -vv --release --target=aarch64-unknown-linux-gnu

echo "Build aarch64-unknown-linux-gnu (debug profile)"
cargo build -vv --target=aarch64-unknown-linux-gnu