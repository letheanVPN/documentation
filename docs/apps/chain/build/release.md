# Putting together a release

```shell
make TARGET
make zip-release
```

```makefile

ci-release: # cp & chmod release/bin/lethean*) & LICENCE > build/$LETHEAN_VERSION/packaged/
	rm build/$(LETHEAN_VERSION)/packaged/$(LETHEAN_RELEASE).zip || true
	chmod +x build/$(LETHEAN_VERSION)/release/bin/lethean*
	mkdir -p build/packaged
	cp build/$(LETHEAN_VERSION)/release/bin/* build/packaged/

zip-release: # cd into packaged, zip a clean release file for an artifact
	cp LICENSE build/packaged/LICENSE
	cd  build/packaged/ && zip -r ../$(LETHEAN_RELEASE).zip . -i *

```
