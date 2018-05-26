collaborators: Michael Henry and Ellen Desjourdy



How to run:

To run the first part of the project, call the function perfectNumbers with the input 1 (the starting number to look at) 0 (this is the start number) and 3 (or however many numbers you want to find)  and this will return with the first few perfect numbers.
(i.e. (perfectNumbers 1 0 3))



To run the second part of the project, call the function project3 with input 2 (because 1 is not factorable so the input begins with any number greater than 1) 0 (as the start number) and 999 (the end number). The following call will return all of the numbers between 2 and 1000 as either a deficient number, an abundant number, or a perfect number.
(project3 2 0 999)


Description:

Our main approach was to break up the program into small, but easy to follow, methods that would come together and produce a perfect number (or list if something was abundant or deficient). Since this project required us to use functional programming, we had to learn how to apply it to this program and what the factors are that make something a functional program. Also, another approach that we had is we used what we knew about other languages and how we’ve used recursion in C and Java and how we could apply it to this program.



To do the extra credit, one test that we tried is based off of the idea of memoization. Based on the Wikipedia article, it says under functional programming using the call by name evaluation would in general shorten the timespan. In the file extracredittest.rkt, we tried using the idea that the methods would only be used when the function was called because they were all nested within the specific function. This proved to be not as efficient as our original coding. 



This file is: extracredittest

Another way we improved our coding was by having the perfect number calculator add 2 to each number it checks rather than one. This is because all perfect numbers are even. This is able to be proven due to the fact that all odd numbers are deficient. They only have two sets of factors, 1/itself and another. These other factors will always be more than one less than the original number when added together, therefore making the number deficient. We were also able to improve the efficience of part 2 by rearranging some conditionals. Since racket stops evaluating a cond when it reaches a true, having the most common conditionals first made the program run much faster.

This file is: project3EC

If this proof is not accepted the original which has the same output but increases by one rather than two is: project3


