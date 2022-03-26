-- temperature_package.ads declares the Temperature type and its operations.
--
-- Completed by: Sam Hoogewind
-- Date: March 18, 2022
--------------------------------------------------------------

package Temperature_Package is

 type Temperature is private;

  ------------------------------------------------
  -- Init initializes a Temperature variable     -     
  -- Receive: Tmp, the Temperature variable;     -    
  --          Degrees, the starting temperature; -         
  --          Scale, the unit;                   -
  -- Return: Tmp, its fields set to Degrees      -
  --         and Scale                           -
  ------------------------------------------------
  procedure Init(Tmp : out Temperature; Degrees : in Float; Scale : in Character);

  ------------------------------------------------------------
  -- getDegrees(Temperature) retrieves Temperature.myDegrees -     
  -- Receive: Tmp, a Temperature.                            -
  -- PRE: Tmp has been initialized.                          -
  -- Return: Tmp.myDegrees.                                  -
  ------------------------------------------------------------
  function getDegrees(Tmp : in Temperature) return Float;

  ---------------------------------------------------
  -- getMiddle(Name) retrieves Scale as a Character -
  -- Receive: Tmp, a Temperature.                   -
  -- PRE: Tmp has been initialized.                 -
  -- Return: Tmp.myScale.                           -
  ---------------------------------------------------
  function getScale(Tmp : in Temperature) return Character; 

  ---------------------------------------------------
  -- Put(Temperature) displays a Temperature value. -
  -- PRE: Tmp has been initialized.                 -
  -- Receive: Tmp, a Temperature.                   -
  -- Output: Tmp, to the screen.                    -
  ---------------------------------------------------
  procedure Put(Tmp : in Temperature);

  --------------------------------------------------------------------------
  -- checkValidity(Degrees, Scale) checks if a given temperature is valid. -
  -- Receive: Degrees, a Float and Scale, a Character.                     -
  --------------------------------------------------------------------------
  function checkValidity(degrees : Float; scale : Character) return Boolean;

  --------------------------------------------------------------------------
  -- toFahrenheit(Temperature) converts a temperature value to fahrenheit. -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toFahrenheit(Tmp : in out Temperature) return Temperature;

  --------------------------------------------------------------------------
  -- toCelsius(Temperature) converts a temperature value to celsius.       -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toCelsius(Tmp : in out Temperature) return Temperature;

  --------------------------------------------------------------------------
  -- toKelvin(Temperature) converts a temperature value to kelvin.         -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toKelvin(Tmp : in out Temperature) return Temperature;

  ------------------------------------------------------------
  -- raiseTemp(Temperature, Degrees) updates a degree value. -
  -- PRE: Tmp has been initialized.                          -
  -- Receive: Tmp, a Temperature and Degrees, a Float.       -
  ------------------------------------------------------------
  function raiseTemp(Tmp : in out Temperature; Degrees : in Float) return Temperature;

  ------------------------------------------------------------
  -- lowerTemp(Temperature, Degrees) updates a degree value. -
  -- PRE: Tmp has been initialized.                          -
  -- Receive: Tmp, a Temperature and Degrees, a Float.       -
  ------------------------------------------------------------
  function lowerTemp(Tmp : in out Temperature; Degrees : in Float) return Temperature;

  -------------------------------------------------------------------------
  -- equals(Temperature1, Temperature2) compares two temperature degrees. -
  -- PRE: Tmp1 and Tmp2 have been initialized.                            -
  -- Receive: Tmp1, a Temperature and Tmp2, a Temperature.                -
  -- Output: A boolean if they are equal or not.                          -
  -------------------------------------------------------------------------
  function equals(Tmp1 : in out Temperature; Tmp2 : in out Temperature) return Boolean;

  ---------------------------------------------------------------------------
  -- lessThan(Temperature1, Temperature2) compares two temperature degrees. -
  -- PRE: Tmp1 and Tmp2 have been initialized.                              -
  -- Receive: Tmp1, a Temperature and Tmp2, a Temperature.                  -
  -- Output: A boolean if Tmp1 is less than Tmp2.                           -
  ---------------------------------------------------------------------------
  function lessThan(Tmp1 : in out Temperature; Tmp2 : in out Temperature) return Boolean;

  ---------------------------------------------------
  -- readTemp(Temperature) reads in a Temperature.  -
  -- PRE: Tmp has been initialized.                 -
  -- Receive: Tmp, a Temperature.                   -
  ---------------------------------------------------
  function readTemp(Tmp : in Temperature) return Temperature;
  

private 

    type Temperature is 
        record
            MyDegrees : Float;
            MyScale : Character;
        end record;



end Temperature_Package;