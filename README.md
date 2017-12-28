# Towers of Hanoi

Two simple programs that print the steps to solve the [Towers of Hanoi](https://en.wikipedia.org/wiki/Tower_of_Hanoi) puzzle. One implemented in Common Lisp the other in Swift 4

```
./Hanoi 4

first = [4, 3, 2, 1]
spare = []
final = []
-
first = [4, 3, 2]
spare = [1]
final = []
-
first = [4, 3]
spare = [1]
final = [2]
-
first = [4, 3]
spare = []
final = [2, 1]
-
first = [4]
spare = [3]
final = [2, 1]
-
first = [4, 1]
spare = [3]
final = [2]
-
first = [4, 1]
spare = [3, 2]
final = []
-
first = [4]
spare = [3, 2, 1]
final = []
-
first = []
spare = [3, 2, 1]
final = [4]
-
first = []
spare = [3, 2]
final = [4, 1]
-
first = [2]
spare = [3]
final = [4, 1]
-
first = [2, 1]
spare = [3]
final = [4]
-
first = [2, 1]
spare = []
final = [4, 3]
-
first = [2]
spare = [1]
final = [4, 3]
-
first = []
spare = [1]
final = [4, 3, 2]
-
first = []
spare = []
final = [4, 3, 2, 1]
```
