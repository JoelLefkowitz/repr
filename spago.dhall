{ name = "purescript-repr"
, version = "0.2.0"
, repository = "https://github.com/JoelLefkowitz/purescript-repr"
, license = "MIT"
, dependencies = 
    [ "prelude"
    , "strings"
    , "tuples" 
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
