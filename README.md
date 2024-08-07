# Repr

String formatters.

![Review](https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/repr/review.yml)
![Version](https://pursuit.purescript.org/packages/purescript-repr/badge)
![Quality](https://img.shields.io/codacy/grade/fa35b2e4ce8c4223bed24727e42bc0fb)

## Installing

```bash
spago install repr
```

## Documentation

Documentation and more detailed examples are hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-repr).

## Usage

Join an `Array` into with a delimiter:

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

### Dependencies

To install dependencies:

```bash
yarn install
yarn spago install
```

### Tests

To run tests:

```bash
yarn spago test
```

### Documentation

To generate the documentation locally:

```bash
yarn spago docs
```

### Linters

To run linters:

```bash
yarn lint
```

### Formatters

To run formatters:

```bash
yarn format
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

<div align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</div>
