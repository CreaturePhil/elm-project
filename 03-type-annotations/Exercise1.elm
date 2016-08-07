import Html
import List

cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

applyFree item =
  if item.qty >= 5 then
    if item.qty >= 10 then
      {item | freeQty = 3}
    else
      {item | freeQty = 1}
  else
    item

main = Html.text
  <| toString
  <| List.map applyFree cart
