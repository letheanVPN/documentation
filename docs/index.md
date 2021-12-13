# Development Process

New code should be created on forks/feature branches and committed to `main` for testing.

once happy `main` is stable a PR to `alpha` should be made to start finalising a build for public consumption.

## Branch Rules

- `main` Development is done on main via forks and PR's
- `alpha` Can diverge from `main` to hide not ready features, PUSH's are OK, backport to `main`.
- `beta` Only PR's from `alpha` are allowed, no direct changes allowed here.
- `rc` Release candidates, Can diverge from `beta` within scope, BugFixes only.
- `release-*` Perm branch for releases, no edits allowed.

## Services

* [FileService](services/filesystem.md)
* [WalletService](services/wallet.md)

## Submodules

- [Blockchain](https://github.com/letheanVPN/blockchain)
- [Clientside Service](https://github.com/letheanVPN/lthn)
- [GUI App](https://github.com/letheanVPN/app)
- [Translations](https://github.com/letheanVPN/i18n)
- [Config Templates](https://github.com/letheanVPN/config-templates)