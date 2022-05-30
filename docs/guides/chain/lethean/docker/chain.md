## Docker CMD run as Daemon
```shell
docker run -itd -v ~/Lethean/data:/root/Lethean/data  lthn/chain
```

## Docker CMD Interactive
```shell
docker run -it -v ~/Lethean/data:/root/Lethean/data  lthn/chain
```

## Docker CMD run as docker service

```shell
docker run -itd --restart=unless-stopped -v ~/Lethean/data:/root/Lethean/data lthn/chain
```
## Docker Compose
```yaml
version: "3"
services:
  lthn-chain:
    image: lthn/chain
    volumes:
      - ~/Lethean/data:/root/Lethean/data
    ports:
      - 48772
      - 48782

```