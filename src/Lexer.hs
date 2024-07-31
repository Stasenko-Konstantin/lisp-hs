module Lexer where

import Token
import qualified Data.Text as T

scan :: T.Text -> [Token]
scan text = help [] text
  where
    help :: [Token] -> T.Text -> [Token]
    help tokens "" = reverse $ mkToken EOF (-1, -1) : tokens
