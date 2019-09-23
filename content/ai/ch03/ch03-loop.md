---
title: "Ch3 Loop by Example"
date: 2019-09-22T14:19:45-05:00
weight: 20
draft: false
#type: slide
#theme: white
description: "Tons of examples showing how to use loop."
---

The `loop` macro is really complicated but it is very convenient. Some
people do not like it because it is not "lispy". It gets lots of jobs
done quickly, though, so it can let you focus on other things.

All of these examples are taken directly from [Common Lisp the
Language](https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node235.html#SECTION003000000000000000000),
	second edition, which quotes from the Common Lisp Loop Facility proposal . The source has more explanation and details.

## Concept: Destructuring

One convenient concept that gets used a lot is destructuring. This
means taking a list or structure apart into its pieces.

Example:

	(destructuring-bind (a b c) (list 8 15 17)
	  (+ a b))
	  => 23

This same thing can be used in a loop.

	(loop for (a b)
			  in '((3 4) (5 12) (8 15))
		  do (print (+ (* a a) (* b b))))
      25
	  169
	  289
	  => NIL

In this document the values printed out are shown first, then the
returned value is shown after the `=>` sign. The example above shows
three numbers being printed out but no answer being returned.

There are more examples [on assymetrical-view.com](http://asymmetrical-view.com/2008/09/18/destructuring-bind.html).

## Simple Stepping
In the following example, the variable x is stepped before y is stepped; thus, the value of y reflects the updated value of x:

	(loop for x from 1 to 9
		  for y = nil then x
		  collect (list x y))
	   => ((1 NIL) (2 2) (3 3) (4 4) (5 5) (6 6) (7 7) (8 8) (9 9))

In the following example, x and y are stepped in parallel:

	(loop for x from 1 to 9
		  and y = nil then x
		  collect (list x y))
	   => ((1 NIL) (2 1) (3 2) (4 3) (5 4) (6 5) (7 6) (8 7) (9 8))

## Numbers

Print some numbers.

	(loop as i from 1 to 5
		  do (print i)) ;Prints 5 lines
	1
	2
	3
	4
	5
	   => NIL

Print every third number.

	(loop for i from 10 downto 1 by 3
		  do (print i)) ;Prints 4 lines
	10
	7
	4
	1
	   => NIL

Step incrementally from the default starting value.

	(loop as i below 5
		  do (print i)) ;Prints 5 lines
	0
	1
	2
	3
	4
	   => NIL

## do - just for action

Print some numbers.

	(loop for i from 1 to 5
		  do (print i)) ;Prints 5 lines
	1
	2
	3
	4
	5
	   => NIL

Print numbers and their squares.
The DO construct applies to multiple forms.

	(loop for i from 1 to 4
		  do (print i)
			 (print (* i i))) ;Prints 8 lines
	1
	1
	2
	4
	3
	9
	4
	16
	   => NIL

## Lists

Print every item in a list.

	(loop for item in '(1 2 3 4 5) do (print item)) ;Prints 5 lines
	1
	2
	3
	4
	5
	   => NIL

Print every other item in a list.

	(loop for item in '(1 2 3 4 5) by #'cddr
		  do (print item))  ;Prints 3 lines
	1
	3
	5
	   => NIL

Destructure items of a list, and sum the x values

	;;; using fixnum arithmetic. -- the typing is extra, omit for AI class
	(loop for (item . x) (t . fixnum)
			  in '((A . 1) (B . 2) (C . 3))
		  unless (eq item 'B) sum x)
	   => 4

## Lists - "on" vs "in"

Collect successive tails of a list.

	(loop for sublist on '(a b c d)
		  collect sublist)
	   => ((A B C D) (B C D) (C D) (D))

Print a list by using destructuring with the loop keyword ON.

	(loop for (item) on '(1 2 3)
		  do (print item))  ;Prints 3 lines
	1
	2
	3
	   => NIL

Print items in a list without using destructuring.

	(loop for item in '(1 2 3)
		  do (print item))  ;Prints 3 lines
	1
	2
	3
	   => NIL

## then

Collect some numbers.

	(loop for item = 1 then (+ item 10)
		  repeat 5
		  collect item)
	   => (1 11 21 31 41)

## Hash tables
Loop can iterate over keys, values, or both in a hash table. Look it up if you need it.

## Repeat

	(loop repeat 3 ;Prints 3 lines
		  do (format t "What I say three times is true~%"))
	What I say three times is true
	What I say three times is true
	What I say three times is true
	   => NIL

## while and until

A classic "while-loop".

	(loop while (hungry-p) do (eat))

UNTIL NOT is equivalent to WHILE.

	(loop until (not (hungry-p)) do (eat))

Collect the length and the items of STACK. Pop removes an item from
the stack.

	(let ((stack '(a b c d e f)))
	  (loop while stack
			for item = (length stack) then (pop stack)
			collect item))
	   => (6 A B C D E F)

Use WHILE to terminate a loop that otherwise wouldn't
terminate.  Note that WHILE occurs after the WHEN.

	(loop for i fixnum from 3
      when (oddp i) collect i
      while (< i 5))
	  => (3 5)

## always, never, thereis

These are used to get answers: is the condition _always_, sometimes,
or _never_ satisfied? For sometimes, the keyword is _thereis_. The
loop construct gives an answer of `T` or `NIL`.

Make sure I is always less than 11 (two ways).
The FOR construct terminates these loops.

	(loop for i from 0 to 10
		  always (< i 11))
	   => T

	(loop for i from 0 to 10
		  never (> i 11))
	   => T

If I exceeds 10, return I; otherwise, return NIL.
The THEREIS construct terminates this loop.

	(loop for i from 0
		  thereis (when (> i 10) i) )
	   => 11

I have omitted examples showing how always, never, and thereis
interact with finally.

## thereis complex examples

Here are two more complex examples using thereis.

### Mountain, give height

	(defstruct mountain height difficulty (why "because it is there"))
	(setq everest (make-mountain :height '(2.86e-13 parsecs)))
	(setq chocorua (make-mountain :height '(1059180001 microns)))
	(defstruct desert area (humidity 0))
	(setq sahara (make-desert :area '(212480000 square furlongs)))
	;First there is a mountain, then there is no mountain, then there is ...
	(loop for x in (list everest sahara chocorua)
		  thereis (and (mountain-p x) (mountain-height x)))
	   => (2.86E-13 PARSECS)

### Fermat's Last Theorem

The code below searches for a couterexample to Fermat's Last Theorem.

If you could use this code to find a counterexample to
Fermat's last theorem, it would still not return the value
of the counterexample because all of the THEREIS clauses
in this example return only T.

	(loop for z upfrom 2
		  thereis
			(loop for n upfrom 3 below (log z 2)
				  thereis
					(loop for x below z
						  thereis
							(loop for y below z
								  thereis (= (+ (expt x n)
												(expt y n))
											 (expt z n))))))

## Value Accumulation

There are many ways to group data into answers:

* append, appending, collect, collecting, nconc, and nconcing
* count, counting, maximize, maximizing, minimize, minimizing, sum, and summing

### intro example

Collect every name and the kids in one list by using
COLLECT and APPEND.

	(loop for name in '(fred sue alice joe june)
		  for kids in '((bob ken) () () (kris sunshine) ())
		  collect name
		  append kids)
	   => (FRED BOB KEN SUE ALICE JOE KRIS SUNSHINE JUNE)

(In the preceding example, note that the items accumulated by the collect and append clauses are interleaved in the result list, according to the order in which the clauses were executed.)

### collect
Collect all the symbols in a list.

	(loop for i in '(bird 3 4 turtle (1 . 4) horse cat)
		  when (symbolp i) collect i)
	   => (BIRD TURTLE HORSE CAT)

Collect and return odd numbers.

	(loop for i from 1 to 10
		  if (oddp i) collect i)
	   => (1 3 5 7 9)

Collect items into local variable, but don't return them.

	(loop for i in '(a b c d) by #'cddr
		  collect i into my-list
		  finally (print my-list)) ;Prints 1 line
	(A C)
	   => NIL

### append, nconc
Use APPEND to concatenate some sublists.

	(loop for x in '((a) (b) ((c)))
		  append x)
	   => (A B (C))

NCONC some sublists together.  Note that only lists
made by the call to LIST are modified. (NCONC is a destructive
concatenate. It is more efficient than ordinary concatenate.)

	(loop for i upfrom 0
		  as x in '(a b (c))
		  nconc (if (evenp i) (list x) '()))
	   => (A (C))

### count
The count construct counts the number of times that the specified expression has a non-nil value.

	(loop for i in '(a b nil c nil d e)
		  count i)
	   => 5

### sum
Sum the elements of a list.

	(loop for i fixnum in '(1 2 3 4 5)
		  sum i)
	   => 15

Sum a function of elements of a list.

	(setq series '(1.2 4.3 5.7))
	   => (1.2 4.3 5.7)

	(loop for v in series
		  sum (* 2.0 v))
	   => 22.4


### maximize, minimize

	(loop for i in '(2 1 5 3 4)
		  maximize i)
	   => 5

	(loop for i in '(2 1 5 3 4)
		  minimize i)
	   => 1

### with

Defines variables, like `let` or `let*`. **DANGER** not very
useful. Only runs once at the start of the loop.

* (sequential assignment, `let*`) second definition can depend on
  the first: a bunch of `with` statements 
* (parallel assignment, `let`) all assignments happen at the same
  time: `with` then lots of `and` sub-clauses.

A bunch of `with` clauses in a row cause the definitions ("bindings")
to occur in sequence. 

	(loop with a = 1
		  with b = (+ a 2)
		  with c = (+ b 3)
		  with d = (+ c 4)
		  return (list a b c d))
	   => (1 3 6 10)

One `with` using `and` to join the assignments cause definitions to
happen at the same time ("in parallel"). 

	(setq a 5
		  b 10
		  c 1729)
	(loop with a = 1
		   and b = (+ a 2)
		   and c = (+ b 3)
		   and d = (+ c 4)
		  return (list a b c d))
	   => (1 7 13 1733)

## Conditions: if, when, unless

	;;; Group conditional clauses into a block.
	(loop for i in numbers-list
		  when (oddp i)
			do (print i)
			and collect i into odd-numbers
			and do (terpri)
		  else     ;I is even
			collect i into even-numbers
		  finally
			(return (values odd-numbers even-numbers)))

	;;; Collect numbers larger than 3.
	(loop for i in '(1 2 3 4 5 6)
		  when (and (> i 3) i)
		  collect it)     ;it refers to (and (> i 3) i)
	   => (4 5 6)

	;;; Find a number in a list.
	(loop for i in '(1 2 3 4 5 6)
		  when (and (> i 3) i)
		  return it)
	   => 4

	;;; The preceding example is similar to the following one.
	(loop for i in '(1 2 3 4 5 6)
		  thereis (and (> i 3) i))
	   => 4

### Technical detail: end for nested if

Without the END marker, the last AND would apply to the
inner IF rather than the outer one.

	(loop for x from 0 to 3
		  do (print x)
		  if (zerop (mod x 2))
			do (princ " a")
			  and if (zerop (floor x 2))
					do (princ " b")
				  end
			  and do (princ " c"))

## finally

The FINALLY clause prints the last value of I.
The collected value is returned.

	(loop for i from 1 to 10
		  when (> i 5)
			collect i
		  finally (print i)) ;Prints 1 line
	11
	   => (6 7 8 9 10)

You can use values in a FINALLY clause to return more than one thing.
Example: Return both the count of collected numbers
as well as the numbers themselves.

	(loop for i from 1 to 10
		  when (> i 5)
			collect i into number-list
			and count i into number-count
		  finally (return (values number-count number-list)))
	   => 5 and (6 7 8 9 10)

