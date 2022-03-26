-- factorial.adb calculates a factorial
--
-- Input: n, an integer
-- Precondition: n is 0 or greater
-- Output: The factorial of n
--
-- Completed by: Sam Hoogewind
-- Date: January 31, 2022
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is

   answer : Integer := 1;
   i : Integer;
   n : Integer;

   function calc_factorial(n : integer) return Integer
   is
      begin
        for i in 2..n loop
            answer := answer * i; -- calculate the factorial
        end loop;

        return answer; 
   end calc_factorial;

begin                                          
   Put("To compute n!, enter n: ");              -- Prompt for input
   Get(n);                                       -- Input
   Put(n); Put("! = "); Put(calc_factorial(n));  -- Convert and output
   New_Line;
end factorial;

