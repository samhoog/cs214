;;;; rectangle_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The height and width of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rectangle_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sam Hoogewind
;;;; Date: January 15, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangleArea() computes the area of a rectangle.
;;; Receive: itsHeight and itsWidth, numbers.
;;; Precondition: itsHeight and itsWidth >= 0.0.
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn rectangleArea [itsHeight itsWidth]
  (* itsHeight itsWidth)  ; return H*W
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the height and width of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its height: ") (flush)
  (let
    [ height (read) ] ; read in the height and make sure it's positive
    (assert (>= height 0) "-main: height must be positive")
    (print   " enter its width: ") (flush)

    (let
      [ width (read) ] ; read in the width and make sure it's positive
    (assert (>= width 0) "-main: width must be positive")
    
    (print "\nThe area is ")
    (print (rectangleArea height width)) ; output the area
    (print "\n\n")

    )
  )
)  