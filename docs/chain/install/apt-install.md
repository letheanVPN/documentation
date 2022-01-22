# Ubuntu & Debian

If you want to run the Lethean wallet GUI on a supported distribution, you can use the official repository.
Add to your apt sources as follows (you need to be have superuser previleges):
```
echo 'deb [trusted=yes] http://download.lethean.io/repo/DISTRIBUTION/ ./' >/etc/apt/sources.list.d/lethean.list
```
currently supported *DISTRIBUTION* values:

	Ubuntu: xenial, bionic
	
	Debian: stretch, buster

Then run:
```
apt-get update
apt-get install lethean-gui
```
This won't install any command line wallet tool. You can add the wallet cli by running the following command:
```
apt-get install lethean-wallet-cli
```
If you are running services on the lethean network, like in the case of an exchange, you may need the wallet rpc client as well:
```
apt-get install lethean-wallet-rpc
```
The lethean-wallet-vpn-rpc package is only needed if you want to run an exit node (i.e. provide vpn services through the lethean network and earn coins). In this case, it's easier to start by installing the lethean-vpn package instead, and follow the related guide on https://github.com/ronnylov/lethean-vpn/wiki/Full-Lethean-exit-node-install-guide
