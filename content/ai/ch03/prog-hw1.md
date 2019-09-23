---
title: "Ch3 Programming HW1"
date: 2019-09-22T19:56:27-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

1. Write a function CONSTRAIN that takes three inputs called X, MAX,
   and MIN.  If X is less than MIN, it should return MIN; if X is
   greater than MAX, it should return MAX.  Otherwise, since X is
   between MIN and MAX, it should return X. (CONSTRAIN 3 -50 50) should
   return 3. (CONSTRAIN 92 -50 50) should return 50.
   
2. Write the function MEAN that finds the arithmetic mean of a
   nonempty list of numbers.
   
3. Write the function STDDEV that finds the standard deviation of a
   nonempty list of numbers. You need not bother to divide by (n-1)
   instead of n.
   
4. Write a function HOWCOMPUTE.  HOWCOMPUTE takes three
   numbers as input and figures out what operation would produce the
   third from the first two. Possible answers: 'ADD 'SUBTRACT
   'MULTIPLY and 'BEATS-ME. 

5. Write a function to act as referee in the Rock-Scissors-Paper game.
   In this game, each player picks one of Rock, Scissors, or Paper, and
   then both players tell what they picked.  Rock "breaks" Scissors,
   so if the first player picks Rock and the second picks Scissors, the
   first player wins.  Scissors ‘‘cuts’’ Paper, and Paper ‘‘covers’’
   Rock.  If both players pick the same thing, it’s a tie.  The
   function PLAY should take two inputs, each of which is either ROCK,
   SCISSORS, or PAPER, and return one a number 1 = first player wins,
   2 = second player wins, or 0 = tie.
   Examples: (PLAY ’ROCK ’SCISSORS) should return 1. 
   (PLAY ’PAPER ’SCISSORS) should return 2.

6.  A palindrome is a sequence that reads the same forwards
    and backwards.  The list `(A B C D C B A)` is a palindrome; 
	`(A B C A B C)` is not.  Write a function `palindromep` that
    returns T if its input is a palindrome.
	
7. Write `make-palindrome` that takes in a list and makes a palindrome
   out of it in a simple way. Given `(YOU AND ME)` as input it should
   return `(YOU AND ME ME AND YOU)`.

8. Write a crude program to compute the probability that an integer
   picked from M to N is a perfect square.

	{{% figure src="ps1-n89.png" %}}


9. Earlier, we started a simulation of a dice rolling game. Finish
    the simulator and run it with 100,000 tries at each game to
    estimate the probability of winning. Report which game is easier
    to win, and the difference in the estimated probability of winning
    when compared to the other game.

10. Sets are said to be equal if they contain exactly the same
  elements. Order does not matter in a set, so the sets `(RED BLUE
  GREEN)` and `(GREEN BLUE RED)` are considered equal.  However, the
  EQUAL predicate does not consider them equal, because it treats them
  as lists, not as sets.  Write a SET-EQUAL predicate that returns T
  if two things are equal as sets.  (Hint: If two sets are equal, then
  each is a subset of the other.)
   
11. We are going to write a program that compares the descriptions of
   two objects  and  tells  how  many  features  they  have  in
   common.    The descriptions  will  be  represented  as  a  list  of
   features,  with  the  symbol -VS-  separating  the  first  object
   from  the  second.    Thus,  when  given  a list:
   
		(large red shiny cube -vs- small shiny red four-sided pyramid)

       the  program will  respond  with:

        (2  COMMON  FEATURES)
   
       The steps to writing this program are:

   * `left-side`
   * `right-side`
   * `count-common`
   * `compare`
   
	
