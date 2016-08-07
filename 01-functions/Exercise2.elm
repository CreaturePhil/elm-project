import Html
import String

upper s = if String.length s > 10
          then String.toUpper s
          else s

length s = toString (String.length s)

james = "James Moore"
foobar = "foo bar"

main = Html.text (
  upper james ++ " - name length: " ++ length james
  ++ " " ++ upper "foo bar" ++ " - name length: " ++ length foobar
  )
