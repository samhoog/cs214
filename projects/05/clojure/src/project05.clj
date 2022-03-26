;;;; project05.clj defines and tests different functions
;;;;
;;;; Input: None
;;;; Output: Tests for each function
;;;;
;;;; Completed by: Sam Hoogewind
;;;; Date: February 10, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns project05)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; my-reverse() recursively reverses top-level elements.
;;; Receive: sequence, the sequence you want to reverse
;;; Output: The reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn my-reverse [sequence]
    (if (empty? sequence) ; check if the sequence is empty
        sequence ; if so, return the sequence
        (cons (last sequence) (my-reverse (butlast sequence))) ; otherwise join the last item and recursively sort the rest
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; super-reverse() recursively reverses top-level elements and nested sublists.
;;; Receive: sequence, the sequence you want to reverse
;;; Output: The reversed sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn super-reverse [sequence]
    (if (empty? sequence) ; check if the sequence is empty
        sequence ; if so, return the sequence
        (if (list? (last sequence)) ; check if the last item of the sequence is a list
            (cons (super-reverse (last sequence)) (super-reverse (butlast sequence))) ; if it is, then recursively sort that list and the rest of the sequence
            (cons (last sequence) (super-reverse (butlast sequence))) ; otherwise just recursively sort the rest of the sequence
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; member?() recursively checks if a list contains a given target.
;;; Receive: target, the sequence you're looking for, and sequence, the sequence you're checking
;;; Output: True or false, depending if it contains the sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn member? [target sequence]
    (if (list? sequence) ; check if the sequence is a list
        (if (empty? sequence) ; then check if it's empty
            false ; if it is, the target isn't in the sequence, so return false
            (if (= (first sequence) target) ; otherwise check the first item
                true ; if it is, the target is in the sequence, so return true
                (recur target (rest sequence)) ; otherwise recursively check the remaining list
            )
        )
        (println "Given sequence is not a list") ; otherwise, print error
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; subsequence() recursively returns a subsequence of list starting i and going n elements
;;; Receive: list, the sequence you're cropping, i, the index you're starting at, n, the amount of elements after i you return
;;; Output: The subsequence of list with n elements from i
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn subsequence [list i n & answer]
    (if (not-empty list) ; check if the sequence is empty
        (if (= i 0) ; check if i is 0
            (if (= n 0) ; check if n is 0
                (my-reverse answer) ; if it is, you're done and reverse the answer (since cons prepends)
                (recur (rest list) i (- n 1) (cons (first list) answer)) ; if not, get rid of the first value, adding it to the answer, and decrementing n
            )
            (recur (rest list) (- i 1) n answer) ; if not, get rid of the first item and decrement i
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the project5() functions.
;;; Input: None
;;; Output: Tests for each function
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (println "Testing my-reverse: ") ; test my-reverse
 (println "")

 (println "Testing empty list: ")
 (println (my-reverse '()))
 (println "Testing (a b): ")
 (println (my-reverse '(a b)))
 (println "Testing (a b (c d) (e (f g))): ")
 (println (my-reverse '(a b (c d) (e (f g)))))

 (println "")
 (println "Testing super-reverse: ") ; test super-reverse
 (println "")

 (println "Testing empty list: ")
 (println (super-reverse '()))
 (println "Testing (a b): ")
 (println (super-reverse '(a b)))
 (println "Testing (a b (c d) (e (f g))): ")
 (println (super-reverse '(a b (c d) (e (f g)))))

 (println "")
 (println "Testing member?: ") ; test member?
 (println "")

 (println "Testing not a list: ") ; this should give nil
 (println (member? '() 'a))
 (println "Testing (1 2) in ((1 2) 3 (4 (5 6))): ") ; these 3 should give true
 (println (member? '(1 2) '((1 2) 3 (4 (5 6)))))
 (println "Testing 3 in ((1 2) 3 (4 (5 6))): ")
 (println (member? 3 '((1 2) 3 (4 (5 6)))))
 (println "Testing (4 (5 6)) in ((1 2) 3 (4 (5 6))): ")
 (println (member? '(4 (5 6)) '((1 2) 3 (4 (5 6)))))

 (println "Testing 1 in ((1 2) 3 (4 (5 6))): ") ; these 3 should give false
 (println (member? 1 '((1 2) 3 (4 (5 6)))))
 (println "Testing 2 in ((1 2) 3 (4 (5 6))): ")
 (println (member? 2 '((1 2) 3 (4 (5 6)))))
 (println "Testing 4 in ((1 2) 3 (4 (5 6))): ")
 (println (member? 4 '((1 2) 3 (4 (5 6)))))

 (println "")
 (println "Testing subsequence: ") ; test subsequence
 (println "")

 (println "Testing empty list: ") ; this should give nil
 (println (subsequence '() 1 2 ))
 (println "Testing invalid i: ") ; this should give nil
 (println (subsequence '(1 2 3 4) 9 1))
 (println "Testing fewer than n items beyond i: ") ; this should give nil
 (println (subsequence '(1 2 3 4) 1 10))
 (println "Testing the length 2 subsequence starting at 1 for (1 2 3 4 5 6 7)")
 (println (subsequence '(1 2 (3 4) (5 (6 7))) 1 2 ))
 (println "Testing the length 4 subsequence starting at 2 for (1 2 3 4 5 6 7)")
 (println (subsequence '(1 2 3 4 5 6 7) 2 4 ))
)

