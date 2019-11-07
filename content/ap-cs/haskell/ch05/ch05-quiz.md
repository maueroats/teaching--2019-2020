---
title: "Chapter 5 Quiz"
date: 2019-11-07T13:23:13-06:00
weight: 200
draft: false
#type: slide
#theme: white
---

Write each of the following, using nothing but "stone age" tools:
guards, patterns, `:`, `++`. No length, head, tail, etc.

1. `myintercalate :: String -> [String] -> String`. Given a separator
   and a list of strings, create a string containing the separator in
   between each of the strings (but not before the first or after the last).
   
        myintercalate ", " ["Witch","Bat","Broom"] == "Witch, Bat, Broom"
        
2. `myfindGE :: Int -> [Int] -> [Int]`.  a list of
   everything greater than or equal to the first argument.
   
        myfindGE 5 [3,13,8,4,9] == [13,8,9]



