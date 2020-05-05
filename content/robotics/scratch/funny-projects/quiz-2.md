---
title: "Quiz 2"
date: 2019-02-20T11:14:59-06:00
weight: 220
draft: true
#type: slide
#theme: white
description: "First quiz on variables, after day 8."
---

In every question, let the person control what happens by interacting
with the sprite (keys or mouse). If you are not asked to write motion commands, you
can assume the sprites already have that part written.

1. You have a variable called "counter" that shows on the screen. At
   the start (when the green flag is clicked), set that variable to
   zero. Count up by one every second until it gets to 20, then leave
   it alone. Hit "s" to subtract 5 from the counter. (It should start
   going up again after that.)
   
2. Anne the Actor needs to climb a ladder up to the catwalk in the
   theater. There is a cover locking the ladder, so she needs a key.
   
     2a. List any variables you will use and give the meaning of two
     different values. Example: "flying" is the variable. A value of
     "50" means flying slow and "300" means flying fast.
   
     2b. Write code for Anne that lets her climb the ladder if she has
     the key, and also prevents her from going up the ladder
     (past the cover) without a key. Begin with the "when up key
     pressed" block.

     {{< figure src="roof-ladder-1.jpg" width="100" >}}
     {{< figure src="roof-ladder-2.jpg" width="100" >}}

      {{< scratch >}} 
      when [up v] key pressed
      {{< /scratch >}}

3. Dizzy Dan spins smoothly, 5 degrees "each time". Holding down the
   "s" key makes him spin. He starts instantly when you hit "s". When
   "s" is not pressed, he stays still. Write the code.
   
   
4. You control a Student sprite. You don't need to write any code for
   the Student. 
   
   * Get a Test sprite (touching it to pick it up, it disappears when
   you get it.)
   * Click the Answer sprite to uncover the answers. 
   * Until the answers are uncovered, you can't tell how you did on a test.
   * Touch the Answer sprite when you have gotten the test. 
   * Answer sprite says "good job" if you have gotten the test,
     uncovered the answers, and touched the Answer sprite.
   
   

