# Setup a Lethean Chain node


## Launchers (Recommended)
1. Download the Launchers helper package
```bash
git clone https://github.com/letheanVPN/launchers.git mainnet && cd mainnet
```
2. Download the cli
```bash
make linux-cli
```
3. Start the chain node
```bash
make start-chain-full
```

## Docker

```bash
docker run -d -p 48772:48772 -p 48782:48782 lthn/chain:v4.0.6
```

### Docker Compose

```yml
version: "3"
services:
  lthn-chain:
    image: lthn/chain:v4.0.6
    volumes:
      - ./data:/root/Lethean/data
    ports:
      - 48772
      - 48782
```


## Data rsync

```bash
rsync --progress -rd rsync://seed.lethean.io:12000/export/blockchain.raw ./blockchain.raw
```

- export:
```bash
./build/cli/lethean-blockchain-export --data-dir ./data --output-file ./blockchain.raw
```
- import:
```bash
./build/cli/lethean-blockchain-import --data-dir ./data --input-file ./blockchain.raw
- ```