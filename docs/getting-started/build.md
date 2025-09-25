# Building LetheanVPN Blockchain

This project uses a Makefile for building, with Conan for dependency management. Below are the main build targets and instructions.

## Dependency Setup (Conan)

Dependencies are managed via [Conan](https://conan.io/). The required libraries are listed in `conanfile.txt`:
- zlib
- boost
- openssl
- miniupnpc
- jwt-cpp

Conan will automatically install these when you build.

## Build Targets

Run `make help` to see available targets. Common targets include:

- **release**: Build a release version.
- **debug**: Build a debug version.
- **static**: Build a static release.
- **clean**: Remove all build directories.
- **help**: Show help message.

### Dynamic Profile Builds

Profiles are defined in `cmake/profiles/`. For each profile, a target is generated:
```
make <profile>
```
Example:
```
make apple-clang-arm64-release
```
This builds using the specified profile.

### Other Targets

- **test**: Build and run tests (release mode).
- **test-debug**: Build and run tests (debug mode).
- **docs**: Build documentation.
- **docs-dev**: Serve documentation for development.
- **tags**: Generate C++ tags for code navigation.

## Example Usage

```sh
# Build release
make release

# Build debug
make debug

# Build a specific profile
make apple-clang-arm64-release

# Clean build directories
make clean

# Build and run tests
make test
```

## Notes

- Builds are parallelized based on your CPU cores.
- Conan profiles are auto-detected if missing.
- All build artifacts are placed in the `build/` directory.

