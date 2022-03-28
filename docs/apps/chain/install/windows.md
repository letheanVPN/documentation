# Windows:

1. Install [msys2](http://msys2.github.io/), follow the instructions on that page on how to update packages to the latest versions

2. Install Lethean dependencies as described in [Lethean documentation](https://github.com/LetheanMovement/lethean) into msys2 environment
   **As we only build application for x86, install only dependencies for x86 architecture (i686 in package name)**
   ```
   pacman -S mingw-w64-i686-toolchain make mingw-w64-i686-cmake mingw-w64-i686-boost

   ```

3. Install git into msys2 environment

    ```
    pacman -S git
    ```

4. Install Qt5 from [official site](https://www.qt.io/download-open-source/)
   - download unified installer, run and select following options:
       - Qt > Qt 5.7 > MinGW 5.3.0 32 bit
       - Tools > MinGW 5.3.0
   - continue with installation

5. Open ```MinGW-w64 Win32 Shell``` shell

   ```%MSYS_ROOT%\msys2_shell.cmd -mingw32```

   Where ```%MSYS_ROOT%``` will be ```c:\msys32``` if your host OS is x86-based or ```c:\msys64``` if your host OS
   is x64-based

6. Install the latest version of boost, specificly the required static libraries
    ```
    cd
    wget http://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.tar.bz2
    tar xjf boost_1_63_0.tar.bz2
    cd boost_1_63_0
    ./bootstrap.sh mingw
    ./b2 --prefix=/mingw32/boost --layout=tagged --without-mpi --without-python toolset=gcc address-model=32 variant=debug,release link=static threading=multi runtime-link=static -j$(nproc) install
    ```

7. Clone repository
    ```
    cd
    git clone https://github.com/LetheanMovement/lethean-gui.git
    ```

8. Build the GUI
    ```
    cd lethean-gui
    export PATH=$(ls -rd /c/Qt/5.[6,7,8]/mingw53_32/bin | head -1):$PATH
    ./build.sh
    cd build
    make deploy
    ```

	
The executable can be found in the ```.\release\bin``` directory.

