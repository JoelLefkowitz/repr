module Data.String.Repr where

import Prelude
import Data.Array (cons)
import Data.Foldable (class Foldable, foldl, foldr)
import Data.List (zip)
import Data.Map (Map, values)
import Data.Map.Internal (keys)
import Data.String.CodePoints (length)
import Data.String.CodeUnits (slice)
import Data.String.Utils (endsWith, startsWith)
import Data.Tuple (Tuple(..))

trimStart :: String -> String -> String
trimStart x s
  | x == s = ""
  | startsWith x s = slice (length x) (length s) s
  | otherwise = s

trimEnd :: String -> String -> String
trimEnd x s
  | x == s = ""
  | endsWith x s = slice 0 (length s - length x) s
  | otherwise = s

showWithoutQuotes :: ∀ a. Show a => a -> String
showWithoutQuotes x = trimEnd "\"" $ trimStart "\"" $ show x

joinWith :: ∀ a f. Show a => Foldable f => String -> f a -> String
joinWith delimiter foldable = trimEnd delimiter joined
  where
  joined = foldl (\acc x -> acc <> showWithoutQuotes x <> delimiter) "" foldable

showKv :: ∀ k v. Show k => Show v => Tuple k v -> String
showKv (Tuple k v) = showWithoutQuotes k <> ": " <> showWithoutQuotes v

kvStrings :: ∀ k v. Show k => Show v => Map k v -> Array String
kvStrings mp = foldr (\x acc -> cons (showKv x) acc) [] $ zip (keys mp) (values mp)

fmtShow :: ∀ k v. Show k => Show v => String -> String -> Map k v -> String -> String
fmtShow prefix delimiter fields suffix = prefix <> joinWith delimiter (kvStrings fields) <> suffix
