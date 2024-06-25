module Test.Data.String.Repr where

import Prelude
import Data.Map (Map, fromFoldable)
import Data.String.Repr (fmtShow, joinWith, showWithoutQuotes, kvStrings, showKv, trimEnd, trimStart)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Test.Assert (assertEqual)

mapFixture :: Map String Int
mapFixture =
  fromFoldable
    [ Tuple "a" 1
    , Tuple "b" 2
    , Tuple "c" 3
    ]

main :: Effect Unit
main = do
  assertEqual
    { actual: trimStart "a" "abc"
    , expected: "bc"
    }
  assertEqual
    { actual: trimStart "d" "abc"
    , expected: "abc"
    }
  assertEqual
    { actual: trimEnd "c" "abc"
    , expected: "ab"
    }
  assertEqual
    { actual: trimEnd "d" "abc"
    , expected: "abc"
    }
  assertEqual
    { actual: joinWith ", " [ 1, 2, 3 ]
    , expected: "1, 2, 3"
    }
  assertEqual
    { actual: showWithoutQuotes "a"
    , expected: "a"
    }
  assertEqual
    { actual: showKv (Tuple "a" 1)
    , expected: "a: 1"
    }
  assertEqual
    { actual: kvStrings mapFixture
    , expected: [ "a: 1", "b: 2", "c: 3" ]
    }
  assertEqual
    { actual: fmtShow "[" ", " mapFixture "]"
    , expected: "[a: 1, b: 2, c: 3]"
    }
