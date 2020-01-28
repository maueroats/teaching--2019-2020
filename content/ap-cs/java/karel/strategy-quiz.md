---
title: "Strategy Quiz"
date: 2020-01-22T13:17:53-06:00
weight: 45
draft: false
#type: slide
#theme: white
---

Write the interface or class in each question.

1. The `K` interface has the following methods:
   
   * `int n()`
   * `String s()`
   * `void t(int k)`
       
2. The class `M` implements the `K` interface.
The constructor takes in a String, an initial number, and a bump
number (`bumpnum`). 
In addition it has a `void bump()` method that 
has the same effect as `t(bumpnum)`.

```java
public static void testK(K x) {
    System.out.println(x.s());
    System.out.println(x.n());
    System.out.println(x.n());
    System.out.println(x.n());
    x.t(10);
    System.out.println(x.n());  
}
public static void testM(M y) {
    testK(y);
    y.bump();
    testK(y);
}
public static void demo1() {
    M x = new M("Good", 4, 100);
    testM(x); // Good 4 3 2 11
              // Good 110 109 108 117
}
```

3. The class `MN` is a subclass of `M` that behaves the same as `M`
   except it prints out "Very ___".
   
```java
public static void demo2() {
    MN x = new MN("Medium", 4, 100);
    testM(x); // Very Medium 4 3 2 11
              // Very Medium 110 109 108 117
}
```

4. The class `MM` is a subclass of `M`. The `bump` method of `MM` 
does the bump of `M` twice.

```java
public static void demo3() {
    MM x = new MM("Good", 5, 100);
    testM(x); // Good 5 4 3 12
              // Good 211 210 209 218
}
```


## All-in-one Tester

```java
public class StrategyQuiz {
    public static void testK(K x) {
        System.out.println(x.s());
        System.out.println(x.n());
        System.out.println(x.n());
        System.out.println(x.n());
        x.t(10);
        System.out.println(x.n());
    }
    public static void testM(M y) {
        testK(y);
        y.bump();
        testK(y);
    }
    public static void demo1() {
        M x = new M("Good", 4, 100);
        testM(x); // Good 4 3 2 11
                  // Good 110 109 108 117
    }
    public static void demo2() {
        MN x = new MN("Medium", 4, 100);
        testM(x); // Very Medium 4 3 2 11
        // Very Medium 110 109 108 117
    }
    public static void demo3() {
        MM x = new MM("Good", 5, 100);
        testM(x); // Good 5 4 3 12
    }
    public static void main (String[] args) {
        System.out.println("=== DEMO 1 ===");
        demo1();
        System.out.println("=== DEMO 2 ===");   
        demo2();
        System.out.println("=== DEMO 3 ===");
        demo3();
    }
}
```

Desired output:

```
=== DEMO 1 ===
Good
4
3
2
11
Good
110
109
108
117
=== DEMO 2 ===
Very Medium
4
3
2
11
Very Medium
110
109
108
117
=== DEMO 3 ===
Good
5
4
3
12
Good
211
210
209
218
```
