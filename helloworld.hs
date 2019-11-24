module Main where
import System.Environment

main :: IO()
main = do
  putStrLn("Enter a name: ")
  name <- getLine
  putStrLn("Hello " ++ name)

{-
uncomment below for taking command line arguments and adding them
-}

-- main :: IO()
-- main = do 
--        args <- getArgs
--        let a = args!!0
--        let inta = read a :: Integer
--        let b = args!!1
--        let intb = read b :: Integer
--        let c = inta + intb
--        putStrLn(show $ c )

