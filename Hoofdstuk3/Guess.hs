module Main
    where

import System.IO
import System.Random

main = do 
    hSetBuffering stdin LineBuffering
    num <- randomRIO (1::Int, 100)
    putStrLn ("" + num)
    putStrLn "I'm thinking of a number between 1 and 100"
    doGuessing num

doGuessing num = do
    putStrLn "Enter your guess: "
    guess <- getLine
    let guessnum = read guess
    if (guessnum < num)
        then do putStrLn "Too Low!"
            doGuessing num
        else if (read guess > num)
            then do putStrLn "Too High!"
                doGuessing num
            else do putStrLn "You Win!!!!"
