Script started on 2022-01-27 12:52:11-05:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";
   charsRead : Natural;

   function YearCode(year : string) return Integer
   is
      begin
         if year = "freshman " then 
            return 1;
         elsif year = "sophomore" then
            return 2;
         elsif year = "junior   " then 
            return 3;
         elsif year = "senior   " then
            return 4;
         else 
            return 0;
         end if;
   end YearCode;

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ gnatmake year_codes.adb
gnatmake: "year_codes" up to date.
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ ./year_codes
Enter your academic year: freshman
          1
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ ,.year      ./year_codes
Enter your academic year: sophomore
          2
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ ./year_codes
Enter your academic year: junior
          3
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ ./year_codes
Enter your academic year: senior
          4
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ ./year_codes
Enter your academic year: test
          0
]0;sth6@gold19: ~/cs/214/labs/03/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ada[00m$ exit
exit

Script done on 2022-01-27 12:52:54-05:00 [COMMAND_EXIT_CODE="0"]
