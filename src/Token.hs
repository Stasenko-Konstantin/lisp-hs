module Token where

import qualified Data.Text as T

data TokenType = TNum | TName | TString | TLParen | TRParen deriving (Show, Eq)

data Token = Token
  { tokenType :: TokenType
  , content   :: T.Text
  , xPos      :: Int
  , yPos      :: Int
  } deriving Show

instance Eq Token where
  left == right =
    if (tokenType left) /= (tokenType right)
    then False
    else (content left) == (content right)
