;;;; factorial.clj calculates factorials
;;;;
;;;; Input: n, an integer
;;;; Precondition: n > 0
;;;; Output: The factorial of n
;;;;
;;;; Completed by: Sam Hoogewind
;;;; Date: February 4, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; factorial() recursively calculates the factorial.
;;; Receive: n, the factorial you want to calculate
;;;          current, the increment value you are currently on
;;;          total, the sum total you have
;;; Precondition: n > 0, current = 2 and total = 1 (since 0! = 1)
;;; Output: The factorial of n
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version
(defn factorial [n current total]
  (if (> current n) ; once the current value is bigger than n, you're done
    (do
        (printf "%s! = %s \n" n total) ; print the results
        )
    )
  
  (if (<= current n)
    (do
      (recur n (+ current 1) (* total current)) ; recur through each value
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the factorial() function.
;;; Input: start, stop and increment.
;;; Output: The factorial of n
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (println "\nTo compute n!, enter n: ") ; get user input
 (let
    [ n (int (read))
      current 2
      total 1
    ] 
    (factorial n current total) ; start with set values for factorials
 )
)

