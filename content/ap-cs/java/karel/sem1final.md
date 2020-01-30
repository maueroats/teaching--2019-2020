---
title: "AP CS 2019-2020 Semester 1 Final"
#date: 2020-01-30T07:25:43-06:00
weight: 100
draft: true
#type: slide
#theme: white
---

You must write everything on this final from scratch, using only the
information contained in your brain. You may not use your own old code or get
help from other people (including Stack Overflow). 

1. Write the interface `K` which represents something that moves and
   burns calories. It contains the `int burnRate(int pace)` and `int
   gone(int pace, int miles)` methods.
   
2. Write an abstract class `L` that implements the `K` interface. 

   * An instance variable to store the `int` amount of energy.
   * A constructor that takes in the amount of energy and remembers
     it.
   * The `burnRate` method is not specified in this class.
   * The `gone` method should compute how much energy is going to be
     used by finding the product of pace, miles, and the `burnRate` at
     that pace. If that amount is greater than the amout of energy the
     object has, return -1. Otherwise return that amount of energy.
     
3. Write a concrete class `LL` that is a subclass of `L`. 

    * Instance variables `int weight` and `int maxpace`.
    * Constructor takes in weight, maximum pace, and calories of
      energy that the object has.
    * The `burnRate` method returns 0 if the requested pace is greater
      than `maxpace`, otherwise returns `weight/10`. 
      
4. Make a class `P` unrelated to the above.

```java
public class P {
    private int x, y;
    private String s;
    public P(int xx, int yy, String ss) {
        x=xx; y=yy; s=ss;
    }
    public String name() {
        return s;
    }
    public int xy() {
        // give the product of x and y as an answer
        // you write
    }
    public void delta(int dx, int dy) {
        // increase x by dx and y by dy.
        // you write
    }
}
```

5. Write a class `Q` with `P` as a superclass.

    * `Q` also contains an instance variable `int step`
    * The constructor for `Q` takes in two numbers, `w` and the
      step. It uses `w` to compute both x (five more than w) and y
      (five less than w). 
    * The `delta` method is modified so that it will only change `x`
      and `y` if the change of x is less than 3 (not in absolute
      value, to make it easy), and also the change in y is less than 5.
    * `Q` contains methods `void stepX()` and `void stepY()` that
      change `x` and `y` (respectively) by the `step`.
