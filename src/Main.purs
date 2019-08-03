module Main where

import Prelude

import Effect (Effect)
import Effect.Aff
import Effect.Class.Console
import Effect.Aff.Compat

instantSuccess :: String -> Aff String
instantSuccess = fromEffectFnAff <<< _instantSuccess
foreign import _instantSuccess :: String -> EffectFnAff String

main :: Effect Unit
main = launchAff_ do
  s <- instantSuccess "hi"
  log s

