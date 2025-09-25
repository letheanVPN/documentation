# 📚** Developer Onboarding Guide**  
**How to go from a GitHub issue to a merged Pull Request for the LetheanVPN Blockchain.**  

## **Table of Contents**  
1. Prerequisites
2. Repository Layout
3. Branching & Issue Workflow
4. Local Development – Building the Code
5. Running the Test Suite
6. Documentation Workflow
7. Continuous‑Integration Checks
8. Release Checklist (Maintainers)
9. Handy One‑Liners
10. FAQ / Troubleshooting

## **Prerequisites**  

| Platform | Packages | Installation Commands |
| -------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Common | git ≥2.30, make, python ≥3.9, conan ≥2.0, cmake ≥3.22, a supported C/C++ compiler | (see OS‑specific rows) |
| Windows | Chocolatey, PowerShell | powershell<br>choco install conan<br>choco install python --pre<br>pip install -r docs/requirements.txt<br> |
| macOS | Homebrew | bash<br>brew install conan<br>brew install python@3.9<br>pip3 install -r docs/requirements.txt<br> |
| Linux | apt (or distro‑specific), pipx | bash<br>apt-get update && apt-get install -y pipx<br>pipx ensurepath<br>refresh   # reload $PATH<br>pipx install conan<br>pipx install -r docs/requirements.txt<br> |
  
****Tip: After installing the Python requirements, you can verify them with ****pip list | grep -E 'mkdocs|jinja2'****.****  
  
## **Repository Layout**  
```
├─ conanfile.txt           # Third‑party libs
├─ cmake/
│   └─ profiles/           # Conan + CMake toolchain profiles
├─ docs/
│   ├─ requirements.txt    # MkDocs + plugins
│   └─ *.md                # Documentation sources
├─ src/                    # C++ source tree
├─ tests/                  # Unit / integration tests
├─ Makefile                # High‑level build driver
├─ README.md
└─ build.md                # (this file) – detailed build instructions

```

## **Branching & Issue Workflow**  
## 1️⃣** Issue Creation**  
1. Open a GitHub Issue.  
2. Choose an appropriate label (bug, enhancement, docs, …).  
3. Assign a milestone if the work belongs to a release.  
## **Checklist**  
* Title follows <type>: short description.  
* Description contains reproduction steps or design goals.  
* Acceptance criteria are clearly listed.  
## 2️⃣** Branch Naming**  
```
dev-<issue-number>-<short‑slug>

```
## **Example: **dev-1234-add-grpc-gateway  
* Create the branch after the issue exists (so you know the number).  
* Keep the branch short‑lived; aim to merge within a few days.  
## 3️⃣** Pull Request**  

| Field | Recommended Value |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Base branch | dev |
| Title template | [ #<issue-number> ] <short‑summary> |
| Description template | markdown<br>## Related Issue<br>Closes #<issue-number><br><br>## Summary<br><One‑sentence summary><br><br>## Checklist<br>- [ ] Code builds (`make <profile>`) <br>- [ ] Tests pass (`make test` or `make test-debug`) <br>- [ ] Docs updated (`make docs`) <br>- [ ] C++ tags regenerated (`make tags`) <br>- [ ] No lint/format warnings (run `clang-format -i` if applicable)<br> |
| Reviewers | At least one senior maintainer; optionally a domain expert (crypto, networking, …) |
  
## **Local Development – Building the Code**  
## **Conan Dependency Installation**  
**Conan resolves the libraries listed in **conanfile.txt**. The Makefile automatically runs **conan install** for the selected profile, so you normally don’t need to invoke Conan manually.**  
## **If you modify the dependency list, run **make clean && make <profile>** to force a fresh Conan install.**  
## **Build Profiles**  
## **All profiles live in **cmake/profiles/**. Invoke a profile with:**  
```
make <profile> [TESTNET=1]

```
## **Examples**  
```
make apple-clang-arm64-release
make gcc-linux-amd64-release TESTNET=1

```
## **Notes**  
* Artefacts are placed under build/<profile>/.  
* TESTNET=1 toggles the CMake flag -DTESTNET=1 (test‑net mode).  
* Omitting TESTNET defaults to main‑net (0).  
## **Common Shortcuts**  

| Target               | Command         |
| -------------------- | --------------- |
| Release build        | make release    |
| Debug build          | make debug      |
| Static release       | make static     |
| Clean all build dirs | make clean      |
| Show help            | make help       |
| Generate C++ tags    | make tags       |
| Run tests (release)  | make test       |
| Run tests (debug)    | make test-debug |
  
****Parallel Builds****  
## **The Makefile detects the number of CPU cores and passes **-j<N>** to CMake. Override with an environment variable if needed:**  
```
CPU_CORES=4 make release

```

## **Running the Test Suite**  
```
make test          # Release‑mode tests
make
```
```
 test-debug    # Debug‑mode tests

```
* Tests use the same Conan dependencies, so a clean build is recommended after large dependency changes.  
* Fix any failing test locally before pushing the branch.  

## **Documentation Workflow**  
## **Prerequisites**  
## **Python packages from **docs/requirements.txt** (already installed in the Prerequisites section).**  
## **Build the Site**  
```
make docs

```
* Generates a static site under build/docs.  
* Commit any updated Markdown files; the generated site can be committed optionally (CI can rebuild).  
## **Serve Locally (Live Reload)**  
```
make docs-dev

```
* Starts a MkDocs server at ++[http://127.0.0.1:8000](http://127.0.0.1:8000/)++.  
* The server watches docs/ and reloads on changes.  
## **Documentation Checklist**  
* Updated the relevant .md files.  
* Ran make docs locally and verified the rendered output.  
* Checked navigation (mkdocs.yml) still works.  

## **Continuous‑Integration Checks**  
**CI expects the following to succeed for every PR:**  
* Conan install succeeds for the profile used in the matrix.  
* make <profile> finishes without errors.  
* make test exits with status 0.  
* make docs runs without broken links.  
* Lint/formatting (if configured) passes.  

## **Release Checklist (Maintainers)**  
1. Ensure main is up‑to‑date with dev.  
2. Merge any outstanding PRs targeting dev.  
3. Tag the release: git tag -a vX.Y.Z -m "Release X.Y.Z"  
4. git push origin vX.Y.Z    
5. Produce a statically linked binary: make static.  
6. Upload artefacts to the GitHub Release page.  
7. Update CHANGELOG.md with merged PR titles.  

## **Handy One‑Liners (Copy‑Paste)**  
```
# Clone & initial setup
git clone https://github.com/LetheanVPN/blockchain.git
cd blockchain

# OS‑specific prereqs (see Prerequisites)
make help   # verify the Makefile works

# Start a feature branch
git checkout dev
git pull origin dev
git checkout -b dev-$(gh issue view <num> --json number --jq .number)-my-feature

# Build a test‑net binary (example profile)
make gcc-linux-amd64-release TESTNET=1

# Serve docs locally
make docs-dev

# Run all checks before opening a PR
make clean && make gcc-linux-amd64-release TESTNET=1
make test
make docs


```

## **FAQ / Troubleshooting**  

| Question | Answer |
| ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Conan cannot find a profile. | Run make <profile> once; the Makefile will auto‑detect missing profiles and create a default one under ~/.conan2/profiles/. You can also inspect cmake/profiles/ for the expected name. |
| MkDocs server fails with ModuleNotFoundError. | Ensure you installed the Python requirements for your OS (pip install -r docs/requirements.txt). Re‑activate your virtual environment or restart the terminal if you used pipx. |
| Tests crash on macOS with SIGABRT. | Verify you are using the correct Apple‑Clang profile (apple-clang-arm64-release on M1/M2, apple-clang-amd64-release on Intel). Clean the build directory (make clean) and rebuild. |
| make docs produces broken links. | Run mkdocs build --strict locally to see the exact failures, then fix the offending Markdown or nav entries. |
| Parallel builds cause “file not found” errors. | Some Conan packages generate files lazily; increase the timeout with CONAN_RETRY=5 or temporarily disable parallelism (CPU_CORES=1). |
  
## **Happy hacking! **🎉** If anything feels unclear, open an issue or ping a maintainer – we’re here to help you get your contribution merged smoothly.**  
