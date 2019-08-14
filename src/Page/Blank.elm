module Page.Blank exposing (view)

{-|

@docs view

-}

import Html exposing (Html)


{-| -}
view : { title : String, content : Html msg }
view =
    { title = ""
    , content = Html.text ""
    }
