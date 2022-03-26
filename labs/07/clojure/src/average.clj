;; average.clj "test-drives" function average().
;;
;; Output: the average of a sequence of numbers.
;;
;; Usage: clojure -m average
;;
;; Begun by: Dr. Adams, CS 214 at Calvin College.
;; Completed by: Sam Hoogewind
;; Date: February 21, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns average)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sum() sums the values in a vector.       
;; Receive: aVec, a vector of numbers.
;; Return: the sum of the values in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn sum [aVec]
  (if (vector? aVec) ;; check if aVec is a vector
    (if (empty? aVec) ;; check if aVec is empty
      0.0 ;; return 0 is yes
      (+ (peek aVec) (sum (pop aVec)))
    )
  )
)

;; easier (non-recursive) solution
(defn sum2 [aVec]
  (if (vector? aVec)      ; if aVec is a vector:
    (if (empty? aVec)     ;   if aVec is empty:
      0.0                 ;    return 0
      (reduce + aVec)     ;   else reduce aVec using +
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; average() computes the average of a vector of numbers.
;; Receive: aVec, a vector of numbers. 
;; Return: the average of the numbers in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
(defn average [aVec]
  (if (vector? aVec) ;; check if aVec is a vector
    (if (empty? aVec) ;; check if aVec is empty
      0.0 ;; return 0 if yes
      (/ (sum aVec) (count aVec)) ;; return the average if no
    )
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main function to test functions sum() and average()
;; Output: the sum and average of some test vectors.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [ emptyVec []
      testVec  [9.0 8.0 7.0 6.0]
    ]

    (print "\nThe empty vec: " emptyVec) 
    (print "\nThe test  vec: " testVec) 
    (println "\n")

    ;; Test sum()...
    (printf "\nThe first sum is %.3f\n" (sum emptyVec))
    (printf "The second sum is %.3f\n" (sum testVec))

    ;; Test average()...
    (printf "\nThe first average is %.3f\n" (average emptyVec))
    (printf "The second average is %.3f\n" (average testVec))
    (println "\n")

    ;; Test sum2()...
    (printf "\nThe first sum2 is %.3f\n" (sum2 emptyVec))
    (printf "The second sum2 is %.3f\n" (sum2 testVec))
    (println "\n")
  )
)

