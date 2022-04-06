;; search.clj tests a function to search a list for a given value.
;;
;; Output: four lists, and 
;;          the results of calling a search() function on them.
;;
;; Usage: clojure -m search
;;
;; Begun by: Dr. Adams, CS 214 at Calvin College.
;; Completed by: Sam Hoogewind
;; Date: March 29, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns search)

(load "listOps")                      ; load module

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Function -main tests function listSearch(). 
;; Output: the results of testing listSearch() on various lists.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [ 
      list1 '(99 88 77 66 55)        ; 
      list2 (list 55 66 77 88 99)    ; 
      list3 (list 55 77 99 88 66)    ; 
      list4 (list 11 22 33 44 55)    ;
      emptyList '()                  ; list is empty
    ]

    (println)
    (println "list1: " list1)        ; print list1,
    (println "list2: " list2)        ;   list2,
    (println "list3: " list3)        ;   list3,
    (println "list4: " list4)        ;   list4
    (println "empty: " emptyList)    ;   list5,
    (println)                        ;
    (println "The index of 99 in list1 is: " (listSearch list1 99 0))
    (println "The index of 99 in list2 is: " (listSearch list2 99 0))
    (println "The index of 99 in list3 is: " (listSearch list3 99 0))
    (println "The index of 99 in list4 is: " (listSearch list4 99 0))
    (println)
    (println "The index of 99 in empty list is: " (listSearch emptyList 99 0))
    (println)
  )
)

