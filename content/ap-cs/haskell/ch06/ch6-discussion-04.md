---
title: "Ch6 Discussion 04"
date: 2019-11-19T15:44:39-06:00
weight: 64
draft: false
#type: slide
#theme: white
---

Learn: `scanl`.

Find the first 40 partial sums of the sequence 1+1/2+1/3+1/4+... by
using `scanl`.

## Exercises

1. Take in a list `[(Float,Bool)]` of `(gpa, admitted)` student data, find all of the
pairs where the student was admitted with a gpa of less than 3.0.

2. Shopping. Given $200 and a list of `Float` prices of items, find
   
   a. How much money remains after buying each item possible, in order
   from left to right.
   
   b. A list of how much you have at the start, and then after each
   item whether or not it was purchased.
   

3. Progress Bar. Given a list of integers (download sizes), produce a list of strings
   of 'X' indicating what percent of the total number has been
   downloaded so far (so *cumulative* percent).
   
   
