Script started on 2022-02-21 16:19:13-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="181" LINES="12"]
c]0;sth6@remotel3: ~/cs/214/labs/07/ada[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ada[00m$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: February 21, 2022
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

-- Declare Vector type
   type Vector is array ( Positive range <>) of Float;

-- Define array0 as an array containing no values
   array0 : Vector := (0.0, 0.0);

-- Define array1 as an array containing 9, 8, 7, 6
   array1 : Vector := (9.0, 8.0, 7.0, 6.0);

----------------------------------------------
-- sum() sums the values in an array         -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------

  function sum(A: Vector) return Float is 
    Total : Float := 0.0; 
  begin 
    --for I in A'Range 
    for I in A'First .. A'Last
    loop 
      Total := Total + A(I); 
    end loop; 
    return Total; 
  end sum; 

--------------------------------------------------------------
-- average() computes the average of the values in an array. -
-- Receive: A, an array of doubles.                          -
-- Return: the average of the values in A.                   -
--------------------------------------------------------------

   function average(A: Vector) return Float is
      Average : Float := 0.0;
   begin
      if A'Length = 0 then
         return 0.0;
      else
         return sum(A) / Float(A'Length);
      end if;
   end;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

]0;sth6@remotel3: ~/cs/214/labs/07/ada[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ada[00m$ gnatmake average.adb 
gnatmake: "average" up to date.
]0;sth6@remotel3: ~/cs/214/labs/07/ada[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ada[00m$ ./average 
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
]0;sth6@remotel3: ~/cs/214/labs/07/ada[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ada[00m$ exit

Script done on 2022-02-21 16:19:30-05:00 [COMMAND_EXIT_CODE="0"]
