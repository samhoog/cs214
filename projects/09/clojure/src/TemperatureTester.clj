;; TemperatureTester.clj tests a Clojure Temperature type,
;; stored in Temperature.clj (in the src directory).
;;
;; Output: the results of testing the Temperature functions.
;;
;; Usage: clojure -m TemperatureTester
;;
;; Completed by: Sam Hoogewind
;; Date: March 18, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns TemperatureTester)

(load-file "src/Temperature.clj")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A function to print out a table for each temperature unit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn table [baseTemp limitTemp stepValue]
    (printTemperature (toFahrenheit baseTemp))
    (printTemperature (toCelsius baseTemp))
    (printTemperature (toKelvin baseTemp))
    (println)
    
    (let [newTemp (raise baseTemp stepValue)] ;; set the next baseTemp to the old one raised by the stepValue
        (if (lessThan baseTemp limitTemp)
            (table newTemp limitTemp stepValue)
        )
    )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A simple driver to test our Temperature functions. 
;; Output: the results of testing our Temperature functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                        
      baseTemp (readTemp) 
      limitTemp (readTemp)
      stepValue (read-string (read-line))
    ]
    (table baseTemp limitTemp stepValue)
    (println "\nAll tests passed!\n")
  )
)



