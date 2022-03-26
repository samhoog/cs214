;; Temperature.clj is a module for our 'Temperature' type-abstraction.
;;
;; Completed by: Sam Hoogewind
;; Date: March 18, 2022
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Create a record/struct type named Temperature
(defrecord Temperature [degree scale])

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; checkValidity(Degrees, Scale) checks if a given temperature is valid. 
  ;; Receive: Degrees, a Float and Scale, a Character.                     
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn checkValidity [degree scale]
    (if (or (= scale "C") (= scale "K") (= scale "F"))
        true
        false
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; make-Temperature constructs a Temperature object from a float and a character. 
;; Receive: degree, a float and scale, a character.
;; Return: the Temperature (degree scale). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Temperature [degree scale]
   (if (checkValidity degree scale)
     (->Temperature degree scale)
     (println "That is not a valid scale.")
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getDegree extracts the degree of a Temperature object.
;; Receive: aTemperature, a Temperature.
;; Return: the degree float in aTemperature.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getDegree [^Temperature aTemperature]
  (:degree aTemperature)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getScale extracts the scale of a Temperature object.
;; Receive: aTemperature, a Temperature. 
;; Return: the scale character in aTemperature.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getScale [^Temperature aTemperature]
  (:scale aTemperature)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printTemperature displays a Temperature object. 
;; Receive: aTemperature, a Temperature, 
;; Output: the string representation of aTemperature. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printTemperature [^Temperature aTemperature]
  (print(format "%.2f %s \t\t" (getDegree aTemperature) (getScale aTemperature)))
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; toFahrenheit(Temperature) converts a temperature value to fahrenheit. 
  ;; PRE: Tmp has been initialized.                                       
  ;; Receive: Tmp, a Temperature.                                          
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toFahrenheit [^Temperature aTemperature]
    (if (= (getScale aTemperature) "C")
        (make-Temperature (+ 32.0 (* (/ 9.0 5.0) (getDegree aTemperature))) "F")
        (if (= (getScale aTemperature) "K")
            (make-Temperature (+ 32.0 (* (/ 9.0 5.0) (- (getDegree aTemperature) 273.0))) "F")
            (make-Temperature (getDegree aTemperature) (getScale aTemperature))
        )
    )
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; toCelsius(Temperature) converts a temperature value to celsius.       
  ;; PRE: Tmp has been initialized.                                        
  ;; Receive: Tmp, a Temperature.                                          
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toCelsius [^Temperature aTemperature]
    (if (= (getScale aTemperature) "F")
        (make-Temperature (* (/ 5.0 9.0) (- (getDegree aTemperature) 32.0)) "C")
        (if (= (getScale aTemperature) "K")
            (make-Temperature (- (getDegree aTemperature) 273.0) "C")
            (make-Temperature (getDegree aTemperature) (getScale aTemperature))
        )
    )
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; toKelvin(Temperature) converts a temperature value to kelvin.         
  ;; PRE: Tmp has been initialized.                                        
  ;; Receive: Tmp, a Temperature.                                          
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toKelvin [^Temperature aTemperature]
    (if (= (getScale aTemperature) "F")
        (make-Temperature (+ 273.0 ( * ( / 5.0 9.0) (- (getDegree aTemperature) 32.0))) "K")
        (if (= (getScale aTemperature) "C")
            (make-Temperature (+ (getDegree aTemperature) 273.0) "K")
            (make-Temperature (getDegree aTemperature) (getScale aTemperature))
        )   
    )
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; raiseTemp(Temperature, Degrees) updates a degree value. 
  ;; PRE: Tmp has been initialized.                          
  ;; Receive: Tmp, a Temperature and Degrees, a Float.       
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn raise[aTemperature degrees]
    (make-Temperature (+ (getDegree aTemperature) degrees) (getScale aTemperature))
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; lowerTemp(Temperature, Degrees) updates a degree value. 
  ;; PRE: Tmp has been initialized.                          
  ;; Receive: Tmp, a Temperature and Degrees, a Float.       
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lower[aTemperature degrees]
    (make-Temperature (- (getDegree aTemperature) degrees) (getScale aTemperature))
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; equals(Temperature1, Temperature2) compares two temperature degrees. 
  ;; PRE: Tmp1 and Tmp2 have been initialized.                            
  ;; Receive: Tmp1, a Temperature and Tmp2, a Temperature.                
  ;; Output: A boolean if they are equal or not.                          
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn equals[aTemperature1 aTemperature2]
    (= (getDegree (toFahrenheit aTemperature1)) (getDegree (toFahrenheit aTemperature2)))
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; lessThan(Temperature1, Temperature2) compares two temperature degrees. 
  ;; PRE: Tmp1 and Tmp2 have been initialized.                             
  ;; Receive: Tmp1, a Temperature and Tmp2, a Temperature.                  
  ;; Output: A boolean if Tmp1 is less than Tmp2.                           
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn lessThan[aTemperature1 aTemperature2]
    (< (getDegree (toFahrenheit aTemperature1)) (getDegree (toFahrenheit aTemperature2)))
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; readTemp(Temperature) reads in a Temperature.  
  ;; PRE: Tmp has been initialized.                 
  ;; Receive: Tmp, a Temperature.                   
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn readTemp[]
    (make-Temperature (read-string (read-line)) (read-line))
)