import Html
import List

type alias Item =
  { name : String
  , qty : Int
  , freeQty : Int
  }

cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

applyFree : Item -> Item
applyFree item =
  if item.qty >= 5 then
    if item.qty >= 10 then
      {item | freeQty = 3}
    else
      {item | freeQty = 1}
  else
    item

main : Html.Html msg
main = Html.text
  <| toString
  <| List.map applyFree cart
