---
title: "Ch4 HW2"
date: 2019-10-14T16:29:52-05:00
weight: 120
draft: false
#type: slide
#theme: white
---

In this problem set we are going to develop a version of the General
Purpose Solve that fixes the "not looking after you do not leap"
problem. This requires a redesign.

* `achieve-all`: Check each goal in turn, trying to achieve it with
  `achieve-one`. 
* `achieve-one`: Given a single goal:

      1. find all of the ops that could result in gaining that goal;
      2. attempt to satisfy the preconditions of that op
      3. once preconditions are satisfied, apply the operation and
         then
      4. **recursively** attempt to fulfil all of the rest of the
         desired goals **before** returning success.

The key here is to continue looking for a complete solution before
taking any irrevocable steps.

## Utility Functions

[Testing code for utilities](test-basic).

* `(remove-* subtract all)`: Return items from the list ALL that are
  not in the list SUBTRACT.

* `(member-* x xs)`: Test if `x` is an elements of `xs` using `equalp`.

* `(all-achieved wanted got)`: if WANTED is a subset of GOT, return
  GOT, otherwise return NIL.

* `(apply-op state op1)`: Append the traits gained, remove the traits
  lost in the operation. (`op1` is a struct of type `op`)

* `(appropriate-p op1 goal-list)`: True if OP1 produces a goal in
  GOAL-LIST. 
  
* `(find-appropriate-1 ops goal)`: A list of every op from the OPS
  list that lets you (immediately) gain the GOAL.

## Debugging

There is some already-written [code for debugging]({{% relref
"debugging" %}}).

## Signatures for Achieve Functions

The header for `achieve-all` follows. I have made it take in optional
arguments for the goal stack, the ops, and the achieve-one
function. If you are reading this without knowing about "mocking",
please go [read about mocking now]({{% relref "mock" %}}).

    (defun achieve-all (state goals
                        &key (achieve-one #'achieve-one)
                          (goal-stack nil)
                          (ops *test-big-ops*))
        nil)

The `achieve-one` function keeps track of the stack of goals currently
being worked on, as well as the goals that remain to be completed.

    (defun achieve-one (state goal
                        &key (remaining-goals nil)
                          (goal-stack nil)
                          (ops *test-big-ops*)
                          (achieve-all #'achieve-all))
        nil)


An example call to achieve one would look like this:

    (achieve-one state (first goals) 
                 :remaining-goals (rest goals)
                 :achieve-all #'mock-achieve-all)

## Achieve all

The `achieve-all` function should do all of the following:

1. Just return the state if all goals are already satisfied.
2. Examine each of the goals in turn, using `achieve-one` to attempt
   to achieve that particular goal. In addition, `achieve-one` should
   be told the remaining goals.
3. If the call to `achieve-one` succeeds, make sure that all goals are
   really satisfied and then return state as an answer. (You could be
    careful and continue to attempt more goals if a supposedly correct
   solution fails to check, but even this method is pretty good.)
4. You should add lots of debugging output so you can trace what the
   program is doing. (See the debugging section.)
   
There is [code to test your achieve-all function](test-achieve-all),
including already written mock functions.


## Achieve One

This is possibly the most complex function, write and test it
carefully. Make sure you think through everything that should occur.

1. Give up if being asked to complete a goal that you have already
   attempted in the goal stack. (This could become more sophisticated
   if you kept track of goals you had accomplished vs were just
   working on.)
2. Think: what will happen if you are being asked to accomplish a goal
   that you already have completed? (See the eating desert example in
   the book.) Save this idea until other parts work.
3. Examine every appropriate operation, one by one. 

    * Attempt to use `achieve-all` to achieve the prerequisites of the
   op. What should happen to the `goal-stack`?
    * Apply the operation to update the state.
    * Use `achieve-all` to attempt to complete all of the remaining
      goals, returning the result of that call as your answer.

Advice: annotate everything that happens in your `achieve-one`
function with debugging output so you can verify that your code is
doing what you think it is doing.

There is [achieve-one testing code](test-achieve-one), including a
mock function. It should do more. Add to it when you have problems.


## Final Testing

You are responsible for submitting tests from the book or of your own
devising to show that your code works. In particular, include:

* Exercise 4.3
* Section 4.16 the example from page 143 (PDF page 152).
* Some block moving example.
* The Sussman Anomaly from page 142 (PDF page 151).
