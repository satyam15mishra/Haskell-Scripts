module Main where
import System.Environment
import Text.ParserCombinators.Parsec hiding (spaces)

main :: IO()
main = do
  args <- getArgs
  putStrLn(readExpr(args !! 0))

symbol :: Parser Char
symbol = oneOf "!$%&|*+-/:<=?>@^~_#"

readExpr :: String -> String
readExpr input = case parse (ignorespaces >> symbol) "lisp" input of 
  Left err -> "No Match: " ++ show err 
  Right val -> "Found Value"

ignorespaces :: Parser()
ignorespaces = skipMany1 space
