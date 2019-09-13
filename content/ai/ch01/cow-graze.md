---
title: "Cow Graze"
date: 2019-09-12T12:18:00-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

* A pasture looks like `(....)`
* Pastures either have grass (`'G`) and cows (`'COW`) or other
  sub-pastures inside them.
* The `GRAZE` function takes pastures with at least one cow and
  removes all of their grass. It leaves pastures without cows unchanged.

  Example: There are three pastures with grass in this example, two
  inside a pasture that only has sub-pastures.

```
|-------------|
|  (1)        |
| G COW COW   |
| G G G       |
|-------------|
||---|  |----||
||G G|  |G(3)||
||G G|  |COW ||
||G  |  |G G ||
||(2)|  |G G ||
||---|  |----||
|-------------|
```

   Written in Lisp:

```
(define 
  pasture-ex
    '((G COW COW G G G)
      ((G G G G G)
       (G G G COW))))
```



