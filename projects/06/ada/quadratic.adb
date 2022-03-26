-- quadratic.adb calculates the roots of a quadratic equation
-- Input: The three coefficients of the equation
-- Output: The roots of the equation, or a corrosponding error
--
-- Completed by: Sam Hoogewind
-- Date: February 15. 2022
--------------------------------------------------------------

with Ada.Text_IO, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Numerics.Elementary_Functions, Ada.Float_Text_IO;

procedure quadratic is

   a, b, c, arg, Root1, Root2 : Float; -- instigate the variables

   ------------------------------------------------
   -- quadratic() calculates the quadratic roots according to the equation specified          
   -- Receive: a, b, c, the coefficients of the equation       
   -- Passback: First_Root - the first quadratic root,
   --           Second_Root - the second quadratic root.
   ------------------------------------------------
   procedure quadratic(a : in Float; b : in Float; c : in Float; First_Root : out Float; Second_Root : out Float)
   is
      begin
         if a /= 0.0 then -- if x^2 isn't 0
            arg := b ** 2 - (4.0 * a * c); -- calculate the part under the radical
            if arg >= 0.0 then -- if the part under the radical is greater than or equal to 0
               First_Root := (-b + sqrt(arg)) / (2.0 * a); -- calculate each root
               Second_Root := (-b - sqrt(arg)) / (2.0 * a);
            else -- otherwise you have imaginary numbers, so print an error abd set the roots to 0
               Put("quadraticRoots(): b^2 - 4ac is negative! ");
               First_Root := 0.0;
               Second_Root := 0.0;
            end if;
         else -- otherwise x^2 is 0, so print an error and set the roots to 0
            Put("quadraticRoots(): a is zero! ");
            First_Root := 0.0;
            Second_Root := 0.0;
         end if;

   end quadratic;

begin
   Put("To calculate the quadratic roots, please enter the equation: "); -- prompt for the equation
  
   Put("Enter the first coefficient: "); -- prompt for the first coefficient
   Get(a);

   Put("Enter the second coefficient: "); -- prompt for the second coefficient
   Get(b);

   Put("Enter the third coefficient: "); -- prompt for the third coefficient
   Get(c);

   quadratic(a, b, c, Root1, Root2); -- compute the results

   if Root1 /= 0.0 and Root2 /= 0.0 then
      Put("The first root is "); -- output the roots
      Put(Root1);
      Put(" and the second root is ");
      Put(Root2);
   end if;

end quadratic;

