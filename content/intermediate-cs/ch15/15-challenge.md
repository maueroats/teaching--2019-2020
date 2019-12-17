---
title: "15. Another Challenge"
date: 2018-12-15T16:58:14-06:00
weight: 25
draft: false
#type: slide
#theme: white
description: "A beautiful image made with a conditional in build-image."
---

{{% notice warning %}}
Make sure you have done the warm-up [conditional patterns]({{% relref
"15-cond-patterns" %}}) before this!
{{% /notice %}}

* Pick two centers, say (300,150) and (310, 150).
* Use a big 500x300 canvas.
* Colors:

    * _magenta_ when the distance to both centers is less than 15
    * _red_ when the distance to left point is less than 15
	* _blue_ when the distance to right point is less than 15
	* _white_ when the distance to either point is less than 30
	* _gray_ otherwise

    {{% figure src="ripple-warmup.png" %}}

* Move the centers to (175,150) and (325, 150). Repeat the pattern by reducing
  distances to less than 30 by using remainder. 

    {{% figure src="ripple.png" %}}


