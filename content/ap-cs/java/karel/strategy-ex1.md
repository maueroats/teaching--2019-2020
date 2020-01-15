---
title: "Strategy 1"
date: 2020-01-14T14:21:13-06:00
weight: 10
draft: false
#type: slide
#theme: white
---

Skills: 

* Make an instance variable.
* Define an interface.
* Implement an interface.
* Write a constructor given some information.

Questions:

1. The class `MLM` is a `Strategy` that moves forward, puts down a
   beeper, turns left, and moves forward again. Write the class `MLM`.
   
2. Write the class `XBot`, which is a class of robot that only moves horizontally.

    * Starts at street=n, avenue=3 facing East
    * `turnLeft` really turns the robot to face in the opposite
      direction of the original direction
    
3. Create a new interface `NamedStrategy` which adds a `String
   stratName()` method to the abilities of a `Strategy`. The
   `stratName()` method should return the strategy's name.
   
4. Make a class `LaySpeak` which implements `NamedStrategy`. The
   `doIt` method both puts down two beepers and prints out the name of
   the strategy.
   
        System.out.println(name of strategy);

    This kind of strategy should learn its name when it is constructed.

