#!/bin/bash

create_symlinks() {
    echo "Creating system links..."
    rm -f BUILD.bazel releasekey.pk8 releasekey.x509.pem
    ln -sf ../../../build/make/target/product/security/BUILD.bazel BUILD.bazel
    ln -sf testkey.pk8 releasekey.pk8
    ln -sf testkey.x509.pem releasekey.x509.pem
}

# Main Execution
create_symlinks
