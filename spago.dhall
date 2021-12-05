{ name = "purescript-repr"
, version = "0.3.1"
, repository = "https://github.com/JoelLefkowitz/purescript-repr"
, license = "MIT"
, dependencies = 
    [ "ordered-collections"
    , "prelude"
    , "strings"
    , "stringutils"
    , "tuples"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
