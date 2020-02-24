---
title: "22a. Recursion Practice 3"
date: 2018-03-06T20:37:55-06:00
weight: 92
draft: false
#type: slide
#theme: white
description: "Even more recursion practice."
---

Do at least the first three. 
Please make sure to write at least three tests for each function.

1. `is-in-word?`: string(letter) string(word) -> boolean. True if the letter is in the word, false otherwise.

        (check-expect (is-in-word? "x" "explode") true)
        (check-expect (is-in-word? "s" "juliuc caecar" false)

2. `word-shrink`: string(word) number(starting-size) -> image. Create a picture of the word in which each letter is four points smaller than the previous letter. Do not let the font size go below 5pt.

     {{< figure src="shrink-word.png" title="(shrink-word \"Perspective Drawing\" 64)" >}}

3. `sum-penta`: number(start) number(end) -> number. The [pentagonal numbers](https://en.wikipedia.org/wiki/Pentagonal_number) are created by making larger and larger pentagons - Wikipedia has a nice animated image. The formula for the nth pentagonal number is `(* 0.5 n (- (* 3 n) 1))`. 

    Find the sum of all of pentagonal number `n` from `n=start` through `n=end`. 
    
    | n | (penta n) | (sum-penta 1 n) |
    |---|-----------|-----------------|
    | 1 | 1         |     1           |
    | 2 | 5         |     6           |
    | 3 | 12        |    18           |
     
## Challenge

4. `draw-tic-tac-toe`: string -> image. Take a string containing 9 characters (from "X" "O" and "-") and turn it into a 3x3 image of "X" "O" and blank squares in a tic-tac-toe board.

    Hint: You will probably want helper functions `draw-one-space` and `draw-one-line`. 

    {{< figure src="tictactoe.png" title="(draw-tic-tac-toe \"XXOO-OOXX\")" >}}


5. (Math) Write `is-pentagonal?`: number -> boolean. Then read [Project Euler 44](https://projecteuler.net/index.php?section=problems&id=44), which might be doable soon. You can celebrate if you find any two pentagonal numbers whose sum and difference are both pentagonal.


