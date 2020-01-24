---
title: "Strategy Override"
date: 2020-01-23T12:07:54-06:00
weight: 60
draft: false
#type: slide
#theme: white
---

An abstract class is like an interface except you can include
code. Since it is a class, the rule of "you can only extend one class"
applies, so it actually has a different job than an interface even
though it looks similar.

1. Make an abstract class `Q` with:

    * Constructor that takes in the `String` favorite food.
    * Abstract methods `void eat()`,
   `void washHands()` and `void brushTeeth()`. 
   * Concrete method: `void lunch()` which does wash hands and eat. 
   * Concrete method: `void dinner()` which does wash hands, eat, and
     brush teeth.
   * A `String ff()` method to get the favorite food.

2. Create a class `R` extending `Q`.
   
    * Constructor takes in the favorite food.
    * Wash hands prints out "hands are clean"
    * Brush teeth prints out "happy teeth"
    * Eat prints out "Crunch crunch crunch"

3. Create a class `RR` extending `R`.

    * Constructor takes in a favorite food.
    * Eat is changed so that it prints out "Cheerios" the first time
      it is called, "Sandwich" the second time, and the favorite food
      every time after that. 
      
4. Create `RRR` extending `RR`.

    * Favorite food is always "pasta".
    * Instead of washing hands it prints "my hands are clean enough".

5. Tester/puzzle code:

```java
public static void testQ(Q x) {
    x.lunch();
    x.dinner();
}
public static void tester() {
    RR x = new RRR();
    R y = new RR("Frijoles");
    R z = new R("Banana cream pie");
    
    testQ(x);
    testQ(y);
    testQ(z);   
    
}
```
