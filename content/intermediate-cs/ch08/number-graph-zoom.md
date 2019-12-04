---
title: "Number Graph Zoom"
date: 2018-11-30T17:31:57-06:00
weight: 70
draft: false
#type: slide
#theme: white
description: "Small scale people coordinates on the x-axis with a big window."
---

A good graph of `(sin x)` would have x-people from -5 to 5 and y-people from -1 to 1. That is only a 10x2 window, too small to really see anything.

We want to graph the same function in a 300x200 window.

## Outline

We have a function that takes in people x-coordinates and puts out
people y-coordinates, so the infomation will flow as diagrammed below.

{{< mermaid >}}
graph LR;
   A[x-computer] --> B[x-people]
   B --> |func| C[y-people]
   C --> D[x-computer]
{{< /mermaid >}}

##

This means figuring out conversion functions.