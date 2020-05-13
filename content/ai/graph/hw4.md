---
title: "Graph HW4"
date: 2020-05-13T10:57:07-05:00
weight: 240
draft: false
#type: slide
#theme: white
description: "Find the minimum weight vertex cover for a graph."
---

A [vertex cover](https://en.wikipedia.org/wiki/Vertex_cover)
is a subset of vertices to that every edge contains
at least one vertex from the cover.

## Minimal Vertex Cover

In this problem we are going to work with the vertex cover for a tree
only. You should not consider graphs that are not trees - in general
it is very hard to find a "good" vertex cover for a graph.

We will work on three variations of vertex cover for a tree. 

1. Minimum size 
2. Minimum weight, where weight(v) = [degree of the
   vertex v](https://en.wikipedia.org/wiki/Degree_(graph_theory)).
3. Minimum weight, where weight(v) is any positive number associated with
   the cost of including a vertex in your cover.

## Examples

The first thing to do is make up examples. If you can, write them in a
form you could turn in. 

* Tree of height 5: draw two different vertex covers. Don't make them
  mostly the same. Compare their size.
  
* Analyse your covers using the weight = degree of vertex.

* Arbitrary Weights I: do your own example like in class, just make up
  any numbers.
* Arbitrary Weights II: identify a situation in which a vertex can be
  chosen "locally" because it is definitely the best choice no matter
  what happens in the rest of the graph.
* Arbitrary Weights III: identify a situation where a vertex cannot be
  chosen "locally" because the best choice at that vertex depends on
  a choice that is made elsewhere in the graph (tree).
  

## Code

Plan first! You should not try to hack this out. Figure out an efficient way
to find at least one of the three vertex cover variations listed using
the examples you wrote. After you have something you think works,
_then_ code it.


