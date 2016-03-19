import Graphics.Element exposing (Element, show, flow, right)
import A as A exposing (zero)

unqualified : Element
unqualified =
    let local =
            A.zero

        localUpdate =
            { local | ii = 1 }

        unqualifiedUpdate =
            { zero | ii = 2 }

    in show ("Unqualified", local, localUpdate, unqualifiedUpdate)

{- ERROR: I expected that I could reference a record qualified here but get a compiler error.
I ran into something unexpected when parsing your code!

20│             { A.zero | ii = 1 }
                  ^
I am looking for one of the following things:

    a closing bracket '}'
    a lower case name
    whitespace

Detected errors in 1 module.
-}
qualified : Element
qualified =
    let qualifiedUpdate =
            --{ A.zero | ii = 3 }
            { zero | ii = 3 }

    in show ("Qualified", qualifiedUpdate)

main : Graphics.Element.Element
main =
    flow right [unqualified, qualified]
