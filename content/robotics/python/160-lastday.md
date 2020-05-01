---
title: "Last Day Quiz"
date: 2020-05-01T09:41:21-05:00
weight: 160
draft: false
#type: slide
#theme: white
description: "Summary exercises so you can show what you have done."
---

## Quiz on Python

1. Ask the person for their name and their favorite kind of music. Print out "At NAME's house, we listen to KIND music."
2. A person is currently working 10 hours per week at a job. Print out "You are scheduled for XX hours next week." Ask "(more/less/happy)? ". If they want more or less, change their number of hours by two and ask again. If they are happy, stop asking and print "Final schedule: XX hours." Don't let them go below 0 hours/week.
3. (Mad Lib.) Create a mad lib. Little _(color)_ Riding Hood went to see her _(relative)_. Instead of her _(relative)_, there was a _(noun)_. The _(noun)_ tried to eat her but she was too _(adjective)_. She got the _(noun)'s_ _(noun)_ _(verbed)_.
4. Ask for a start number and a stop number. Print all of the numbers
   from start to stop. Figure out the sum of all of the multiples
   of 3 between start and stop, and print that out, too.
5. Write the Boat Adventure, below.

## Boat Adventure, Improved

You are going to go on a water adventure. 

* How much money do you start with?
* What kind of watercraft do you want to buy (sailboat 100 or canoe 20)? 
* Do you buy a life jacket (10) (yes/no)?
* Pretend each time you ask "keep going or turn around?" they go
  one mile.
* After 3 miles (fake distance), they cannot see the shore any
  more.
* A boat that goes 5 miles will discover a secret island.
* A canoe that goes 4 miles will capsize. 
        + If you have a life jacket, you can get back in the
          canoe and survive.
        + If you have no life jacket, you are rescued by pirates,
        but the pirates steal all of your money and your canoe.

* At the end, print how much money they have.

### Boat Adventure, Example 1
   
        How much money do you start with? 200
        What do you buy (sailboat 100 or canoe 20)? sailboat
        Do you buy a life jacket (10)? yes
        You leave the port and start going.
        Keep going or turn around? keep going
        Keep going or turn around? keep going
        Keep going or turn around? keep going
        You can't see the shore any more.
        Keep going or turn around? keep going
        You can't see the shore any more.
        Keep going or turn around? keep going
        You find a secret island with 300 money!
        THE END
        
        You sailed a boat 5 miles from shore.
        You ended the game with:
        yes sailboat
        390 money

### Boat Adventure, Example 2
   
        How much money do you start with? 40
        What do you buy (sailboat 100 or canoe 20)? canoe
        Do you buy a life jacket (10)? no
        You leave the port and start going.
        Keep going or turn around? keep going
        Keep going or turn around? keep going
        Keep going or turn around? keep going
        You can't see the shore any more.
        Keep going or turn around? keep going
        Your canoe capsizes.
        You a rescued by pirates, but they steal your canoe and your money.
        THE END
        
        You paddled a canoe 4 miles from shore.
        You ended the game with:
        no canoe
        0 money


### Boat Adventure, Example 3
   
        How much money do you start with? 50
        What do you buy (sailboat 100 or canoe 20)? canoe
        Do you buy a life jacket (10)? no
        You leave the port and start going.
        Keep going or turn around? keep going
        Keep going or turn around? turn around
        You go home safely
        THE END
        
        You paddled a canoe 1 miles from shore.
        You ended the game with:
        yes canoe
        30 money
