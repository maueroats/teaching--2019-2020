---
title: "Chapter 3 Daily 05"
date: 2019-09-26T21:49:56-05:00
#weight: 
draft: false
#type: slide
#theme: white
---

1. How many numbers are between two given binary numbers, including
   the start and end number?

        bcount :: [Int] -> [Int] -> Int
        bcount [1,0,0,1,1] [1,1,0,1,0] == 8
        
2. Binary decimals: the binary number 110.101 means 

        2**2 + 2**1 + 2**(-1) + 2**(-3) == 6.625

    Haskell does not believe in negative exponents for integers (using
    `^`), but will happily do them for decimals (`**`). Check the type
    signatures... when the inputs to a function are integers, expect
    the output to be an integer as well.
    
    

