# Lethean Blockchain

!!! info

    === "Windows"
    
        * [Lethean CLI](https://github.com/letheanVPN/blockchain-iz/releases/latest/download/windows.tar)
        * [https://seed.lethean.io/blockchain.raw](https://seed.lethean.io/)

    === "MacOS"

        * [Lethean CLI](https://github.com/letheanVPN/blockchain-iz/releases/latest/download/lethean-cli-macos.zip)
        * [https://seed.lethean.io/blockchain.raw](https://seed.lethean.io/)

    === "Linux"

        * [Lethean CLI](https://github.com/letheanVPN/blockchain-iz/releases/latest/download/linux.tar)
        * [https://seed.lethean.io/blockchain.raw](https://seed.lethean.io/)
        


## Data Location



=== "Windows"
    
    ```shell
    %USERPROFILE%\\Lethean\\data\\lmdb 
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/data/lmdb 
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/data/lmdb
    ```



## Using the CLI

!!! example

    === "Windows"

        1. Press the Windows key
        2. type `cmd.exe` + Press Enter
        3. change directory to Lethean user data `cd %USERPROFILE%\\Lethean\\`

    === "MacOS"

        1. Press the `CMD` + `SPACE` 
        2. type `Terminal` + Press Enter
        3. change directory to Lethean user data `cd $HOME/Lethean`

    === "Linux"

        1. Open your preferred Terminal
        2. change directory to Lethean user data `cd $HOME/Lethean`
        

### Stopping a running daemon


=== "Windows"
    
    ```shell
    taskkill /IM "letheand.exe" /F
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/data/lmdb 
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/data/lmdb
    ```

### Background Daemon


<img width="1184" alt="image" src="https://user-images.githubusercontent.com/631881/171013324-7bd68896-0eb1-4c74-b91a-fdaccaa1041c.png">

=== "Windows"
    
    ```shell
    %USERPROFILE%\\Lethean\\cli\\letheand.exe --detach 
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/cli/letheand --detach 
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/cli/letheand --detach 
    ```
    
### Interactive

<img width="1184" alt="image" src="https://user-images.githubusercontent.com/631881/171013058-6035dfe8-65e1-4f4c-9e06-c0c95afa1f0b.png">

=== "Windows"
    
    ```shell
    %USERPROFILE%\\Lethean\\cli\\letheand.exe 
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/cli/letheand
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/cli/letheand
    ```
### Exporting Chain data

<img width="1188" alt="image" src="https://user-images.githubusercontent.com/631881/171013450-62460e66-6813-450d-a868-40bc1761ebb9.png">

=== "Windows"
    
    ```shell
    %USERPROFILE%\\Lethean\\cli\\lethean-blockchain-export.exe --data-dir=%USERPROFILE%\\Lethean\\data --output-file=%USERPROFILE%\\Lethean\\data\\blockchain.raw
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/cli/lethean-blockchain-export --data-dir=$HOME/Lethean/data --output-file=$HOME/Lethean/data/blockchain.raw
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/cli/lethean-blockchain-export --data-dir=$HOME/Lethean/data --output-file=$HOME/Lethean/data/blockchain.raw
    ```

### Importing Chain data

=== "Windows"
    
    ```shell
    %USERPROFILE%\\Lethean\\cli\\lethean-blockchain-export.exe --data-dir=%USERPROFILE%\\Lethean\\data --input-file=%USERPROFILE%\\Lethean\\data\\blockchain.raw
    ```

=== "MacOS"

    ``` shell
    $HOME/Lethean/cli/lethean-blockchain-export --data-dir=$HOME/Lethean/data --input-file=$HOME/Lethean/data/blockchain.raw
    ```

=== "Linux"

    ``` shell
    $HOME/Lethean/cli/lethean-blockchain-export --data-dir$HOME/Lethean/data --input-file=$HOME/Lethean/data/blockchain.raw
    ```
