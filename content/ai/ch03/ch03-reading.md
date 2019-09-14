---
title: "Ch03. Reading Guide"
date: 2019-09-13T21:00:44-05:00
weight: 10
draft: false
#type: slide
#theme: white
---

1. What are the six "maxims"? List each and give a one sentence example.

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
	
## Exercises

1. Do something different depending on the type of an input. Error if
   not one of the choices.
   
2. Truncate a list after the third element. (Note that this is a
   horrible idea.)
   
3. Exercise 3.1, page 56 (PDF page 67).




