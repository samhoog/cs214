Script started on 2022-01-13 13:03:35-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ cat sc  circle_area.adb
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
end circle_area;]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ gnatmake circle_area
x86_64-linux-gnu-gcc-7 -c circle_area.adb
x86_64-linux-gnu-gnatbind-7 -x circle_area.ali
x86_64-linux-gnu-gnatlink-7 circle_area.ali
]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 1

The circle's area is  3.14159E+00

The circle's area is 3.141592741012573

]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2

The circle's area is  1.25664E+01

The circle's area is 12.566370964050293

]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ ./circle_area

To compute the area of a circle,
enter its radius: 2.5

The circle's area is  1.96350E+01

The circle's area is 19.634954452514648

]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ ./cirlc cle    cle_area 4.99999

To compute the area of a circle,
enter its radius: 4.99999

The circle's area is  7.85395E+01

The circle's area is 78.539505004882813

]0;sth6@gold19: ~/cs/214/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/ada[00m$ exit
exit

Script done on 2022-01-13 13:05:14-05:00 [COMMAND_EXIT_CODE="0"]
