---
title: "Typed Resources"
date: 2019-05-09T23:16:10-05:00
weight: 900
draft: true
#type: slide
#theme: white
description: "One stop for a short summary of all Typed Racket information."
---

1. Install `2htdp-typed` from the menu File -> Install Package...
2. From the [Typed Structures]({{% relref "typed-structures.md" %}})
   page, download:

    * `posn-util-typed.rkt` 
    * `picturing-programs-typed.rkt`
4. All files begin with the lines:

		#lang typed/racket
		(require "picturing-programs-typed.rkt")
	

## Aside

You can change the line that starts your programs by editing the text
in the location Language -> Choose Language... -> "Show Details" Button -> Automatic
#lang line.

## Known issues

You cannot currently take apart a color using `color-red` and friends. 

