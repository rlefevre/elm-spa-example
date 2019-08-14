module Article.Slug exposing
    ( Slug
    , urlParser, decoder
    , toString
    )

{-|


# Types

@docs Slug


# Create

@docs urlParser, decoder


# Transform

@docs toString

-}

import Json.Decode as Decode exposing (Decoder)
import Url.Parser exposing (Parser)



-- TYPES


{-| -}
type Slug
    = Slug String



-- CREATE


{-| -}
urlParser : Parser (Slug -> a) a
urlParser =
    Url.Parser.custom "SLUG" (\str -> Just (Slug str))


{-| -}
decoder : Decoder Slug
decoder =
    Decode.map Slug Decode.string



-- TRANSFORM


{-| -}
toString : Slug -> String
toString (Slug str) =
    str
