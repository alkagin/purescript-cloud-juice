module Test.Main where

import Prelude

import Data.Maybe (Maybe(..))
import Data.Time.Duration (Milliseconds(..))
import Effect.Aff (Aff)
import Effect.Console (warnShow, infoShow)
import Effect.Class (liftEffect)
import Test.Spec.Discovery (discover)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (defaultConfig, runSpec')
import Simple.JSON (unsafeStringify)

main :: Aff Unit
main = do
  let conf = defaultConfig { timeout = Just (Milliseconds 600000.0)}
  specs <- discover """Test\..*Spec"""
  runSpec' conf [consoleReporter] specs
