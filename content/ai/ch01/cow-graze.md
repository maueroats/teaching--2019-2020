---
title: "Ch1 HW3: Cow Graze"
date: 2019-09-12T12:18:00-05:00
weight: 40
draft: false
#type: slide
#theme: white
---

* A pasture looks like `(....)`
* Pastures either have grass (written `'G`) and/or cows (written `'COW`), or other
  sub-pastures inside them.
* The `GRAZE` function takes pastures with at least one cow and
  removes all of their grass. It leaves pastures without cows unchanged.

## Assignment

Write the `GRAZE` function. 

Extra credit: cows in a pasture without at least one grass die (are
removed), leaving only the empty pasture.

## Example

  There are three pastures with grass in this example, two
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



## Tests

Cow is C, grass is G.

```
(define-test test-graze
  "Make sure the grazing works."
  (assert-equal '(C C) (graze '(G C C G G)))
  (assert-equal '((G G G G) (C C))
                (graze '((G G G G) (G C G G C))))
  (assert-equal '((C C)
                  ((G G G G)
                   (C C)))
                (graze '((G C C G G)
                        ((G G G G)
                         (G C C G G))))))

```
