---

title: VPN
---
# Setup VPN Docker

> **⚠️ Notice**  
> Do not use this, even for fun, it's WIP and not ready for any use.

## Generate Certificates:

### Defaults (easy)
```shell 
docker run --rm -v $(pwd):/home/lthn/openvpn lthn/openvpn generate_certs.sh --defaults
```

### Custom (harder)

#### 1) Root Certificate Authority

- `<your-capass>` = The password for the root CA VPN Certificate
- `<cacn>` = CommonName you can create multiple certs if you are running whitelabel VPN services multiple clients
```shell
docker run -v $(pwd):/home/lthn/openvpn --rm lthn/openvpn generate_certs.sh --ca --with-capass <your-capass> --with-cacn <cacn>
```

#### Server Certificate

- `<your-capass>` = the password for the cert from step 1
- `<your-serverpass>` = the password for the server certificate thats about to be made
- `<your-server-dns>` = typically the machine hostname `$(hostname)` or the dns enterypoint 
```shell
docker run -v $(pwd):/home/lthn/openvpn --rm lthn/openvpn generate_certs.sh --server --with-capass <your-capass> --with-serverpass <your-serverpass> --with-servercn <your-server-dns>
```

### Client Certificate

- `<your-capass>` = the password for the CA Cert
- `<clientpass>` = the password for the client cert about to be made
- `<clientcn>` = client commonname
```shell
docker run -v $(pwd):/home/lthn/openvpn --rm lthn/openvpn generate_certs.sh --client --with-capass <your-capass> --with-clientpass <clientpass> --with-clientcn <clientcn>
```
## Generate a OpenVPN profile

### Using the default Certificates

- `<your-server-public-dns>` = typically the machine hostname `$(hostname)` or the dns enterypoint 
```shell
docker run -v $(pwd):/home/lthn/openvpn --rm lthn/openvpn generate_client_profile.sh Lethean_VPN_Client <your-server-public-dns>
```

### Using custom certificates

- `<clientcn>` = client commonname
- `<your-server-dns>` = typically the machine hostname `$(hostname)` or the dns enterypoint 
```shell
 docker run -v $(pwd):/home/lthn/openvpn --rm lthn/openvpn generate_client_profile.sh <client-cert-cn> <your-server-public-dns>
```
