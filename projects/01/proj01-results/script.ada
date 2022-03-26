Script started on 2022-01-15 10:44:12-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ cat cr  rectangle_area/ .adb
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

end rectangle_area;]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ ./rectangle a  _area

To compute the area of a rectangle,
enter its width: 2
enter its height: 6

The rectangle's area is  1.20000E+01

]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ .r /rectangle_area

To compute the area of a rectangle,
enter its width: 9
enter its height: 7

The rectangle's area is  6.30000E+01

]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its width: 2
enter its height: 2

The rectangle's area is  4.00000E+00

]0;sth6@gold03: ~/cs/214/projects/01/ada[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ada[00m$ exit
exit

Script done on 2022-01-15 10:45:12-05:00 [COMMAND_EXIT_CODE="0"]
