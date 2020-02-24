---
title: "22a. Hangman Images"
date: 2018-03-15T13:20:05-05:00
weight: 991
draft: false
#type: slide
#theme: white
description: "How to load a sequence of images into DrRacket."
---

Goal for the day: produce a sequence of images to use for "hangman" and load it into Racket. 


## Image sequence

Draw a sequence of images `hang-0.png`, `hang-1.png`, etc., with the appropriate number of parts of the person filled in. Use "File -> Export as..." to save each file with a different name. 

Tools:

* Microsoft Paint on Windows
* [Paintbrush](https://paintbrush.sourceforge.io/) ([download](https://sourceforge.net/projects/paintbrush/files/latest/download?source=files)) on Macintosh. You will need to hold down Control when you click on the application to allow it to open for the first time.
* [Gimp](https://www.gimp.org/) on Linux. 

## Make a Racket function

1. Load images into Racket.
2. Write a function that takes in the number of mistakes and returns the correct image of the gallows.

The best way to load an image from a file is to use `bitmap/file`. 

Examples:

* `(bitmap/file "hang-0.png")`
* `(bitmap/file "pics/hang-1.png")`

{{% notice note %}}
For the simplest loading, save the Racket file in the same folder as your images. "Untitled" programs will not find your images - save!
{{%  /notice %}}


## Why?

The only cases of file corruption I have seen involve large images
being pasted into DrRacket files. Keeping the images in separate files
prevents that problem.

