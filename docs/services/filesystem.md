# Filesystem Access

Lethean creates a folder in a users home directory called `Lethean`, 
we don't use hidden folders meaning the default chain data has moved from
`$HOME/.lethean/data/lmdb` > `$HOME/Lethean/data/lmdb` 

Within the lethean folder space these locations are utilised
- `cli` - Lethean Blockchain executables
- `conf`- Application & executable conf
- `data` - Application data location
- `users` - OpenPGP User accounts
- `wallets` - Wallet files


## API Endpoints

All paths are relative to $HOME/Lethean/*
- `POST https://localhost:36911/filesystem/read {path: ""}`
- `POST https://localhost:36911/filesystem/write {path: "", "data":"base64_string"}`
- `POST https://localhost:36911/filesystem/list {path: ""}`