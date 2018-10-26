# markdownlint-cli [![Travis CI Build Status][travis-badge]][travis-url] [![AppVeyor CI Build Status][appveyor-badge]][appveyor-url]

> Command Line Interface for [MarkdownLint][markdownlint]

## Installation

```bash
npm install -g markdownlint-cli
```

## Usage

```bash
$ markdownlint --help

  Usage: markdownlint [options] <files|directories|globs>

  MarkdownLint Command Line Interface

  Options:

    -h, --help                          output usage information
    -V, --version                       output the version number
    -s, --stdin                         read from STDIN (no files)
    -o, --output [outputFile]           write issues to file (no console)
    -c, --config [configFile]           configuration file
    -i, --ignore [file|directory|glob]  files to ignore/exclude
```

## Configuration

`markdownlint-cli` reuses [the rules][rules] from `markdownlint` package.

Configuration is stored JSON or INI files in the same [config format][config].

The example of configuration file:

```json
{
  "default": true,
  "MD003": { "style": "atx_closed" },
  "MD007": { "indent": 4 },
  "no-hard-tabs": false,
  "whitespace": false
}
```

See [test configuration file][test-config] or [style folder][style-folder] for more examples.

CLI argument `--config` is not mandatory. If it is not provided, `markdownlint-cli` looks for file `.markdownlint.json` in current folder, or for file `.markdownlintrc` in current or all upper folders. The algorithm is described in details on [rc package page][rc-standards].

## Related

- [markdownlint][markdownlint] - API for this module
- [glob][glob] - Pattern matching implementation

## License

MIT © Igor Shubovych

[travis-badge]: https://img.shields.io/travis/igorshubovych/markdownlint-cli/master.svg?label=linux
[travis-url]: https://travis-ci.org/igorshubovych/markdownlint-cli

[appveyor-badge]: https://img.shields.io/appveyor/ci/igorshubovych/markdownlint-cli/master.svg?label=windows
[appveyor-url]: https://ci.appveyor.com/project/igorshubovych/markdownlint-cli

[markdownlint]: https://github.com/DavidAnson/markdownlint
[rules]: https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md
[config]: https://github.com/DavidAnson/markdownlint#optionsconfig
[style-folder]: https://github.com/DavidAnson/markdownlint/tree/master/style
[test-config]: https://github.com/igorshubovych/markdownlint-cli/blob/master/test/test-config.json
[rc-standards]: https://www.npmjs.com/package/rc#standards
[glob]: https://github.com/isaacs/node-glob
