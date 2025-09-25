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
This builds using the specified profile, the list of targets is:

- `make apple-clang-arm64-release`
- `make apple-clang-amd64-release`
- `make gcc-linux-amd64-release`
- `make msvc-194-amd64-release`

## Documentation

Please ensure code improvements also come with documentation updates, the documentation project is integrated
into the blockchain repo, with helper cmake functions to build and run a local server.

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

