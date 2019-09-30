---
title: "Chapter 3 Daily 05 HW"
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
        
2. (SKIP, NO QUESTION) Binary decimals: the binary number 110.101 means 

        2**2 + 2**1 + 2**(-1) + 2**(-3) == 6.625

    Haskell does not believe in negative exponents for integers (using
    `^`), but will happily do them for decimals (`**`). Check the type
    signatures... when the inputs to a function are integers, expect
    the output to be an integer as well.

3. (`and' :: Int -> Int -> Int`). Helper function. Give 1 if both
    inputs are 1, otherwise 0. 
    
3. (`bitwiseAnd`) Given two binary integers `a` and `b` (represented
   as lists of 0 and 1), produce the
   binary number given by lining up the ones places and the then
   "and"-ing the digits of `a` and `b` together. 
   
4. (`bitwise`) Given a binary operation (`op :: Int -> Int -> Int`) and two
   binary integers, create a number by performing the operation bitwise
   as in the previous exercise. The shorter number should be padded
   with zeros to be the same length as the long number.
   
5. `txtToBin :: String -> [[Int]]`. Translate a string into a list of
   binary numbers using the location each character is found in the
   (abbreviated) list below. If a character is not found, produce the
   empty list to represent it. 

        A-Za-z0-9[space].?

6. `binToMessage :: [[Int]] -> [Int]`. Concatenate all of the binary
   numbers into one long string, but make sure each binary number is 6
   digits. 

7. `msgDecode :: [Int] -> String`. Now decode the big binary number,
   changing it back into text.

8. `encrypt :: String -> String -> String`. The encrypt function takes
   in a message string and a key string. The encryption lines up the
   letters in the message and the string, changes the characters into
   binary numbers, joins the binary numbers with `xor`, and then
   changes the resulting number back into a string. The string will be
   nonsense.
   
9. `decrypt :: String -> String -> String`. Given an encrypted
   message and a key, reverse the encryption process. This is kind of
   tricky; try just re-encrypting the message.
