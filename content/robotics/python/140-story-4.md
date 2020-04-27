---
title: "Storytelling 4"
date: 2020-04-26T22:33:38-05:00
weight: 140
draft: false
#type: slide
#theme: white
description: "Lesson 4. Review and more complexity."
---

1. What is the purpose of a variable?
2. What is the purpose of a while loop?
3. What is the purpose of an if statement?

## Exercises

Today we will review using variables and learn how to print things out without extra spaces.

1. (**Mad Libs**.) “I went for a _(number)_ _(distance)_ _(verb)_ yesterday. On the _(verb)_ I saw _(number)_  _(plural noun)_.”
2. (**Madder Lib**.) “I saw _(number)_ _(nouns)_. The _(nouns)_ were: _(name them all)_.”
3. (**Mad Lib III**.) “When the {mammal} {verbs}, it goes {adverb}.”
4. (**City Adventure**.) How much money do you have (up to $5.00)? If they type more than $5, say “That’s too much, mom won’t let you leave the house with more than $5.”  Where do you want to go (starbucks or dunkin)? If they go to starbucks, they could buy one hot chocolate ($3.95). If they go to dunkin, they could buy donuts ($1.50 each). At dunkin, keep offering them more donuts until they say no or run out of money. At the end, print out how much money they have, if they have hot chocolate, and how many donuts they have.
5. (**Country Adventure**.) You are on a farm. What is the main crop? What is the main kind of livestock? What do you do with the livestock? Do you want to work with the crop or the livestock? Crop: weed or harvest. Both make you tired, but weeding makes the crop “organic X” (so if you weed corn, the crop is now “organic corn”). Livestock: you ___ the livestock, and this makes you feel happy. At the end, print out how you feel and what the crop is.


## Learning

The format function can be used to print things exactly the way you
want them - you can control spacing and even the form of numbers.

* Classic method: a `.format` after a string.

        gold = 5
        sentence = "You have {} gold.".format(gold)
        
* Modern method: a format string begins with `f` then quotes.

        gems = 10
        sentence = f"You have {gems} precious gems."
