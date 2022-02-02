# dAppNode.io Setup Cheatsheet

This guide is meant for developers/power users for LetheanVPN; To run a vanilla dAppNode please visit: https://dappnode.io/

## Fresh/re-purposed Host
1) Download ISO: https://iso.dappnode.io/
2) Download Etcher: [macOS, Windows & Linux](https://www.balena.io/etcher/)
3) Install iso on a usb, Etcher is easy, you'll figure it out.
4) Start machine with ISO WARNING: This will nuke the host machines data
5) Post install: https://docs.dappnode.io/get-started/installation/custom-hardware/installation/iso#post-installation

## Install into established machine

1) Install Deps: `sudo wget -O - https://prerequisites.dappnode.io | sudo bash`
2) Install System: `sudo wget -O - https://installer.dappnode.io | sudo bash`
3) Post Install: https://docs.dappnode.io/get-started/installation/custom-hardware/installation/script#post-installation


### Update

`sudo wget -O - https://installer.dappnode.io | sudo UPDATE=true bash`

### Uninstall

`wget -qO - https://uninstaller.dappnode.io | sudo bash`
