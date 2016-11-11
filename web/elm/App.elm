module App exposing (..)

import Html exposing (..)
import Html.App as App
import Material


---Initial setup


type Msg
    = NoOp
    | Mdl (Material.Msg Msg)


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    {} ! []



---
--- Update functions


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        Mdl message ->
            Material.update message model



---
--- View functions


view : Model -> Html Msg
view model =
    div [] [ text "Hello" ]


main : Program Never
main =
    App.program
        { init = init
        , update = update
        , subscriptions = (\_ -> Sub.none)
        , view = view
        }
