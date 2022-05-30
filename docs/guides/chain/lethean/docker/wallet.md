NOTE For arm users, add this option `--platform linux/amd64`

## Wallet with non persistent wallet data
```
docker run -it  lthn/wallet  
```

## Wallet with docker storage volume
```
docker run -it -v wallet-lthn:/wallets lthn/wallet  
```

## Wallet with Local wallet files
```
docker run -it -v ./wallets:/wallets lthn/wallet  
```

### Docker Compose

```yaml
version: "3"
services:
  lthn-wallet:
    image: lthn/wallet
    platform: linux/amd64
    build:
      dockerfile: wallet.Dockerfile
    volumes:
      - ~/Lethean/wallets:/root/Lethean/data


```