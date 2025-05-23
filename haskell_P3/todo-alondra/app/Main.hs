module Main (main) where

import Lib

main :: IO ()
main = do 
    putStrLn "Commands:"
    putStrLn "+ <String> - Agrega un nuevo item a la lista de tareas"
    putStrLn "- <Int>    - Elimina el item en la posición <Int>"
    putStrLn "s <Int>    - Muestra el item en la posición <Int>"
    putStrLn "e <Int>    - Edita el item en la posición entrante"
    putStrLn "l          - Lista todas las tareas"
    putStrLn "r          - Invierte el orden de la lista"
    putStrLn "c          - Borra toda la lista"
    putStrLn "q          - Sale del programa"
    prompt [] -- Start with the empty todo list.
