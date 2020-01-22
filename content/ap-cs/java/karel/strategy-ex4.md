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
   
   * The start() method gives the first number to count from.
   * The next() method gives the next number in the sequence.
   * The done() method returns true when the count has reached the end number.

Calling `demoD()` produces output: `31 32 33 34 35 36 37 38 39 40`

Below is the `demoD` and `testH` method. The `demoD` method is
complicated just to show you how to write a 
conditional (if statement) in Java.

```java
public static void demoD() {
    H a = new H(30, 40);
    int s = 0; // choose "else" clause always
    if ( s < 0 ) {
        System.out.println("Small s, no work.");
    } else {
        testH(a);
    }
}
```

```java
public static void testH(H b) {
    int n = b.start();
    while (! b.done()) {
      n = b.next();
      System.out.println(n);
    }
}
```


7. Make a class `H4` extending `H`, altering the behavior so it counts
   up by 4. Test your class by modifying the `demoD` function or by
   using the short code segment below (put in the same class as your
   `testH`).
   
```java
public static void demoE() { 
    testH(new H4(20,60)); // print 24, 28, ..., 60
}
```
   
8. Modify your `H` class if necessary so that it resets to the
   beginning every time `start()` is called.

```java
public static void demoF() { 
    H x = new H(20,30);
    testH(x); // print 21, 22, ..., 30
    testH(x); // print 21, 22, ..., 30 again
}
```
   
