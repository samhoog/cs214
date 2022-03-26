Script started on 2022-02-15 11:21:22-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ ruby split.rb [1Pcat[C[C[C[C[C[C[C[C[C[C[K[K[Kadb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: February 15, 2022
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
   procedure split(The_String : in String; Position : in Integer; First_Part : out String; Last_Part : out String)
   is
      begin
         Move(The_String(The_String'First .. Position), First_Part);
         Move(The_String(Position + 1 .. The_String'Last), Last_Part);

   end split;

begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   split(Astring, Pos, Part1, Part2);

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ gnatmake split.adb 
gnatmake: "split" up to date.
]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ ./split 
To split a string, enter the string: hello
Enter the split position: 1
The first part is h                                       
 and the second part is ello                                    
]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ ./split 
To split a string, enter the string: hello
Enter the split position: 4
The first part is hell                                    
 and the second part is o                                       
]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ ./split 
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
]0;sth6@gold16: ~/cs/214/labs/06/ada[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/ada[00m$ exit

Script done on 2022-02-15 11:22:00-05:00 [COMMAND_EXIT_CODE="0"]
