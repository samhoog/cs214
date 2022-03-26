;;;; quadratic.clj calculates the roots of a quadratic equation
;;;; Input: The three coefficients of the equation
;;;; Output: The roots of the equation, or a corrosponding error
;;;;
;;;; Usage: clojure -m quadratic
;;;;
;;;; Completed by: Sam Hoogewind
;;;; Date: February 15. 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadratic)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; quadraticRoots() calculates the quadratic roots according to the equation specified
;;; Receive: a, b, c - the coefficients of the equation
;;; Return: The two quadratic roots or an error
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn quadraticRoots [a b c]
  (let
    [ arg (- (* b b) (* (* 4 a) c)) ; calculate the part under the radical
    ]
    (if (not= a 0) ; if x^2 isn't 0
      (do ; if yes, then
        (if (>= arg 0) ; if the part under the radical is greater than or equal to 0
          (do ; if yes then
            (let
              [ firstRoot (/ (+ (- 0 b) (Math/sqrt arg)) (* 2 a)) ; calculate each root
                secondRoot (/ (- (- 0 b) (Math/sqrt arg)) (* 2 a))
              ]
              (vector firstRoot secondRoot) ; set a vector of the results
            )
          )
          (do ; otherwise you have imaginary numbers, so print an error
            (print "quadraticRoots(): b^2 - 4ac is negative! \n")
            (let
              [ firstRoot 0
                secondRoot 0
              ]
              (vector firstRoot secondRoot) ; set a vector of 0 0 
            )
          )
        )
      )
      (do ; otherwise x^2 is 0, so print an error
        (print "quadraticRoots(): a is zero! \n")
        (let
          [ firstRoot 0
            secondRoot 0
          ]
          (vector firstRoot secondRoot) ; set a vector of 0 0
        )
      )
    )
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: the three coefficients of the equation
;;; Output: the roots of the equation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "To calculate the quadratic roots, please enter the equation: ") (flush) ; prompt for the equation
  (print "Enter the first coefficient: ") (flush) ; prompt for the first coefficient
  (let
    [ a (read) ]
    (print "Enter the second coefficient: ") (flush) ; prompt for the second coefficient
    (let 
      [ b (read) ]
      (print "Enter the third coefficient: ") (flush) ; prompt for the third coefficient
      (let
       [ c (read)
        result (quadraticRoots a b c)            ; compute the results
        root1 (get result 0)                     ; retrieve the two roots
        root2 (get result 1)                 
       ] ; display the roots if they aren't 0
        (if (not= root1 0)
          (if (not= root2 0)
            (printf (str "\nThe first root is \"%s\" and the second root is \"%s\"\n\n") root1 root2)
          )
        )
      )
    )
  )
)

