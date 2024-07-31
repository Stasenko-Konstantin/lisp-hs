module Main where

import qualified Lexer as L

main :: IO ()
main = do
  let t = "Hello, Haskell!"
  print $ L.scan t
