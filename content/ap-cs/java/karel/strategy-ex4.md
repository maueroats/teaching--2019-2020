---
title: "Strategy 4"
date: 2020-01-17T13:10:42-06:00
weight: 40
draft: false
#type: slide
#theme: white
---

Write the interface or class in each question.

1. The interface `G` has methods `String who()`, `int when()`, and
   `void walk(int howlong)`.

2. Copy or type the tester class.

```java
public class TestG {
  public static void tester(G x) {
    System.out.println(x.who());
    System.out.println(x.when());
    x.walk(5);
    System.out.println(x.when());
  }
}
```

3. The class `G1` implements the `G` interface. Use `+` to join strings.

```java
public static void demoA() {
    G1 x = new G1("Samuel",10,30);
    tester(x); 
    // Output: "Big Samuel" 1030 1035
}
```

4. The class `G2` implements the `G` interface. When asked to walk for
   N minutes, these objects actually take 2N minutes.
   
```java
public static void demoB() {
    G2 y = new G2("Jordan", 8, 20);
    tester(y);
    // Output: "Little Jordan" 820 830
}
```

5. The class `G2X` extends `G2`. The name changes to add "Fast" but
   nothing else changes.
   
```java
public static void demoC() {
    G2 y = new G2X("Jordan", 8, 20);
    tester(y);
    // Output: "Fast Little Jordan" 820 830
}
```

6. Unrelated to the above, create a class `H` that counts from its
   lower limit to its upper limit. Methods: `int start()`, `boolean
   done()`, `int next()`.

```java
public static void testH(H b) {
    int n = b.start();
    while (! b.done()) {
      n = b.next();
      System.out.println(n);
    }
}
```

This `demoD` method is complicated just to show you how to write a
conditional (if statement) in Java.

```java
public static void demoD(int s) {
    H a = new H(30, 40);
    if ( s < 0 ) {
        System.out.println("Small s, no work.");
    } else {
        testH(a);
    }
}
```

Calling `demoD(1)` produces output: `30 31 32 33 34 35 36 37 38 39
40`. Calling `demoD(1); demoD(1);` would produce the same output twice.

7. Make a class `H5` extending `H`, altering the behavior so it counts
   up by 4.
   
