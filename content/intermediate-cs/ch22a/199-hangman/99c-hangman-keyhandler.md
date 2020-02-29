---
title: "22a. Hangman Key Handler"
date: 2018-03-15T15:31:22-05:00
weight: 992
draft: false
#type: slide
#theme: white
description: "Every keypress is a guess - adjust the model accordingly."
---

The key handler needs to change the model depending on what key was
typed. 

1. Create an example model for some state in the game. You could use
   one of your examples from the initial planning.

2. Write a check-expect that demonstrates what should happen when the
   person hits a key which is in the word.
   
3. Write a check-expect that demonstrates what should happen when the
   person hits a key which is not in the word.

3. **Seriously!!** Write check-expects. See [my example checks for the key handler](hangman-key-testing.rkt).

4. Recommendation: Write the helper function `(string-contains-letter? str letter)` that determines if a letter is in the word.

5. Write the key handler. Remember to use `define/contract`.



