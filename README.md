# LLVM + Qt Development Environment

This repository contains a Docker image designed for LLVM and Qt development. It provides a ready-to-use environment with LLVM 20, Qt 6, and various development tools pre-installed.

## Features

- Based on Ubuntu 24.04
- LLVM 20 toolchain
- Qt 6 development libraries
- Build tools: CMake, Ninja, CCcache
- Testing frameworks: GoogleTest, GMock
- Documentation tools: Doxygen, Graphviz
- Additional tools: Git, Python 3

## Usage

### Local Development

To use this image for local development:

```bash
docker pull ghcr.io/SmartAI/llvm-qt-dev-env:latest
docker run -it --rm -v $(pwd):/app ghcr.io/SmartAI/llvm-qt-dev-env:latest
```

### GitHub Actions Workflow

To use this image in a GitHub Actions workflow:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/SmartAI/llvm-qt-dev-env:latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Build project
        run: |
          mkdir -p build && cd build
          cmake .. -G Ninja
          ninja
```

## Environment Variables

The image provides the following environment variables:

- `LLVM_VERSION=20`
- `QT_VERSION=6`
- `LLVM_DIR=/usr/lib/llvm-20/lib/cmake/llvm`
- `Clang_DIR=/usr/lib/llvm-20/lib/cmake/clang`

## Tags

- `latest`: The most recent build from the main branch
- `vX.Y.Z`: Specific version releases
- `X.Y`: Major and minor version

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
