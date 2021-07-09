{ name = "repr"
, license = "MIT"
, repository = "https://github.com/JoelLefkowitz/purescript-repr.git"
, dependencies =
  [ "assert"
  , "console"
  , "debug"
  , "effect"
  , "ordered-collections"
  , "psci-support"
  , "strings"
  , "stringutils"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
