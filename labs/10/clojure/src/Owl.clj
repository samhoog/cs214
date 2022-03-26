;;;; Owl.clj provides an Owl "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sam Hoogewind
;;;; Date: March 24, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;; bring in 'Bird' (to be used as 'superclass')
(load "Bird")


;; define 'Owl' as 'subclass' of Bird
(defrecord Owl [^Bird name])


;;; Owl constructors
;;; - default: no args
;;;   Postcondition: name == a default value. 
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Owl     
  ([]                (->Owl "Ann Onymous"))
  ([^String itsName] (->Owl itsName))
)

;;; method to retrieve an Owl's class
;;; Receive: this, an Owl object.
;;; Return: "Owl".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod getClass Owl [ _ ]
  "Owl"
)

;;; method to retrieve an Owl's call
;;; Receive: this, an Owl object.
;;; Return: "Whoo"!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod getCall Owl [ _ ]
  "Whoo!"
)
