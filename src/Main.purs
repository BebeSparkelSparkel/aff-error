module Main where

import Prelude

import Effect (Effect)
import Effect.Aff
import Effect.Class.Console

foreign import instantSuccess :: String -> Aff String

main :: Effect Unit
main = launchAff_ do
  s <- instantSuccess "hi"
  log s

