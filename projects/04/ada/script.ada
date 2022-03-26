Script started on 2022-02-04 15:11:35-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ cat factorial.adb
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

]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ gnatmake factorial
gnatmake: "factorial" up to date.
]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ ./factorial
To compute n!, enter n: 0
          0! =           1
]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ ./factorial
To compute n!, enter n: 5
          5! =         120
]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ ./factorial
To compute n!, enter n: 7
          7! =        5040
]0;sth6@gold07: ~/cs/214/projects/04/ada[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ada[00m$ exit
exit

Script done on 2022-02-04 15:11:57-05:00 [COMMAND_EXIT_CODE="0"]
