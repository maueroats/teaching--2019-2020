---
title: "Strategy 3"
date: 2020-01-16T12:46:59-06:00
weight: 30
draft: false
#type: slide
#theme: white
---

1. The `E3` interface has a `void pickle()` method and a `int gc()`
   method. Write the complete `E3` interface.

2. There is nothing to do in this question, it just shows the
`TestStuff` message.

```java
public class TestStuff {
   public static void tester(E3 v) {
        System.out.println(v.gc());
        System.out.println(v.gc());
        v.pickle();
        System.out.println(v.gc());
        v.pickle();
        System.out.println(v.gc());
    }
}
```

3. The `E3A` class implements the `E3` interface. Make it behave
   according to the demo code below. You will need to write a
   constructor and some methods.
   
```java
    public static void demoA() {
        E3A x = new E3A(5);
        tester(x); // prints 5 5 7 9
    }
}
```

3. The `E3B` class implements the `E3` interface. Add the `demoB`
   method to the `TestStuff` class and make your `E3B` class behave as
   described. 

```java
public static void demoB() {
    E3B y = new E3B (3,7);
    tester(y); // prints 21, 21, 35, 49
    E3B z = new E3B (3,10);
    tester(y); // prints 30, 30, 50, 70
    E3B w = new E3B (5,10);
    tester(w); // prints 50, 50, 70, 90
}
```

4. The `E3C` class is a subclass of `E3B`. Add the `demoC` method to
   `TestStuff` and implement the `E3C` class.

```java
public static void demoC() {
    E3C y = new E3C (3,7);
    tester(y); // prints 21, 21, 21, 21
    E3C z = new E3C (5,10);
    tester(z); // prints 50, 50, 50, 50
}
```

5. The code below is placed in the `TestStuff` class. Without it,
   write the predicted result from each line.  If the given line is an
   error, indicate that and ignore the line.

```java
public static E3 bOnly(E3B w) {
    w.gc();
    return w;
}

public static void demoD() {
    E3B m = new E3B(4,5);   // line 1
    E3B p = new E3C(-2,30); // line 2

    E3 x;
    x = bOnly(m); // line 3
    tester(x);    // line 4
    x = bOnly(p); // line 5
    tester(x);    // line 6
}
```


6. Does this work? Explain precisely why or why not. Fix if possible.

```java
public static void demoE() {
    E3B n = new E3A(20);
    E3B x = bOnly(n);
    tester(x);
}
```
