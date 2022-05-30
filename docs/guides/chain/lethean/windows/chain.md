# LTHN Blockchain Node

## Downloads

- [Windows CLI](https://github.com/letheanVPN/blockchain-iz/releases/latest/download/windows.tar)
- [https://seed.lethean.io/blockchain.raw](https://seed.lethean.io/)

## Data Location

```shell
%USERPROFILE%\\Lethean\\data\\lmdb 
```

## Using the CLI

### Getting to the blockchain folder

1. Press the Windows key
2. type `cmd.exe` then press the `ENTER` key
3. change directory to Lethean user data; type `cd %USERPROFILE%\\Lethean\\` then press the `ENTER` key

### Stopping a running daemon

> Copy the text, in the console `CTRL` + `V` to paste; then press the `ENTER` key

```shell
taskkill /IM "letheand.exe" /F
```

### Background Daemon
```shell
%USERPROFILE%\\Lethean\\cli\\letheand.exe --detach
```

### Interactive
```shell
%USERPROFILE%\\Lethean\\cli\\letheand.exe
```

### Exporting Chain data
```shell
%USERPROFILE%\\Lethean\\cli\\lethean-blockchain-export.exe --data-dir=%USERPROFILE%\\Lethean\\data --output-file=%USERPROFILE%\\Lethean\\data\\blockchain.raw
```

### Importing Chain data

```shell
%USERPROFILE%\\Lethean\\cli\\lethean-blockchain-export.exe --data-dir=%USERPROFILE%\\Lethean\\data --input-file=%USERPROFILE%\\Lethean\\data\\blockchain.raw
```
