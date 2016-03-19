# elm-record-qualified

Shows examples of record update and a commented out example where a qualified record cannot be updated but can be bound.

```
E:\Dev\Src\elm-record-qualified>elm-make --warn src\Main.elm
-- SYNTAX PROBLEM ------------------------------------------------- src\Main.elm

I ran into something unexpected when parsing your code!

33│             { A.zero | ii = 1 }
                  ^
I am looking for one of the following things:

    a closing bracket '}'
    a lower case name
    whitespace

Detected errors in 1 module.
```
