---
title: "Variables Intro 1 Solution"
date: 2019-02-10T20:40:55-06:00
weight: 31
draft: false
hidden: true
#type: slide
#theme: white
description: "Exercises to introduce variables."
---

1. Count (and show) how many times you click on the button
   sprite. Assume we have already made a "clicks" variable. 

    {{< scratch >}}
    When this sprite clicked
    change [clicks v] by (1)
    {{< /scratch >}}

2. Reset the count of clicks to zero when you hit "r".

    {{< scratch >}}
    when [r v] key pressed
    set [clicks v] to (0)
    {{< /scratch >}}

3. There is a "Mario" sprite and a "Coin" sprite. 

   * Show on the screen how many coins Mario has touched.
   * When Mario touches a coin, it reappears in a random location.
   * Assume you have already made a "coins" variable.

    {{< scratch >}}
    when green flag clicked
    forever
    if < touching [Mario v] > then
      change [coins v] by (1) 
      go to [random position v]
    {{< /scratch >}}

4. Phil eats hamburgers. After he eats 5 burgers, he pixelates to
   "125". When he eats 10 hamburgers, he "wins". Have just one burger
   that reappears in a random position on the screen when Phil touches it.

    * Phil:

    {{< scratch >}}
    when green flag clicked
    forever
    if < (burgers) = (5) > then
      set [pixelate v] effect to (125)
      end
    if < (burgers) = (10) > then
      broadcast [game over v]
      end
    {{< /scratch >}}

    * Burger:

    {{< scratch >}}
    when green flag clicked
    forever
    if < touching [Phil v] > then
      change [burgers v] by (1) 
      go to [random position v]
    {{< /scratch >}}
