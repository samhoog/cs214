-- temperature_package.adb defines operations for the Temperature type.
--
-- Completed by: Sam Hoogewind
-- Date: March 18, 2022
---------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Characters; use Ada.Characters;
with Ada.Characters.Handling; use Ada.Characters.Handling;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

package body Temperature_Package is

  ------------------------------------------------
  -- Init initializes a Temperature variable     -     
  -- Receive: Tmp, the Temperature variable;     -    
  --          Degrees, the starting temperature; -         
  --          Scale, the unit;                   -
  -- Return: Tmp, its fields set to Degrees      -
  --         and Scale                           -
  ------------------------------------------------

  procedure Init(Tmp : out Temperature; Degrees : in Float; Scale : in Character) is
  begin
    if (checkValidity(Degrees, Scale)) then
      Tmp.MyDegrees := Degrees;
      Tmp.MyScale := Ada.Characters.Handling.To_Upper(Scale);
    else
      Tmp.MyDegrees := 0.0;
      Tmp.myScale := 'X';
    end if;
  end Init;

  ------------------------------------------------------------
  -- getDegrees(Temperature) retrieves Temperature.myDegrees -     
  -- Receive: Tmp, a Temperature.                            -
  -- PRE: Tmp has been initialized.                          -
  -- Return: Tmp.myDegrees.                                  -
  ------------------------------------------------------------
  function getDegrees(Tmp : in Temperature) return Float is
  begin
    return Tmp.MyDegrees;
  end getDegrees;

  ------------------------------------------
  -- getScale(Temperature) retrieves Scale -
  -- Receive: Tmp, a Temperature.          -
  -- PRE: Tmp has been initialized.        -
  -- Return: Tmp.myScale.                  -
  ------------------------------------------
  function getScale(Tmp : in Temperature) return Character is
  begin
     return Tmp.MyScale;
  end getScale;

  ---------------------------------------------------
  -- Put(Temperature) displays a Temperature value. -
  -- PRE: Tmp has been initialized.                 -
  -- Receive: Tmp, a Temperature.                   -
  -- Output: Tmp, to the screen.                    -
  ---------------------------------------------------
  procedure Put(Tmp : in Temperature) is
  begin
    Put(Tmp.myDegrees, 0, 2, 0); 
    Put(" ");
    Put(Tmp.myScale);
    Put("   ");
  end Put;

  --------------------------------------------------------------------------
  -- checkValidity(Degrees, Scale) checks if a given temperature is valid. -
  -- Receive: Degrees, a Float and Scale, a Character.                     -
  --------------------------------------------------------------------------
  function checkValidity(degrees : Float; scale : Character) return Boolean is 
  begin
    if (scale = 'F' or scale = 'C' or scale = 'K') then
      return True;
    else
      Put("Invalid scale.");
      return False;
    end if;
  end checkValidity;

  --------------------------------------------------------------------------
  -- toFahrenheit(Temperature) converts a temperature value to fahrenheit. -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toFahrenheit(Tmp : in out Temperature) return Temperature is
  begin
    if Tmp.myScale = 'C' then
      Init(Tmp, (9.0 / 5.0) * Tmp.myDegrees + 32.0, 'F');
    elsif Tmp.myScale = 'K' then 
      Init(Tmp, (9.0 / 5.0) * (Tmp.myDegrees - 273.0) + 32.0, 'F');
    end if;
    return Tmp;
  end toFahrenheit;

  --------------------------------------------------------------------------
  -- toCelsius(Temperature) converts a temperature value to celsius.       -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toCelsius(Tmp : in out Temperature) return Temperature is
  begin
    if Tmp.myScale = 'F' then
      Init(Tmp, (5.0 / 9.0) * (Tmp.myDegrees - 32.0), 'C');
    elsif Tmp.myScale = 'K' then 
      Init(Tmp, Tmp.myDegrees - 273.0, 'C');
    end if;
    return Tmp;
  end toCelsius;

  --------------------------------------------------------------------------
  -- toKelvin(Temperature) converts a temperature value to kelvin.         -
  -- PRE: Tmp has been initialized.                                        -
  -- Receive: Tmp, a Temperature.                                          - 
  --------------------------------------------------------------------------
  function toKelvin(Tmp : in out Temperature) return Temperature is
  begin
    if Tmp.myScale = 'F' then
      Init(Tmp, (5.0 / 9.0) * (Tmp.myDegrees - 32.0) + 273.0, 'K');
    elsif Tmp.myScale = 'C' then 
      Init(Tmp, Tmp.myDegrees + 273.0, 'K');
    end if;
    return Tmp;
  end toKelvin;

  ------------------------------------------------------------
  -- raiseTemp(Temperature, Degrees) updates a degree value. -
  -- PRE: Tmp has been initialized.                          -
  -- Receive: Tmp, a Temperature and Degrees, a Float.       -
  ------------------------------------------------------------
  function raiseTemp(Tmp : in out Temperature; Degrees : in Float) return Temperature is 
  Tmp2 : Temperature;
  begin
    Init(Tmp2, Tmp.myDegrees + Degrees, Tmp.myScale);
    return Tmp2;
  end raiseTemp;
  
  ------------------------------------------------------------
  -- lowerTemp(Temperature, Degrees) updates a degree value. -
  -- PRE: Tmp has been initialized.                          -
  -- Receive: Tmp, a Temperature and Degrees, a Float.       -
  ------------------------------------------------------------
  function lowerTemp(Tmp : in out Temperature; Degrees : in Float) return Temperature is 
  Tmp2 : Temperature;
  begin
    Init(Tmp2, Tmp.myDegrees - Degrees, Tmp.myScale);
    return Tmp2;
  end lowerTemp;

  -------------------------------------------------------------------------
  -- equals(Temperature1, Temperature2) compares two temperature degrees. -
  -- PRE: Tmp1 and Tmp2 have been initialized.                            -
  -- Receive: Tmp1, a Temperature and Tmp2, a Temperature.                -
  -- Output: A boolean if they are equal or not.                          -
  -------------------------------------------------------------------------
  function equals(Tmp1 : in out Temperature; Tmp2 : in out Temperature) return Boolean is
    Temp1 : Temperature;
    Temp2 : Temperature;
  begin
    Temp1 := toFahrenheit(Tmp1);
    Temp2 := toFahrenheit(Tmp2);
    if getDegrees(Temp1) = getDegrees(Temp2) then
      return True;
    else
      return False;
    end if;
  end equals;

  ---------------------------------------------------------------------------
  -- lessThan(Temperature1, Temperature2) compares two temperature degrees. -
  -- PRE: Tmp1 and Tmp2 have been initialized.                              -
  -- Receive: Tmp1, a Temperature and Tmp2, a Temperature.                  -
  -- Output: A boolean if Tmp1 is less than Tmp2.                           -
  ---------------------------------------------------------------------------
  function lessThan(Tmp1 : in out Temperature; Tmp2 : in out Temperature) return Boolean is 
  Temp1 : Temperature;
  Temp2 : Temperature;
  begin
    Temp1 := Tmp1;
    Temp2 := Tmp2;
    Temp1 := toFahrenheit(Temp1);
    Temp2 := toFahrenheit(Temp2);
    if getDegrees(Temp1) < getDegrees(Temp2) then
      return True;
    else
      return False;
    end if;
  end lessThan;

  ---------------------------------------------------
  -- readTemp(Temperature) reads in a Temperature.  -
  -- PRE: Tmp has been initialized.                 -
  -- Receive: Tmp, a Temperature.                   -
  ---------------------------------------------------
  function readTemp(Tmp : in Temperature) return Temperature is
    degrees : Float;
    scale : Character;
    Temp : Temperature;
  begin
    Put("Enter your degree: ");
    Get(degrees);
    Put("Enter your scale: ");
    Get(scale);
    if (checkValidity(degrees, scale)) then
      Init(Temp, degrees, scale);
    end if;
    return Temp;
  end readTemp;
  
end Temperature_Package;
