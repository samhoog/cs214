-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The width and height of the rectangle.
-- Precondition: The radius is a positive number.
-- Output: The area of the rectangle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: January 15, 2022
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   width, height, area : float; 

   -- function rectangleArea computes a rectangle's area, given its width and height
   -- Parameter: w and h, floats
   -- Precondition: w and h >= 0.0
   -- Return: the area of the rectangle whose width is w and height is h
   ----------------------------------------------------
   function rectangleArea(w: in float; h: in float) return float is 
   begin
      return w * h; -- calculate the area
   end rectangleArea;

begin                           
   New_Line;
   Put_Line("To compute the area of a rectangle,");
   Put("enter its width: "); -- get the width from the user
   Get(width);

   Put("enter its height: "); -- get the height from the user
   Get(height);

   area := rectangleArea(width, height); -- calculate the area

   New_Line;
   Put("The rectangle's area is "); -- output the result
   Put(area);
   New_Line; New_Line; 

end rectangle_area;