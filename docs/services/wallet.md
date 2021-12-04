# Wallet RPC

Service API Doc: https://letheanvpn.github.io/app/injectables/WalletService.html

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
