-- arrays.adb prompts the user for a array size, then lets them input values before printing them back out.
-- Precondition: theArray is an array of numbers.
-- Output: the list of the values in anArray
--
-- Completed by: Sam Hoogewind
-- Date: February 24, 2022
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure arrays is

-- Declare Vector type
   type Vector is array ( Positive range <>) of Float;

-- Define size as an integer
   size : Integer := 0;

---------------------------------------------------------------------
-- printArray() is a method that outputs a given vector of doubles. -
-- Receive: anArray, a vector of doubles.                           -
---------------------------------------------------------------------

  procedure printArray(anArray : in Vector) is
  begin 
    Put("Your array values are: ");
    New_line;
    for I in anArray'First .. anArray'Last -- loop through the array
    loop 
      Put(anArray(I)); -- for each item in the array output it
      New_line; 
    end loop;  
  end printArray; 

----------------------------------------------------------------------------
-- readArray() is a method that reads in values from the user into anArray -
-- Receive: size, an integer                                               -
----------------------------------------------------------------------------
function readArray(size : in Integer) return Vector is
  anArray : Vector(1 .. size); -- instigate anArray 
  item : Float := 0.0; -- instigate the item you will read in
  begin 
    Put("Please enter the array values: ");
    for I in anArray'First .. anArray'Last -- for each item in the array
    loop 
      Get(item); -- read in a value
      anArray(I) := item; -- save it in the array
    end loop; 
    return anArray;
  end readArray; 

begin
    Put("How many values would you like in the array? "); -- prompt for the size
    Get(size);
    if size < 0 then -- if the size is less than 0 throw an error
        Put("The size can't be negative.");
    else
        printArray(readArray(size)); -- instigate and read in the array in readArray, then feed that array to printArray
    end if;
end arrays;

