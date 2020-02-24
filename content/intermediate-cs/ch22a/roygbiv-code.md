---
title: "Roygbiv Code"
date: 2019-02-21T17:11:35-06:00
weight: 83
draft: false
#type: slide
#theme: white
---

We are going to write an encoding function that makes an image like a
bar code, but using colored rectangles insteada of bars.

<!--more-->

{{% figure src="school-phone.png" title="Encoded phone number" %}}

Each digit will map to a 30x70 rectangle. The colors of the digits 0
through 9 will be the usual rainbow: red, orange, yellow, green, blue, indigo, violet, and then three randomly chosen colors:

     (define rc7 (make-color 25 134 240))
     (define rc8 (make-color 121 143 37))
     (define rc9 (make-color 220 194 21))

For example, an input of 7510 to `encode` gives the code below.

{{% figure src="barcode-1.png" title="(encode 7510)" %}}

Write a function to create a color-based bar code.

## Answered questions

* You should ignore leading zeros.

## Intermediate

Got the encoder working? Write a decoder that takes in an image and
produces an integer.

