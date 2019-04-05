# MergerSort-tutorial-in-Lisp

## Enviroment:SBCL 1.1.4.0.mswin.1288-90ab477
(Download at: [https://github.com/akovalenko/sbcl-win32-threads/wiki](https://github.com/akovalenko/sbcl-win32-threads/wiki) 
choose  [sbcl-1.1.4.0.mswin.1288-90ab477-x86-64.msi](https://github.com/akovalenko/sbcl-win32-threads/wiki))
## Running step:
1.	Open 命令提示字元 in Windows OS
2.	Find target file
3.	Input sbcl --script mergesort.lsp
## Program flow: 
1.	Read how many numbers are going to be inputted
2.	Read numbers and concatenate to “numbers”
3.	Call mergesort and print out
## Function explain:
MergeSort is implementation of divide-and-conquer. To sort whole numbers, we divide the list into half recursively until there are only 1 element for each of half. And then combine two smaller pieces at a time into bigger pieces with ascending order, choose the smallest number of two pieces adding to the new list.
  ### Code Explanation
  ### 1.	MergeSort:
  Condition 1: 
  Only 1 element is in Line => return the list
  Condition 2: 
  (1)	Split list “Line” into two list and call “mergesort” for each of them
  (2)	Use “merge” function to combine returned two list in ascending order
  ### 2.	Split
  (1)	Assign “middle” = length of sequence / 2
  (2)	Return list( list(0 : middle) list(middle + 1 : end))
 
 ## Lisp syntax
 ### ceiling:
`number &optional divisor => quotient, remainder
 ### destructuring-bind
 ### merge
