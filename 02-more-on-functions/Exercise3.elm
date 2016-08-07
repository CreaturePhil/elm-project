import Html
import List
import String

wordCount = List.length << String.words

main = Html.text <| toString <| wordCount "I am a dog."
