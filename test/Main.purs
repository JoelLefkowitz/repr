module Test.Main where

import Prelude
import Data.Map (Map, fromFoldable)
import Data.String.Repr (fmtShow, joinWith, showWithoutQuotes, kvStrings, showKv, trimEnd, trimStart)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Test.Assert (assertEqual)

main :: Effect Unit
main = do
  testTrimStart
  testTrimEnd
  testJoinWith
  testShowWithoutQuotes
  testShowKv
  testKvStrings
  testFmtShow

mapFixture :: Map String Int
mapFixture =
  fromFoldable
    [ Tuple "a" 1
    , Tuple "b" 2
    , Tuple "c" 3
    ]

testTrimStart :: Effect Unit
testTrimStart = do
  assertEqual
    { actual: trimStart "a" "abc"
    , expected: "bc"
    }
  assertEqual
    { actual: trimStart "d" "abc"
    , expected: "abc"
    }

testTrimEnd :: Effect Unit
testTrimEnd = do
  assertEqual
    { actual: trimEnd "c" "abc"
    , expected: "ab"
    }
  assertEqual
    { actual: trimEnd "d" "abc"
    , expected: "abc"
    }

testJoinWith :: Effect Unit
testJoinWith = do
  assertEqual
    { actual: joinWith ", " [ 1, 2, 3 ]
    , expected: "1, 2, 3"
    }

testShowWithoutQuotes :: Effect Unit
testShowWithoutQuotes = do
  assertEqual
    { actual: showWithoutQuotes "a"
    , expected: "a"
    }

testShowKv :: Effect Unit
testShowKv = do
  assertEqual
    { actual: showKv (Tuple "a" 1)
    , expected: "a: 1"
    }

testKvStrings :: Effect Unit
testKvStrings = do
  assertEqual
    { actual: kvStrings mapFixture
    , expected: [ "a: 1", "b: 2", "c: 3" ]
    }

testFmtShow :: Effect Unit
testFmtShow = do
  assertEqual
    { actual: fmtShow "[" ", " mapFixture "]"
    , expected: "[a: 1, b: 2, c: 3]"
    }
