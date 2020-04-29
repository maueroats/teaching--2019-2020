---
title: "Graph HW 2"
date: 2020-04-29T10:51:44-05:00
weight: 220
draft: false
#type: slide
#theme: white
description: "Dual of a triangulation."
---

The format of a triangulation file is a sequence of vertices numbered
from 1, followed by a sequence of triangles given by three
vertices. Example: 

```
VERTICES 50
4.3943722230209445  15.415607000180948
17.65501201136214   4.661809724765199
3.137045515271147   13.337239648000661
[...]
TRIANGLES 89
1   4   5
1   3   4
1   3   8
1   8   46
[...]
```

The [dual graph](https://en.wikipedia.org/wiki/Dual_graph) of a graph
G has one vertex for each _face_ (triangle) in the 
original graph G, and one edge for every adjacent face (edge in
original graph). Note: in spite of what you see on Wikipedia, we will
not make a vertex for the "infinite face" = the outside of the graph.

Here is the [triangulation-reading
code](https://gist.github.com/maueroats/490b6cbaa8e8468716824fc3b6ea8649#file-triangles-py)
or [in my site](triangles.txt). 

Your job is to produce a graph (like the MGraph from class) that
represents the dual graph of a triangulation. 

Sample data: triangulations with [50 vertices](triangle-050.txt) and
[100 vertices](triangle-100.txt).




