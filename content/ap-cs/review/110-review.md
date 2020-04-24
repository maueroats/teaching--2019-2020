---
title: "110 Review"
date: 2020-04-16T10:53:40-05:00
weight: 110
draft: false
#type: slide
#theme: white
description: "Dog class, working with a List of Dog."
---

ArrayList review: given a `List` of `Dog`, modify the list so that 

* dogs whose name begin with A through M should get 1 year older
* dogs with names beginning with N or later are removed from the list
* dogs that are at least 25 years old are removed from the list

## Dog class

The basics of constructors, `toString`. You should be able to write
this class.

```java
class Dog {
  private String name;
  private int age;

  public Dog(String n, int a) {
    name = n; age = a;
  }

  public String getName() { return name; }
  public int getAge() { return age; }
  public void setAge(int n) { age = n; }
  public String toString() { return "[Dog "+name+" age=("+age+")]"; }

}
```

## Skeleton
Put your solution in this skeleton so you can run it to see if it works.

```java
class Main {
  public static void main(String[] args) {
    Dog a = new Dog("a", 5);
    Dog b = new Dog("peeps",10);

    Dog bb = new Dog("peeeeeps",11);
    Dog c = new Dog("freddy",50);
    Dog e = new Dog("boss", 8);
    ArrayList<Dog> dogs = new ArrayList<>();
    dogs.add(a); dogs.add(b); dogs.add(bb); dogs.add(c); dogs.add(e);

    for(Dog d: dogs) {
      System.out.println(d);
    }
  }
}
```
