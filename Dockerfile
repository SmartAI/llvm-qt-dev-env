FROM ghcr.io/mdadams/clang_libs-ubuntu_24-llvm_20:latest

# Set environment variables
ENV LLVM_VERSION=20
ENV QT_VERSION=6

# Install Qt and development tools
RUN apt-get update && \
    apt-get install -y \
    qt${QT_VERSION}-base-dev \
    qt${QT_VERSION}-tools-dev \
    qt${QT_VERSION}-tools-dev-tools \
    cmake \
    git \
    ninja-build \
    ccache \
    googletest \
    libgtest-dev \
    libgmock-dev \
    doxygen \
    graphviz \
    catch2\
    python3-pip \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /app

# Set environment variables for LLVM and Clang
ENV LLVM_DIR=/usr/lib/llvm-${LLVM_VERSION}/lib/cmake/llvm
ENV Clang_DIR=/usr/lib/llvm-${LLVM_VERSION}/lib/cmake/clang

# Create build directory
RUN mkdir -p /app/build

# Set the default command to bash
CMD ["/bin/bash"] 
