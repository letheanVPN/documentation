# Required software

- [Docker](https://www.docker.com/products/docker-desktop/)
- [Deno](https://deno.land/#installation)

# Dev Guides

To work on the new GUI

1) compile https://github.com/letheanVPN/blockchain-iTw3 with `-DBUILD_GUI -DTESTNET=true`
2) compile https://github.com/letheanVPN/iTw3_ui/tree/release `release` branch & run `npm run build --watch`
3) launch step one compiled file with `Lethean --html-path=../iTw3_ui/html --gui-debug-mode --qt-dev-tools=vertical`

* Make sure both step 1 and 2 share the same parent directory.
** before commit for step 2 run `npm run build --html`
