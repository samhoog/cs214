-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927; -- setting a constant for pi
   begin
      return PI * r ** 2; -- compute the area
   end circleArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a circle,"); -- prompt the user
   Put("enter its radius: ");
   Get(radius);

   area := circleArea(radius); -- call the area function to calculate it

   New_Line;
   Put("The circle's area is "); -- output the area
   Put(area);
   New_Line; New_Line; 

   Put("The circle's area is "); -- output the area using a different method
   Put(area, 1, 15, 0);
   New_Line; New_Line; 
end circle_area;