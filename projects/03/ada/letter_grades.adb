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

