Script started on 2022-03-10 13:21:12-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
]0;sth6@gold19: ~/cs/214/projects/08/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/ada[00m$ cat name_tester.adb
-- name_tester.adb "test-drives" the Name type with additional functions.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 10, 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 9;

  type Name is 
    record
      MyFirst : String(1..NAME_SIZE);
      MyMiddle : String(1..NAME_SIZE);
      MyLast : String(1..NAME_SIZE);
    end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  procedure Init (TheName : out name; First, Middle, Last : in String) is
  begin
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  function getFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end getFirst;


  function getMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end getMiddle;


  function getLast(TheName : in Name) return String is
   begin
      return TheName.MyLast;
   end getLast;


  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  function getFullName(theName : in Name) return String is
   begin
      return theName.myFirst & " " & theName.MyMiddle & " " & theName.MyLast;
   end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

   procedure Put(theName : in Name) is
      begin
         Put(theName.myFirst);
         Put(" ");
         Put(theName.MyMiddle);
         Put(" ");
         Put(TheName.MyLast);
      end Put;

  --------------------------------------------------
  -- setFirst(Name) sets myFirst to a new name     -
  -- PRE: theName has been initialized.            -
  -- Receive: theName, a Name and First, a String. -
  --------------------------------------------------

   procedure setFirst(theName : out Name; First : in String) is
      begin
         theName.myFirst := First;
      end setFirst;

  ---------------------------------------------------
  -- setMiddle(Name) sets myMiddle to a new name    -
  -- PRE: theName has been initialized.             -
  -- Receive: theName, a Name and Middle, a String. -
  ---------------------------------------------------

   procedure setMiddle(theName : out Name; Middle : in String) is
      begin
         theName.myMiddle := Middle;
      end setMiddle;

  -------------------------------------------------
  -- setLast(Name) sets myLast to a new name      -
  -- PRE: theName has been initialized.           -
  -- Receive: theName, a Name and Last, a String. -
  -------------------------------------------------

   procedure setLast(theName : out Name; Last : in String) is
      begin
         theName.myLast := Last;
      end setLast;

  ---------------------------------------------------------------
  -- lfmi(Name) returns a name in Last-First-MiddleInitial form -
  -- PRE: theName has been initialized.                         -
  -- Receive: theName, a Name                                   -
  -- Output: The name in Last-First-MiddleInitial form          -
  ---------------------------------------------------------------

   function lfmi(theName : in Name) return String is
      begin
         return theName.myLast & ", " & theName.myFirst & " " & theName.myMiddle(theName.myMiddle'First) & ".";
      end lfmi;

  ----------------------------------------------
  -- read(Name) reads in a new name into aName -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name                  -
  ----------------------------------------------

   procedure read(theName : in Name) is
      first : String(1 .. NAME_SIZE);
      middle : String(1 .. NAME_SIZE);
      last : String(1 .. NAME_SIZE);
      begin
         Put("Make sure your names are 9 characters long with spaces."); New_line;
         Get(first);
         Get(middle);
         Get(last);
         setFirst(aName, first);
         setMiddle(aName, middle);
         setLast(aName, last);
      end read;

begin
   Init(aName, "John     ", "Paul     ", "Jones    ");

   pragma Assert( getFirst(aName) = "John     ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul     ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones    ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John      Paul      Jones    ", 
                    "getFullName() failed");

   Put(aName); New_line;

   -- set new names
   setFirst(aName, "Samuel   ");
   setMiddle(aName, "Thomas   ");
   setLast(aName, "Hoogewind");
   
   -- test setting the new names works
   pragma Assert( getFirst(aName) = "Samuel   ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Thomas   ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Hoogewind", "getLast() failed");
   pragma Assert( getFullName(aName) = "Samuel    Thomas    Hoogewind",
                  "getFulName() failed");
   Put(aName); New_line;
   
   -- test lfmi()
   Put(lfmi(aName)); New_line;
   pragma Assert ( lfmi(aName) = "Hoogewind, Samuel    T.");
   
   -- test read()
   read(aName);
   Put(aName); New_line;
   Put(lfmi(aName)); New_line;

   Put("All tests passed!"); New_line;

end name_tester;

]0;sth6@gold19: ~/cs/214/projects/08/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/ada[00m$ gnatmake name_tester.adb -gnata
x86_64-linux-gnu-gcc-7 -c -gnata name_tester.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;sth6@gold19: ~/cs/214/projects/08/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/ada[00m$ ./name_tester 
John      Paul      Jones    
Samuel    Thomas    Hoogewind
Hoogewind, Samuel    T.
Make sure your names are 9 characters long with spaces.
Justin   
Andrew   
Voss     
Justin    Andrew    Voss     
Voss     , Justin    A.
All tests passed!
]0;sth6@gold19: ~/cs/214/projects/08/ada[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/ada[00m$ exit

Script done on 2022-03-10 13:21:36-05:00 [COMMAND_EXIT_CODE="0"]
