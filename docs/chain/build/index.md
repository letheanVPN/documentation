# Linux and OS X

* Install the dependencies
  
Ubuntu Dependencies 
```bash
apt install -y build-essential cmake pkg-config libboost-all-dev libssl-dev libzmq3-dev \
libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev \
libldns-dev libexpat1-dev doxygen graphviz libpgm-dev qttools5-dev-tools \
libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev \
ca-certificates git
```


* Change to the root of the source code directory and build:

        cd lethean
        make

    *Optional*: If your machine has several cores and enough memory, enable
    parallel build by running `make -j<number of threads>` instead of `make`. For
    this to be worthwhile, the machine should have one core and about 2GB of RAM
    available per thread.

* The resulting executables can be found in `build/release/bin`

* Add `PATH="$PATH:$HOME/lethean/build/release/bin"` to `.profile`

* Run Lethean with `letheand --detach`

* **Optional**: build and run the test suite to verify the binaries:

        make release-test

    *NOTE*: `coretests` test may take a few hours to complete.

* **Optional**: to build binaries suitable for debugging:

         make debug

* **Optional**: to build statically-linked binaries:

         make release-static

* **Optional**: build documentation in `doc/html` (omit `HAVE_DOT=YES` if `graphviz` is not installed):

        HAVE_DOT=YES doxygen Doxyfile
