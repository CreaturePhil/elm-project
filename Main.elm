module Main exposing (..)

import Html

add x y = x + y

result = add 1 2
  |> add 3
  |> (\x -> x - 3)

increment amount =
  let counter = 0
  in counter + amount

(~+) a b =
  a + b + 0.1

z = 1 ~+ 2

main =
  Html.text ("Hello World! #" ++
  (toString (increment result)) ++
  " " ++ (toString z))
