FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/base:jammy

RUN sudo apt update
RUN sudo apt install -yq --no-install-suggests --no-install-recommends \
pkg-config binfmt-support g++-10-aarch64-linux-gnu g++-10-multilib \
gcc-10-aarch64-linux-gnu libc6-arm64-cross qemu qemu-user \
qemu-user-binfmt libclang-dev

RUN sudo ln -s /usr/aarch64-linux-gnu/lib/ld-linux-aarch64.so.1 \
/lib/ld-linux-aarch64.so.1

USER vscode
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
