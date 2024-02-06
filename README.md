# repr

String formatters.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/repr/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-arrayreprsearch/badge)
![Quality](https://img.shields.io/codacy/grade/fa35b2e4ce8c4223bed24727e42bc0fb)

## Installation

```bash
spago install repr
```

## Documentation

Documentation and more detailed examples are hosted on [Github Pages](https://joellefkowitz.github.io/repr).

## Usage

Join an `Array` into with a delimeter:

```purs
> joinWith ", " [ 1, 2, 3 ]
"1, 2, 3"
```

Format a `Map` into a readable (_and debuggable_) format:

```purs
> kvStrings $ fromFoldable [ Tuple "a" 1 , Tuple "b" 2 , Tuple "c" 3]
[ "a: 1", "b: 2", "c: 3" ]
```

Trim substrings:

```purs
> trimStart "a" "abc"
"bc"

> trimStart "d" "abc"
"abc"
```

```purs
> trimEnd "c" "abc"
"ab"

> trimEnd "d" "abc"
"abc"
```

## Tooling

### Tests

To run tests:

```bash
spago test
```

### Documentation

To generate the documentation locally:

```bash
spago docs
```

### Linters

To run linters:

```bash
npm run lint
```

### Formatters

To run formatters:

```bash
npm run format
```

## Contributing

Please read this repository's [Code of Conduct](CODE_OF_CONDUCT.md) which outlines our collaboration standards and the [Changelog](CHANGELOG.md) for details on breaking changes that have been made.

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [SemVer](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

### Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>
