---
title: "AP CS Summer Assign"
date: 2020-06-17T11:58:07-05:00
weight: 20
draft: false
#type: slide
#theme: white
---

You should review the [AP CS Skills Intro]({{% relref
"skills-intro.md" %}}) for the purpose of this assignment and
collaboration rules.

You can do this assignment at any time in the summer. Unlike a math
class, I do not believe it will be better to do the work in August
near when school starts. Spend some time on it and make something
good.


## Project Description

You have two choices: Reversi (Othello) or Lights Out.


### Reversi

Write the two player board game known as
[Reversi](https://en.wikipedia.org/wiki/Reversi) or Othello. I will
refer to this game as "Reversi" since that is the
older, non-trademarked name, but the rules I have in mind are the
modern rules for Othello.

Follow the initial setup and rules as described for Othello in the
Wikipedia page.

{{% figure src="reversi.png" %}}

I have written up [details about writing Reversi]({{% relref
"reversi-walkthrough.md" %}}), including all of the parts that I found
particularly troublesome. Consult it if you need help. Here is a short
demo video of how Reversi could work.

{{% youtube vAWcwxsJyTo %}}

### Lights Out

You can play [Lights Out
online](https://www.neok12.com/games/lights-out/lights-out.htm). The
Wikipedia page has [lights out rules](https://en.wikipedia.org/wiki/Lights_Out_(game)).

{{% figure src="lights-out.png" %}}

This game is easier to program than Reversi, so I am leaving you with
fewer (no) details. If there are enough questions, I will add an
explanation here.


## Exceptions

Write the game in any language that you know. A text-based user
interface is perfectly acceptable. If you know Racket, it should be
easy to write a graphical interface. 

<!-- You could learn a new language
like Python over the summer and write you game in Python. (Perhaps
using PyGame, which can be set up just like a big-bang. -->

You may choose a different project, just review the list of skills
linked at the start of the document.

## Notes

My favorite advanced tools in Racket: `struct-copy`, `for/fold`,
and `match`. Check the Racket Guide.

