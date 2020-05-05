---
title: "Graph HW3"
date: 2020-05-05T10:54:28-05:00
weight: 230
draft: false
#type: slide
#theme: white
description: "Find an independent vertex cover for a graph."
---
{{% use-mathjax %}}

The notation graph $G=(V,E)$ means the graph has vertex set $V$ and
edge set $E$.

1. A _vertex cover_ of a graph $(V,E)$ is a subset $V'$ of vertices so that every
   edge in the graph contains at _least one_ vertex from $V'$. Given a
   graph, produce a minimum size vertex cover for it.
   
2. An _independent set_ of a graph is a subset $W$ of the vertices
   so that no edge contains both vertices from $W$. 
   
   Implement an efficient algorithm for deciding whether a graph has a
   vertex cover that is also an independent set.
