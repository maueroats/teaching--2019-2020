---
title: "22a. More Recursion"
date: 2018-02-28T08:11:33-06:00
weight: 60
draft: false
#type: slide
#theme: white
description: "Many more recursion practice problems."
---

1. `sum-cubes`: number(n) -> number. Finds the sum of the first `n` perfect cubes. 

2. `vblock`: number(n) image(img) -> image. Makes a vertical stack of `n` copies of `img`.

3. `hblock`: number(n) image(img) -> image. Make a horizontal stack of `n` copies of `img`.

4. `grid`: number(rows) number(columns) image -> image. Make a grid that is `columns` wide and `rows` tall of the image repeated.

5. `add-sqrt`: number(start) number(end) -> number. Add up `(sqrt n)` for every integer `n` with `start <= n <= end`
If no numbers fit this description, the sum should be zero.

    Example: when start=4 and end=5, the answer is `(+ (sqrt 4) (sqrt 5))`, which is about 4.236.

        (check-expect (add-sqrt 4 3) 0)
        (check-expect (add-sqrt 4 4) 2)
        (check-within (add-sqrt 4 5) 4.23 0.01)
        (check-within (add-sqrt 4 8) 12.15 0.01)

6. `lots-of-hyphens`: string(word) -> string. Insert a hyphen after every letter in the word. 

        (lots-of-hyphens "grape") ==> "g-r-a-p-e-"

    Extra: get `"g-r-a-p-e"` instead.

7. `ten-circle`: number(start) number(end) -> image. Produces concentric circles starting at radius `start` and drawing every 10 units until the radius is at least `end`. Assume `start < end`.

    {{< figure src="ten-circle.png" >}}
    
