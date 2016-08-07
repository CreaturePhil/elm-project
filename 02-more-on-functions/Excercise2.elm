import Html
import List
import String

--head s = List.head (String.toList s)
head = List.head << String.toList

(~=) s1 s2 =
  head s1 == head s2

main = Html.text <| toString <| (~=) "hoe" "joe"
