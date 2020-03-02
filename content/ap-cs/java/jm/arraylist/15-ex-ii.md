---
title: "A13. Exercises 2"
date: 2020-03-02T13:38:28-06:00
weight: 20
draft: false
#type: slide
#theme: white
---

1. Write a function that return an `ArrayList` with 25 random integers
   from -13 to 39 (inclusive).
   
2. Write a function `bubble1` that makes one pass through an
   `ArrayList`, swapping adjacent elements if the lower index one is
   greater than the upper index one.

        public static ArrayList<Integer> bubble1 (ArrayList<Integer> nums)`

    Example: with the list `{10,5,50,8,9}`, one pass through the array
    would swap 10 and 5, then leave 10 and 50 alone, then swap 50 and
    8, then swap 50 and 9. The output arraylist is `{5,10,8,9,50}`.
    
        
3. Write a function `mergeL1` that assumes the list `y` is in order
   from least to greatest, 
   and inserts `x` into a spot where the resulting list is still in order.

        public static ArrayList<Integer> merge1 (int x,
                                                 ArrayList<Integer> y)
    

    It is easy to write code that does not work. Make sure to test it!
    
        public static void test_mergeL1_helper(int x) {
            ArrayList<Integer> nums = new ArrayList<>();
            nums.add(5); nums.add(10); nums.add(15);
            System.out.println("=== TESTING: "+x+" ===");
            System.out.println(nums);
            System.out.println(merge1(x,nums);
        }
        public static void test_mergeL1() {
            test_mergeL1_helper(2);
            test_mergeL1_helper(8);
            test_mergeL1_helper(13);
            test_mergeL1_helper(20);
        }

4. The `rangeDel` function deletes all numbers between lower and upper
   (inclusive) anywhere they occur in the input ArrayList. The lower
   and upper parameters are values, not indices.
   
        public static void rangeDel(int lower, int upper,
                                    ArrayList<Integer> nums)

    
