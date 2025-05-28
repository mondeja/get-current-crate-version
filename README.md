# Get current crate version in GitHub Actions

Get the version of the current crate in a GitHub Actions workflow.

## Usage

### Crate in root directory

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Get crate version
        id: get-version
        uses: mondeja/get-current-crate-version@main
      - name: Print version
        run: echo "Crate version is ${{ steps.get-version.outputs.version }}"
```

### Crate in subdirectory

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Get crate version
        id: get-version
        uses: mondeja/get-current-crate-version@main
        with:
          working-directory: path/to/crate
      - name: Print version
        run: echo "Crate version is ${{ steps.get-version.outputs.version }}"
```
