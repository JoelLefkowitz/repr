# PureScript repr

String formatters.

## Status

| Source     | Shields                                                       |
| ---------- | ------------------------------------------------------------- |
| Project    | ![latest_release] ![license] ![line_count] ![language_count]  |
| Health     | ![documentation] ![review_action] ![codacy_quality]           |
| Repository | ![open_issues] ![closed_issues] ![open_pulls] ![closed_pulls] |
| Activity   | ![contributors] ![monthly_commits] ![last_commit]             |

## Installation

```bash
bower install purescript-repr
```

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

## Tests

To run tests:

```bash
pulp test
```

## Documentation

This repository's documentation is hosted on [Pursuit](https://pursuit.purescript.org/packages/purescript-repr).

## Linters

To run linters:

```bash
nps lint
```

## Formatters

To run formatters:

```bash
nps format
```

## Continuous integration

This repository uses GitHub Actions to lint and test each commit. Each commit should be formatted and its corresponding documentation should be updated.

## Versioning

This repository adheres to semantic versioning standards. For more information on semantic versioning visit [semver](https://semver.org).

Bump2version is used to version and tag changes. For example:

```bash
bump2version patch
```

## Changelog

Please read this repository's [changelog](CHANGELOG.md) for details on changes that have been made.

## Contributing

Please read this repository's guidelines on [contributing](CONTRIBUTING.md) for details on the process for submitting pull requests. Moreover, our [code of conduct](CODE_OF_CONDUCT.md) declares our collaboration standards.

## Contributors

- [Joel Lefkowitz](https://github.com/joellefkowitz) - Initial work

## Remarks

Lots of love to the open source community!

<p align='center'>
    <img width=200 height=200 src='https://media.giphy.com/media/osAcIGTSyeovPq6Xph/giphy.gif' alt='Be kind to your mind' />
    <img width=200 height=200 src='https://media.giphy.com/media/KEAAbQ5clGWJwuJuZB/giphy.gif' alt='Love each other' />
    <img width=200 height=200 src='https://media.giphy.com/media/WRWykrFkxJA6JJuTvc/giphy.gif' alt="It's ok to have a bad day" />
</p>

[latest_release]: https://img.shields.io/github/v/tag/joellefkowitz/purescript-repr "Latest release"
[license]: https://img.shields.io/github/license/joellefkowitz/purescript-repr "License"
[line_count]: https://img.shields.io/tokei/lines/github/joellefkowitz/purescript-repr "Line count"
[language_count]: https://img.shields.io/github/languages/count/joellefkowitz/purescript-repr "Language count"
[documentation]: https://pursuit.purescript.org/packages/purescript-repr/badge "Documentation"
[review_action]: https://img.shields.io/github/actions/workflow/status/JoelLefkowitz/purescript-repr/review.yml "Review action"
[codacy_quality]: https://img.shields.io/codacy/grade/fa35b2e4ce8c4223bed24727e42bc0fb "Codacy quality"
[open_issues]: https://img.shields.io/github/issues/joellefkowitz/purescript-repr "Open issues"
[closed_issues]: https://img.shields.io/github/issues-closed/joellefkowitz/purescript-repr "Closed issues"
[open_pulls]: https://img.shields.io/github/issues-pr/joellefkowitz/purescript-repr "Open pull requests"
[closed_pulls]: https://img.shields.io/github/issues-pr-closed/joellefkowitz/purescript-repr "Closed pull requests"
[contributors]: https://img.shields.io/github/contributors/joellefkowitz/purescript-repr "Contributors"
[monthly_commits]: https://img.shields.io/github/commit-activity/m/joellefkowitz/purescript-repr "Monthly commits"
[last_commit]: https://img.shields.io/github/last-commit/joellefkowitz/purescript-repr "Last commit"
