;;;; letter_grades.clj calculates your letter grade
;;;;
;;;; Input: The grade average
;;;; Precondition: The average is an integer 0-100
;;;; Output: The corrosponding letter grade
;;;;
;;;; Completed by: Sam Hoogewind
;;;; Date: January 31, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() converts a grade average to it's letter grade.
;;;
;;; Receive: average, an int.
;;; PRE: average is an int between 0 and 100
;;; Return: the grade corrosponding to the average
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn letterGrade[average]
  (cond
    (= (quot average 10) 10) 'A
    (= (quot average 10) 9)  'A
    (= (quot average 10) 8)  'B
    (= (quot average 10) 7)  'C
    (= (quot average 10) 6)  'D
    :else                    'F
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our letterGrade() function.
;;; Input: average {your grade average}.
;;; Output: the grade corrosponding to average.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your grade average: ") (flush)
 (let
    [ average (Integer/parseInt (read-line)) ] ; read average (an int))
    (println (letterGrade average) "\n")        ; display its grade

 )
)

