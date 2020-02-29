---
title: "22a. Recursion Self Quiz"
date: 2018-03-09T10:16:43-06:00
weight: 93
draft: false
#type: slide
#theme: white
description: "A brief quiz to make sure you understand recursion."
---

`draw-cats`: string -> image

Draw one cat for every time the word "cat" appears in the string.

   {{% figure src="cat.png" title="(draw-cats \"nyan cat\")" %}}
   {{% figure src="catcat.png" title="(draw-cats \"cat dog cat\")" %}}

{{% notice note %}}
I have had problems with tests failing even though the images are identical. 
I found that scaling the image in Racket caused the problem.
Now I do not `scale` the size of the images I use in my tests.
{{% /notice %}}

