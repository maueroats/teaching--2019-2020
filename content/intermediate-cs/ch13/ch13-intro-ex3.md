---
title: "13. Intro Exercises 3"
date: 2019-12-19T08:47:17-06:00
weight: 130
draft: false
#type: slide
#theme: white
---

1. (a) Write a check-expect for `(question-1 10 20)`. 
   (b) Are there any inputs that will cause an error? 
   Explain why or why not.

```racket
(define (question-1 x y)
  (and (= 1/2 (/ x y))
       (not (= y 0))))
```

2. Simplify and identify any errors: 

```racket
(define (question-2 boat-sinking? have-lifejackets?)
  (or (boolean=? boat-sinking? false) 
      have-lifejackets?)
```

3. Simplify and identify any errors:

```racket
(define (eat-cheap hungry? money mcburger?)
  (and (> money 0) hungry? (< money 20) 
       (or mcburger? (not mcburger?))))
```

4. Write the function `before-water?: string -> boolean` that takes in
   a string and determines if the string appears before the word
   "water" in the dictionary. 

5. Write the function `bookends?: string -> boolean` that takes in a
   string and produces true if the string appears before "book" or
   after "end" in the dictionary.
   
6. Write a function `avoids-yellow?: image -> boolean` that is true if
   the image is neither a yellow square nor a yellow circle.
