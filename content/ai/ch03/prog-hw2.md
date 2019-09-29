---
title: "Ch3 HW2"
date: 2019-09-29T07:32:55-05:00
weight: 120
draft: false
#type: slide
#theme: white
---

{{% use-mathjax %}}
$\newcommand{\abs}[1]{\lvert{#1}\rvert}$

The purpose of this homework is to practice working with loop. There is [starter code](hw2.lisp) to download, also available at the end of this document.

* (`one-more-mult`) Make sure you know how to use (mod x n) to figure out if x is
divisible by n. Write a function that takes in an integer and returns
true when the integer is one more than a multiple of 8.

* (`all-6-by-17`) Given a list of integers, return all of the elements that are
either greater than 100 or leave a remainder of 6 when divided by 17.

* (`long-words`) Given a list of words, return the number of words in the list that
  are longer than 6 letters.

* (`good-lists`) Given a list of lists `ys`, if a sublist y of ys begins with the
symbol `GOOD`, then put every element from the list y in the answer.

## Working with pairs

In all of the following problems, you are given a list of ordered
pairs of numbers, like `(list 5 12)`.

* (`x010`) Return a list of all of the x values that are in the interval [0,10].

* (`y200`) Return a list of all of the points whose y values are 
  either greater than 200 or less than -200.

* (`ptf`) Find the greatest value of $f(x,y) = x^2 + 3 y^2 - 2 x y$ using the
  points in the list.

* (`smd`) Find the smallest difference $\abs{x-y}$ in the list.

* (`aop`) If every point is on the parabola $y=x^2$ then return true (otherwise false).

* (`isfar`) If any point has $\abs{y - x^2} > 10$, then return true.

* (`not10x`) If no point in the list has $y = 10^x$, return true. 

## More

* (`xyzTrip`) Given a list of triples $(x,y,z)$, which we write `(list x y z)`, 
  return a list containing `(list x y)` for every point where $z=x^2+y^2$.

## Starter Code

{{< gist maueroats e4873a51813a3a5e6fb0d3c8a1b6b246 >}}
