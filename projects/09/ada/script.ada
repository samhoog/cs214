Script started on 2022-03-18 18:48:55-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="174" LINES="12"]
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ cat temperature_o[Kpackage.adb temperature_package.ads temperature_tester.adb
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



end Temperature_Package;-- temperature_tester.adb "test-drives" the Temperature type.
--
-- Completed by: Sam Hoogewind
-- Date: March 18, 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package; use Temperature_Package;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure temperature_tester is
    baseTemp : Temperature_Package.Temperature;
    limitTemp : Temperature_Package.Temperature;
    tempTemp : Temperature_Package.temperature;
    stepValue : Float;
begin

    baseTemp := readTemp(baseTemp); -- read in the baseTemp
    limitTemp := readTemp(limitTemp); -- read in the limitTemp
    Put("Enter your step value: ");
    Get(stepValue); -- read in the stepValue
    while lessThan(baseTemp, limitTemp) loop -- while the base is less than the limit
        tempTemp := baseTemp;
        tempTemp := toFahrenheit(tempTemp); -- Use a temporary Temp to convert and print each unit
        Put(tempTemp);
        tempTemp := toCelsius(tempTemp);
        Put(tempTemp);
        tempTemp := toKelvin(tempTemp);
        Put(tempTemp); New_line;
        baseTemp := raiseTemp(baseTemp, stepValue); -- update the base temp with the stepLimit
    end loop;

    Put("All tests passed!"); New_line;
end temperature_tester;

]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ gnatmake temperature_tester.adb 
gnatmake: "temperature_tester" up to date.
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ gnatbind temperature_r[Ktesteral[K[K.ali
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ gnatlink temperature_tester.ali
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ .t[K/temperature_tester 
Enter your degree: 0
Enter your scale: F
Enter your degree: 100
Enter your scale: C
Enter your step value: 2.5
0.00 F   -17.78 C   255.22 K   
2.50 F   -16.39 C   256.61 K   
5.00 F   -15.00 C   258.00 K   
7.50 F   -13.61 C   259.39 K   
10.00 F   -12.22 C   260.78 K   
12.50 F   -10.83 C   262.17 K   
15.00 F   -9.44 C   263.56 K   
17.50 F   -8.06 C   264.94 K   
20.00 F   -6.67 C   266.33 K   
22.50 F   -5.28 C   267.72 K   
25.00 F   -3.89 C   269.11 K   
27.50 F   -2.50 C   270.50 K   
30.00 F   -1.11 C   271.89 K   
32.50 F   0.28 C   273.28 K   
35.00 F   1.67 C   274.67 K   
37.50 F   3.06 C   276.06 K   
40.00 F   4.44 C   277.44 K   
42.50 F   5.83 C   278.83 K   
45.00 F   7.22 C   280.22 K   
47.50 F   8.61 C   281.61 K   
50.00 F   10.00 C   283.00 K   
52.50 F   11.39 C   284.39 K   
55.00 F   12.78 C   285.78 K   
57.50 F   14.17 C   287.17 K   
60.00 F   15.56 C   288.56 K   
62.50 F   16.94 C   289.94 K   
65.00 F   18.33 C   291.33 K   
67.50 F   19.72 C   292.72 K   
70.00 F   21.11 C   294.11 K   
72.50 F   22.50 C   295.50 K   
75.00 F   23.89 C   296.89 K   
77.50 F   25.28 C   298.28 K   
80.00 F   26.67 C   299.67 K   
82.50 F   28.06 C   301.06 K   
85.00 F   29.44 C   302.44 K   
87.50 F   30.83 C   303.83 K   
90.00 F   32.22 C   305.22 K   
92.50 F   33.61 C   306.61 K   
95.00 F   35.00 C   308.00 K   
97.50 F   36.39 C   309.39 K   
100.00 F   37.78 C   310.78 K   
102.50 F   39.17 C   312.17 K   
105.00 F   40.56 C   313.56 K   
107.50 F   41.94 C   314.94 K   
110.00 F   43.33 C   316.33 K   
112.50 F   44.72 C   317.72 K   
115.00 F   46.11 C   319.11 K   
117.50 F   47.50 C   320.50 K   
120.00 F   48.89 C   321.89 K   
122.50 F   50.28 C   323.28 K   
125.00 F   51.67 C   324.67 K   
127.50 F   53.06 C   326.06 K   
130.00 F   54.44 C   327.44 K   
132.50 F   55.83 C   328.83 K   
135.00 F   57.22 C   330.22 K   
137.50 F   58.61 C   331.61 K   
140.00 F   60.00 C   333.00 K   
142.50 F   61.39 C   334.39 K   
145.00 F   62.78 C   335.78 K   
147.50 F   64.17 C   337.17 K   
150.00 F   65.56 C   338.56 K   
152.50 F   66.94 C   339.94 K   
155.00 F   68.33 C   341.33 K   
157.50 F   69.72 C   342.72 K   
160.00 F   71.11 C   344.11 K   
162.50 F   72.50 C   345.50 K   
165.00 F   73.89 C   346.89 K   
167.50 F   75.28 C   348.28 K   
170.00 F   76.67 C   349.67 K   
172.50 F   78.06 C   351.06 K   
175.00 F   79.44 C   352.44 K   
177.50 F   80.83 C   353.83 K   
180.00 F   82.22 C   355.22 K   
182.50 F   83.61 C   356.61 K   
185.00 F   85.00 C   358.00 K   
187.50 F   86.39 C   359.39 K   
190.00 F   87.78 C   360.78 K   
192.50 F   89.17 C   362.17 K   
195.00 F   90.56 C   363.56 K   
197.50 F   91.94 C   364.94 K   
200.00 F   93.33 C   366.33 K   
202.50 F   94.72 C   367.72 K   
205.00 F   96.11 C   369.11 K   
207.50 F   97.50 C   370.50 K   
210.00 F   98.89 C   371.89 K   
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ ./temperature_tester 
Enter your degree: 0
Enter your scale: K
Enter your degree: 212
Enter your scale: F
Enter your step value: 20.0
-459.40 F   -273.00 C   0.00 K   
-423.40 F   -253.00 C   20.00 K   
-387.40 F   -233.00 C   40.00 K   
-351.40 F   -213.00 C   60.00 K   
-315.40 F   -193.00 C   80.00 K   
-279.40 F   -173.00 C   100.00 K   
-243.40 F   -153.00 C   120.00 K   
-207.40 F   -133.00 C   140.00 K   
-171.40 F   -113.00 C   160.00 K   
-135.40 F   -93.00 C   180.00 K   
-99.40 F   -73.00 C   200.00 K   
-63.40 F   -53.00 C   220.00 K   
-27.40 F   -33.00 C   240.00 K   
8.60 F   -13.00 C   260.00 K   
44.60 F   7.00 C   280.00 K   
80.60 F   27.00 C   300.00 K   
116.60 F   47.00 C   320.00 K   
152.60 F   67.00 C   340.00 K   
188.60 F   87.00 C   360.00 K   
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ada[00m$ exit

Script done on 2022-03-18 18:49:45-04:00 [COMMAND_EXIT_CODE="0"]
