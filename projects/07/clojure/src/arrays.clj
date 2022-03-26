;; arrays.clj prompts the user for a array size, then lets them input values before printing them back out.
;;
;; Output: the list of the values in anArray
;;
;; Usage: clojure -m arrays
;;
;; Completed by: Sam Hoogewind
;; Date: February 23, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns arrays)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printArray() is a method that outputs a given array of doubles.
;; Receive: anArray, an array of doubles.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn printArray [anArray size]
    (if (>= size 0) ;; check if you still have items left
        (do
            (print (aget anArray size) "\n") ;; for the item at index size in the array output it
            (printArray anArray (- size 1)) ;; recur with the next item
        )
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; readArray() is a method that reads in values from the user into anArray
;; Receive: anArray, an array of doubles.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
(defn readArray [anArray size]
    (if (>= size 0) ;; check if you still have items left
       (do
            (aset-float anArray size (read)) ;; set the index to a user input
            (readArray anArray (- size 1)) ;; recur with the next index
       ) 
       anArray ;; return the array
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main function to run functions readArray() and printArray()
;; Output: the items of a user given array
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
    (print "How many values would you like in the array? ") (flush) ;; prompt for the size
    (let 
        [ size (read)
        ]
        (if (< size 0) ;; if the size is less than 0 throw an error
            (print "The size can't be negative. \n")
            (let
                [anArray (make-array Double/TYPE size)] ;; instigate the array
                (print "Please enter the array values: ") (flush)
                (readArray anArray (- size 1)) ;; read in the values
                (print "Your array values are:\n")
                (printArray anArray (- size 1)) ;; print out the values
            )
        )
    )
)

