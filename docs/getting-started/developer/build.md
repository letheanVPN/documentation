# Building The Blockchain

> **⚠️ Notice**  
> Please make sure you have read the [Developer Onboarding Guide](index.md) before continuing.

This project uses a Makefile for building and Conan for dependency management. The primary build targets and instructions are below.

## Dependency Setup (Conan)

Dependencies are managed via [Conan](https://conan.io/). The required libraries are listed in `conanfile.txt`:

- zlib
- boost
- openssl
- miniupnpc
- jwt-cpp

Conan will automatically install these when you build.



=== "Windows"

    ```powershell
    choco install conan 
    ```

=== "MacOS"

    ``` shell
    brew install conan
    ```

=== "Linux"

    ``` shell
    apt-get install pipx
    pipx ensurepath
    refresh
    pipx install conan
    ```



## Compile Using Make

Run `make help` to see available targets. Common targets include:

- **release**: Build a release version.
- **debug**: Build a debug version.
- **static**: Build a static release.
- **clean**: Remove all build directories.
- **help**: Show help message.

### Build Targets

Profiles are defined in `cmake/profiles/`. For each profile, a target is generated:
```
make <profile>
```
Example:
```
make apple-clang-arm64-release
```
This builds using the specified profile; the list of targets is:

- `make apple-clang-arm64-release`
- `make apple-clang-amd64-release`
- `make gcc-linux-amd64-release`
- `make msvc-194-amd64-release`

### Testnet Builds

Builds default to `mainnet`. To create a `testnet` build, you need to add `TESTNET=1` with your make command, e.g `make apple-clang-arm64-release TESTNET=1`


## Compile Using CMake

The project uses CMake, the Makefile is just a wrapper; libraries are found using find_package, so either have them installed 
or you can use Conan to install them by adding: 

`-DCMAKE_PROJECT_TOP_LEVEL_INCLUDES="cmake/conan_provider.cmake"`

Putting that together, an example command would be:
```
cmake -B build/debug -S . -DCMAKE_PROJECT_TOP_LEVEL_INCLUDES=cmake/conan_provider.cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DSTATIC=1 -DTESTNET=1
cmake --build=build/debug --config=Release
```

## Documentation

Please ensure code improvements also come with documentation updates. The documentation project is integrated.
Into the blockchain repo, with helper CMake functions to build and run a local server.

### Prerequisites


=== "Windows"

    ```powershell
    choco install python --pre 
    pip install -r docs/requirements.txt
    ```

=== "MacOS"

    ``` shell
    brew install python@3.9
    pip3 install -r docs/requirements.txt
    ```

=== "Linux"

    ``` shell
    apt-get install pipx
    pipx ensurepath
    refresh
    pipx install -r docs/requirements.txt
    ```


### Documentation Targets

- `make docs`: Build documentation.
- `make docs-dev`: Serve documentation for local development `http://127.0.0.1:8000`.

### Other Targets

- **test**: Build and run tests (release mode).
- **test-debug**: Build and run tests (debug mode).
- **docs**: Build documentation.
- **docs-dev**: Serve development documentation.
- **tags**: Generate C++ tags for code navigation.

## Example Usage

### Build release
```shell
make release
```

### Build debug
```shell
make debug
```

### Compile for Windows
```shell
make msvc-194-amd64-release
```

### Compile for Linux
```shell
make gcc-linux-amd64-release
```

### Compile for Apple ARM
```shell
make apple-clang-arm64-release
```

### Compile for Apple AMD64
```shell
make apple-clang-amd64-release
```

### Clean build directories
```shell
make clean
```

## Notes

- Builds are parallelised based on your CPU cores.
- Conan profiles are auto-detected if missing.
- All build artefacts are placed in the `build/` directory.

