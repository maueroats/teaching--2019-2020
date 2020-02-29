---
title: "22a. Hangman Draw Handler"
date: 2018-03-20T09:32:59-05:00
weight: 995
draft: false
#type: slide
#theme: white
---

Draw the whole scene by using helper functions to draw the different
parts. At first you can just put all of the images `above` each other;
later you can change the placement so it looks the way you prefer.

1. Draw the gallows based on how many wrong answers.
2. Draw the mistaken letters.
3. Draw the word with underscores for letters that are not guessed.

The key step is to draw the word with underscores for the letters missed.

    underscorizer: string(word) string(letters-guessed) -> string
    (check-expect (underscorizer "wow" "w") "w_w")
    (check-expect (underscorizer "wow" "ow") "wow")

Of course you can take in the correct guesses instead of all guesses,
or you can take in anything else from your model that makes sense.

## Advice

Decide on an approach:

   - Examine word letter by letter?
   - Examine letters guessed letter by letter?

Write tests that build up to your solution in the way we have
discussed and demonstrated in class.

Many approaches work. If you have no preference, I recommend the first
approach.
