Script started on 2022-02-18 13:04:20-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ cat quadratic.adb
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

]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ gnatmake quadratic.adb 
x86_64-linux-gnu-gcc-7 -c quadratic.adb
x86_64-linux-gnu-gnatbind-7 -x quadratic.ali
x86_64-linux-gnu-gnatlink-7 quadratic.ali
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ ./quadratic 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 0
Enter the second coefficient: 5
Enter the third coefficient: 10
quadraticRoots(): a is zero! 
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ ./quadratic 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 1
Enter the second coefficient: 1
Enter the third coefficient: 10
quadraticRoots(): b^2 - 4ac is negative! 
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ ./quadratic 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 2
Enter the second coefficient: 5
Enter the third coefficient: 2
The first root is -5.00000E-01 and the second root is -2.00000E+00
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ ./quadratic 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 2
Enter the second coefficient: 6
Enter the third coefficient: 2
The first root is -3.81966E-01 and the second root is -2.61803E+00
]0;sth6@gold18: ~/cs/214/projects/06/ada[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ada[00m$ exit

Script done on 2022-02-18 13:04:53-05:00 [COMMAND_EXIT_CODE="0"]
