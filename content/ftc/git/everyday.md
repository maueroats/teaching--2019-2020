---
title: "Everyday Git"
date: 2018-02-11T07:33:00-06:00
draft: false
weight: 20
tags: 
 - git
#type: slide
#theme: white
---

## Everyday Commands

All of these need to be run in the karel-* directory:

* `./save-it`
* `./update`: git pull from the upstream repository. 
* `git pull`

## Merge Conflicts

Sometimes you will modify a file at home without having saved (pushed)
your changes at school. This causes a dreaded "merge conflict" when
you update. 

### Simple Merging

If you are lucky, you are at school and you know that you
just want to use the code from home (the "incoming code" from the pull). 
In that case, you should do:

    git checkout --theirs karelBasic.drjava

Of course, replace `karelBasic.drjava` with the names of the files with
the merge conflicts.
The converse, keeping the "local" changes, not the incoming ones, is the `--ours` flag.

    git checkout --ours ImportantFile.java
    
### Advanced Merging

When the problem is more difficult, edit the file with NotePad++ and you should see
the "ours" and "theirs" sections marked off by a bunch of `<` `=` and `>` signs. Pick
the code you want to keep and delete the rest.

    @@ -2,7 +2,11 @@ import java.io.*;

     public class Merging {
         public Merging () {
    <<<<<<< HEAD
             System.out.println("Merging object was not constructed fast enough to avoid conflict!!");
    =======
            System.out.println("Merging object is being constructed!!");
    >>>>>>> 36215863faef38cac7822b290a893ce1e150420c
         }
     }

After deleting the markers and duplicated code, add and commit.

