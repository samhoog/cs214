Script started on 2022-01-31 16:10:57-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ catlett     letter_grades.adb
-- letter_grades.adb calculates your letter grade
--
-- Input: The grade average
-- Precondition: The average is an integer 0-100
-- Output: The corrosponding letter grade
--
-- Completed by: Sam Hoogewind
-- Date: January 31, 2022
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

   average : Integer;
   grade : character;

   function LetterGrade(average : integer) return character
   is
      begin
         case (average / 10) is 
         when 10 => grade := 'A';
         when 9 => grade := 'A';
         when 8 => grade := 'B';
         when 7 => grade := 'C';
         when 6 => grade := 'D';
         when others => grade := 'F';

         end case;
         
         return grade;
   end LetterGrade;

begin                                          
   Put("Enter your grade average: ");           -- Prompt for input
   Get(average);                           -- Input
   Put( LetterGrade(average) );                 -- Convert and output
   New_Line;
end letter_grades;

]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ gnatmake letter_grades.adb 
gnatmake: "letter_grades" up to date.
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 95
A
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 84
B
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 76
C
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 68
D
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 35
F
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ ./letter_grades 
Enter your grade average: 100
A
]0;sth6@remotel2: ~/cs/214/projects/03/ada[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ada[00m$ exit
exit

Script done on 2022-01-31 16:11:41-05:00 [COMMAND_EXIT_CODE="0"]
