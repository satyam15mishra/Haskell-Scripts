module Main where
import System.Environment

main :: IO()
main = do
  putStrLn("Enter a number: ")
  n <- getLine
  let int_n = read n :: Integer
  let fact_n = product[1..int_n]
  putStrLn (show $ fact_n)