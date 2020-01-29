---
title: "Strategy 6"
date: 2020-01-28T15:43:56-06:00
weight: 60
draft: false
#type: slide
#theme: white
---

## Principles

* Do not repeat variables from the superclass.
* Do not repeat functions from the superclass.
* Override little functions instead of rewriting big functions.
* When the superclass has a constructor, make sure you call it.

## Almost Simple

1. Make an interface `Booter` that has one functions: `int foot(int x)`.
2. Make an abstract class `F` that implements the `Booter`
   interface. 
   
   * Private ints `p` `q` and String `s`.
   * The constructor takes in two int inputs, and a String,
   and remembers all of them. 
   * When `foot(1)` is called, the class increments the int (adds one)
     and returns it.
   * When `foot(2)` is called, the integer remembered is altered to be
     ten times its current value.
   * The method `String getStr()` returns the remembered string.
   * The method `String grokk()` is not described.
   * There is a method `void grind(int k)`:
   
        public void grind (int k) {
            while(k>0) {
                System.out.println(grokk()+p+s+q);
                k -= 1;
            }
        }

3. Make a class `GG` that extends `F`. 

    * The constructor takes the same information.
    * The `grokk()` method returns `getStr() + getStr()`.

4. Make a class `HH` that extends `F`. 

    * The constructor takes in a single int `n` and uses that to determine
      both of the numbers needed by the `F` constructor: `2*n` and
      `3*n`. Use "HH" for the value of the string passed.
    * The `grokk()` method returns "H" always.

## More Complex

1. Make an interface `A` containing the following methods:
   
   * `void af()`
   * `int  agg()`
   * `int  ahhh(int x);`

2. Write a class `B` that implements the `A` interface with the
   following behavior:
   
   * `B` remembers two int variables (`m` and `n`)
   * The constructor for `B` takes in one int and sets `m` to that
     number and `n` to 5.
   * The `af()` function sets `m` to `n`.
   * The `agg()` function gives the product of `m` and `n`.
   * The `ahhh(int x)` increases `n` by `x` and then returns `m`.

3. Write a class `C` extending `B`. 

    * The `C` constructor takes in only one int `n`, and uses `10*n`
      as the input to the `B` constructor.
    * The `ahhh(int x)` function in `C` does the same with as the
      `ahhh(int x)` function in `B`. However, it keeps track of how
      many times it was called and returns the number of times it was
      called.


[Testing code for the A interface](ATest.java).

      
