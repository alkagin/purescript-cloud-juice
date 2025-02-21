module Nakadi.Errors where

import Prelude

import Data.Newtype (class Newtype)
import Type.Proxy (Proxy(..))
import Data.Variant (Variant, inj)
import Nakadi.Types (Problem, BatchItemResponse)

newtype E400 = E400 Problem
derive instance ntE400 :: Newtype E400 _
derive newtype instance showE400 :: Show E400
derive newtype instance eqE400 :: Eq E400
_badRequest = Proxy :: Proxy "badRequest"
e400 :: ∀ v. Problem -> Variant (badRequest :: E400 | v)
e400 = inj _badRequest <<< E400

newtype E401 = E401 Problem
derive instance ntE401 :: Newtype E401 _
derive newtype instance showE401 :: Show E401
derive newtype instance eqE401 :: Eq E401
_unauthorized = Proxy :: Proxy "unauthorized"
e401 :: ∀ v. Problem -> Variant (unauthorized :: E401 | v)
e401 = inj _unauthorized <<< E401

newtype E403 = E403 Problem
derive instance ntE403 :: Newtype E403 _
derive newtype instance showE403 :: Show E403
derive newtype instance eqE403 :: Eq E403
_forbidden = Proxy :: Proxy "forbidden"
e403 :: ∀ v. Problem -> Variant (forbidden :: E403 | v)
e403 = inj _forbidden <<< E403

newtype E404 = E404 Problem
derive instance ntE404 :: Newtype E404 _
derive newtype instance showE404 :: Show E404
derive newtype instance eqE404 :: Eq E404
_notFound = Proxy :: Proxy "notFound"
e404 :: ∀ v. Problem -> Variant (notFound :: E404 | v)
e404 = inj _notFound <<< E404

newtype E409 = E409 Problem
derive instance ntE409 :: Newtype E409 _
derive newtype instance showE409 :: Show E409
derive newtype instance eqE409 :: Eq E409
_conflict = Proxy :: Proxy "conflict"
e409 :: ∀ v. Problem -> Variant (conflict :: E409 | v)
e409 = inj _conflict <<< E409

newtype E422 = E422 Problem
derive instance ntE422 :: Newtype E422 _
derive newtype instance showE422 :: Show E422
derive newtype instance eqE422 :: Eq E422
_unprocessableEntity = Proxy :: Proxy "unprocessableEntity"
e422 :: ∀ v. Problem -> Variant (unprocessableEntity :: E422 | v)
e422 = inj _unprocessableEntity <<< E422

newtype E207 = E207 (Array BatchItemResponse)
derive instance ntE207 :: Newtype E207 _
derive newtype instance showE207 :: Show E207
derive newtype instance eqE207 :: Eq E207
_multiStatus = Proxy :: Proxy "multiStatus"
e207 :: ∀ v. (Array BatchItemResponse) -> Variant (multiStatus :: E207 | v)
e207 = inj _multiStatus <<< E207

newtype E422Publish = E422Publish (Array BatchItemResponse)
derive instance ntE422Publish :: Newtype E422Publish _
derive newtype instance showE422Publish :: Show E422Publish
derive newtype instance eqE422Publish :: Eq E422Publish
_unprocessableEntityPublish = Proxy :: Proxy "unprocessableEntityPublish"
e422Publish :: ∀ v. (Array BatchItemResponse) -> Variant (unprocessableEntityPublish :: E422Publish | v)
e422Publish = inj _unprocessableEntityPublish <<< E422Publish
