---
title: "Ch3 Reading Guide 3.1-3.6"
date: 2019-09-13T21:00:44-05:00
weight: 10
draft: false
#type: slide
#theme: white
---

## Learning Guide

Of course you should read this chapter carefully. It is a quick
introduction to the major features of Common Lisp. There are
additional sources to read about lightly covered topics:

* [Sequences](https://www.cs.cmu.edu/Groups/AI/html/cltl/clm/node141.html).


## Questions

1. Pick what you believe are the three most important of the six
   "maxims"? List each and give a one sentence example.

2. What does the function `caddar` do, anyway?

3. Why is `find` preferred over a `loop`? Give two reasons.

4. Which two ways are offered for setting variable to a value? Is
   there a maxim that would apply to help you make the choice? How
   about overall guidance about using these ways in your program?
   
## Special Forms

5. List two definitions special forms that you do not know how to use
   right now. 
   
6. What do you think the `incf` and `decf` special forms do?

7. Under what circumstances does `(defvar x 5)` set the variable `x`
   to the value 5?
   
### Student 

8. Write the form to define a `student` structure that contains name,
   division, id, and an optional `home-phone` which is set to `nil` if
   it is not available.
   
9. Create a student with name DocMo, division A321, and id number 666321.

10. Create a student with your name, division, id number, and a home
    phone of 773-534-7500.
	
11. How can you test to see if a variable `v` holds a `student`?

12. Given the student from two exercises ago, how do you make a list
containing just the name and division number.

13. Set the division of `DocMo` to 934.

14. Which is more efficient, storing a list with (name, division, id,
    home phone) or using a structure? Explain.
	
## Conditionals

15. What is the most basic special form?

16. What form should you use to replace `(if good-friend nil
    (run-fast))`?
	
17. Given an example when the table on page 53 (pdf page 62) does not
    contain a perfectly accurate translation of the conditional
    form. Be specific.
	
18. Give one way to print a string.

19. Read the examples using `and` or `or` to run conditionals and then
    write an example that prints out "Go Fish" if the function `q19`
    is called with neither the color `'red` nor the suit `'clubs`.
	
    ```lisp
	(defun q19 (color suit)
	  ...)
```

20. Which special forms are preferred when the main purpose is to take
    an action? How about returning a value?

21. Given a bunch of tests in a `cond` that all evaluate to
    true, which value should be returned?

22. Suppose you want to perform different actions depending on
    whether an input `dk` is a number or a list. What special form do
    you use?
	
23. Write a function that doubles any number it is given and returns
    only the first element if given a list.

## Repetition

24. What is `mapc`? [Look it
    up](http://www.lispworks.com/documentation/HyperSpec/Body/f_mapc_.htm)
    and summarize.

25. What is the difference between `remove` and `delete`? List a few
    useful variants of `remove`.

26. How do you find the index of an element in a list? Why are there
    two possibilities? 

27. There is an important difference between the `length9` (page 62 /
    PDF 73) and `length10` (page 63 / PDF 74) functions. Carefully
    explain the difference and the implications this difference has
    for the memory usage of the two functions. (**Discuss.**)

## Other

28. What is the value of `(progn 1 2 3)`? 

29. Give an example of a situation where using `progn` is helpful.

30. What is the result of using the `magic` function below in `(magic
    (list 5 10 40 8))`? Explain carefully.

	```lisp
	(defun magic (numbers)
	  (* 3 
		 (let ((ans 5))
		   (dolist (x numbers ans)
			 (if (= x 1)
				 (return 42)
				 (setf ans (* ans x)))))))
	```

## Macros

31. Write what you understand a macro to be, in your own words. If you
    are not sure, write a question or two that you have about macros.
	
32. How do you get one step of expansion of a macro?

## Equality and Sequences (3.4-3.5)

33. There are five main ways to compare items for equality: `=`, `eq`,
    `eql`, `equal`, `equalp`. Briefly explain what each one does and
    how they differ.

34. How is `nth` different from all of the other "getter" functions in
    Section 3.5?
	
35. What is the difference between `assoc` and `rassoc`? 

36. What is a disadvantage of an association list?

37. What more complex data structure can perform the same basic
    function as an association list, but more quickly?
	
## Exercises

1. Do something different depending on the type of an input. Error if
   not one of the choices.
   
2. Truncate a list after the third element. (Note that this is a
   horrible idea.)
   
3. Exercise 3.1, page 56 (PDF page 67).

4. Exercises 3.3 and 3.4, page 70 (PDF page 81): printing an
   expression using dotted pair notation.

5. Write a function that takes in a hash table an a symbol, and
   returns the value from the hash table. Unless the symbol is
   `'DANGER`, in which case it removes the associations for `'MAD` and
   `'ROBOT` from the hash table.



