---
title: "Strategy 2"
date: 2020-01-15T13:32:10-06:00
weight: 20
draft: false
#type: slide
#theme: white
---

1. `Controller` is an interface with a `void doIt()` method. Write the
   interface.
   
2. Write  `DoubleDot` class implementing the `Controller` interface
   that tells two robots to put a beeper and move. `DoubleDot` itself is
   not a robot.
   The `DoubleDot`
   class has to find out which `UrRobot`s in its constructor.

        public static void demo() {
            UrRobot x = new UrRobot(3,1,Directions.East,5);
            UrRobot y = new UrRobot(5,1,Directions.South,2);
            Controller c = new Controller(x,y);
            c.doIt();
            // x puts a beeper and moves to (3,2)
            // y puts a beeper and moves to (4,1)
        }
   
3. The `BC` class is a kind of `UrRobot` that uses a Controller. These
   robots always start at street=7, avenue=3, with 10 beepers. The
   constructor should take in the direction and a Controller. 
   
   When you tell a `BC` robot to move, it moves and applies the
   `doIt()` method of the controller.

