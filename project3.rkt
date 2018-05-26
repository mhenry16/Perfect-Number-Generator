;Michael Henry and Ellen Desjourdy

;Determines if a number is a factor of another
(define (factor n1 n2)
  ( = (modulo n1 n2) 0))

;Calculates the sum of all factors of a number
(define (sumOfFactors n f)
  (if (not (= n f))
      (+ (addFactor n f) (sumOfFactors n (+ 1 f)))
      0
      ))

;Evaluates to the given number if the number is a factor
;Otherwise evaluates to 0
(define (addFactor n f)
  (if (factor n f)
      f
      0))

;Checks if a number is perfect
(define (isPerfect n)
  (= (sumOfFactors n 1) n))

;Checks if a number is abundant
(define (isAbundent n)
  (> (sumOfFactors n 1) n))

;Checks if a number is deficient
(define (isDeficient n)
  (< (sumOfFactors n 1) n))

;Main function which is ran to find perfect numbers (part 1)
;x should be the number at which the user wishes to start trying to find perfect numbers at
;start and stop are the bounds for the amount of perfect numbers attempting to be found
;stop - start = the number of perfect numbers that are trying to be found
;For the example the prompt gives the command line should be (perfectNumbers 1 0 3)
(define (perfectNumbers x start stop)
  (if (not(= start stop))
    (if (isPerfect x)
        (perNum x start stop)
        (perfectNumbers (+ x 1) start stop)))
  (void))

;Function to print the perfect numbers, when this happens start is increased to limit the
;amount of numbers being searched for
(define (perNum x start stop)
  (print x)
  (println " is a perfect number")
  (perfectNumbers (+ x 1)(+ start 1)stop))

;Function to print the perfect numbers, when this happens start is increased to limit the
;amount of numbers being searched for
(define (perNum1 x start stop)
  (print x)
  (println " is a perfect number")
  (project3 (+ x 1)(+ start 1)stop))

;Function to print the abundant numbers, when this happens start is increased to limit the
;amount of numbers being searched for
(define (abunNum x start stop)
  (print x)
  (println " is an abundant number")
  (project3 (+ x 1)(+ start 1)stop))

;Function to print the deficient numbers, when this happens start is increased to limit the
;amount of numbers being searched for
(define (defNum x start stop)
  (print x)
  (println " is a deficient number")
  (project3 (+ x 1)(+ start 1)stop))

;Main function which is ran to evaluate wether numbers are perfect, abundant, or deeficient (part 2)
;x should be the number at which the user wishes to start testing numbers at
;start and stop are the bounds for the amount of numbers attempting to be found
;stop - start = the number of numbers that are trying to be found
;For the example the prompt gives, the command line should be (project3 2 0 999)
(define (project3 x start stop)
  (if (not (= start stop))
      (cond [(isPerfect x) (perNum1 x start stop)]
        [(isAbundent x) (abunNum x start stop)]
        [(isDeficient x) (defNum x start stop)]))
      (void))
        
