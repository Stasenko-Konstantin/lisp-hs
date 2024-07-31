module Token where

import qualified Data.Text as T

data TokenType = TNum | TName | TString | TLParen | TRParen | EOF deriving (Show, Eq)

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

mkToken :: TokenType -> (Int, Int) -> Token
mkToken tt (x, y) = Token tt (T.pack $ show tt) x y

