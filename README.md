# Documentation

Editing this could be done all on GitHub, the docs/ folder has the markdown files
Merging PR's will automatically update the documentation website.

## Install deps

```shell
pip install mkdocs-material mkdocs-git-revision-date-localized-plugin
```
## Run Documentation Server
```shell
mkdocs serve
```

## Run Documentation Server with paid access
```shell
CI=true INSIDERS=true mkdocs serve
```

Visit:  http://127.0.0.1:8000/
