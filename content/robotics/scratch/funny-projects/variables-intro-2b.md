---
title: "Variables Intro 2 Solution"
date: 2019-02-11T11:00:35-06:00
weight: 40
draft: false
hidden: true
#type: slide
#theme: white
description: "Review and using two variables at once. Half day."
---

1. Arf the Dog gets five points when he eats a cupcake and two points for
   eating a hotdog. When food is eaten it disappears. Reset the points
   when you click the green flag.

    Arf the Dog:

    {{< scratch >}}
    when green flag clicked
    set [points v] to (0)
    {{< /scratch >}}

    Cupcake:
    {{< scratch >}}
    when green flag clicked
    forever
      if < touching [Arf the Dog v] > then
        change [points v] by (5)
        hide
        end
      end
    {{< /scratch >}}

    The hotdog is almost identical to the cupcake.



2. There are two variables. One is a "goal" number. The other is the
   "current" number. 
   
   * You control the current number with the arrow
   keys (up, down). 
   * When the current number matches the goal number, 
   the backdrop changes to "You Win".
   * Set the goal number to be a random number 1 to 10 when green flag
     is clicked.

     {{< scratch >}}
     when green flag clicked
     set [goal v] to (pick random (1) to (10))

     when [up v] key pressed
     change [current v] by (1)

     when [down v] key pressed
     change [current v] by (-1)

     when green flag clicked
     forever
       if < (goal) = (current) > then
         switch backdrop to [YouWin v]
       end
     {{< /scratch >}}


   
<!-- Teacher notes: 

1. Arf the Dog: students do not name the variable appropriately. 
   Lots call it "variable". 

2. Designed to teach students to use variable names, since there are two. 
   
-->
