# Building The Blockchain

> **⚠️ Notice**  
> Please make sure you have read the [Developer Onboarding Guide](index.md) before continuing.

This project uses a Makefile for building and Conan for dependency management. The primary build targets and instructions are below.

## Simple Compile Instructions

One of the historical issues for the project has been the complexity of building the codebase.
Our system is designed to be as simple as possible, with a single Makefile to rule them all.

```shell
git clone --recursive https://github.com/letheanVPN/blockchain.git
make build TESTNET=1
```

That's it! Project dependencies will be installed automatically via Conan, Conan is downloaded, the system version is ignored;
So it will never conflict with any existing Conan installation you may have, we also host a compile cache, speeding up compile time even more.

Everything below is optional, for developers, you can just run `make help` or just `make` to see available targets.

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
make apple-clang-armv8
```
This builds using the specified profile; the list of targets is:

- `make apple-clang-armv8`
- `make apple-clang-x86_64`
- `make gcc-linux-x86_64`
- `make gcc-linux-armv8`
- `make msvc-194-x86_64`

### Testnet Builds

Builds default to `mainnet`. To create a `testnet` build, you need to add `TESTNET=1` with your make command, e.g `make apple-clang-armv8 TESTNET=1`


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
make msvc-194-x86_64
```

### Compile for Linux
```shell
make gcc-linux-x86_64
```

### Compile for Apple ARM
```shell
make apple-clang-armv8
```

### Compile for Apple AMD64
```shell
make apple-clang-x86_64
```

### Clean build directories
```shell
make clean
```

## Notes

- Builds are parallelised based on your CPU cores.
- Conan profiles are auto-detected if missing.
- All build artefacts are placed in the `build/` directory.

