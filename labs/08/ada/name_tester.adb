-- name_tester.adb "test-drives" the Name type with additional functions.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 10, 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

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

   procedure setFirst(theName : in Name, First in String) is
      begin
         theName.First := First;
      end setFirst;

   procedure setMiddle(theName : in Name, Middle in String) is
      begin
         theName.Middle := Middle;
      end setMiddle;

   procedure setLast(theName : in Name, Last in String) is
      begin
         theName.Last := Last;
      end setLast;

begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;

   setFirst(aName, "Samuel");
   setMiddle(aName, "Thomas");
   setLast(aName, "Hoogewind");
   
   Put(aName); New_line;

   Put("All tests passed!"); New_line;

end name_tester;

