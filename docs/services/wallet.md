# Wallet RPC

Service API Doc: [WalletService](https://letheanvpn.github.io/app/injectables/WalletService.html)

Json RPC Passthrough: [lethean-wallet-rpc](https://letheanvpn.github.io/app/injectables/WalletRpcService.html)

Access with Angular DI

`contructor(private wallet: WalletService)`

# Methods

- startWallet
- restoreWallet
- openWallet
- getBalance
- getWalletList (check filesystem)
- walletList (no fs check)
- loadTransfers
