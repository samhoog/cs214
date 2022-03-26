Script started on 2022-03-24 15:12:52-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
c]0;sth6@gold30: ~/cs/214/projects/10/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/10/ada[00m$ cat flying_package.ads dlt[K[K[Kflying_package.adb walking_package.ads walking_package.adb kiwi_package.ads kiwi_package.adb penguin_package.ads penguin_package.adb ostrich_package.ads ostrich_package.adb goose_package.ads goose_package.abd [K[K[Kbd [K[K[Kdb duck_package.ads goose_package.[K[K[K[K[K[K[K[K[K[K[K[K[K[Kdy[Kuck_package.adb owl_package.ads owl_package.adb bird_package.ads bird_package.adb birds.ab d
-- flying_package.ads gives Flying-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Flying_Package is
    type Flying_Type is new Bird_Type with private;

-----------------------------------------------------
 -- Determine type of a Flying Bird                  -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Flying, a Flying_Type.                -
 -- Return: "Flying".                                -
 -----------------------------------------------------
    function Type_Name(A_Flying : in Flying_Type) return String;

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Flying, a Flying_Type.               -
 -- Return: a default movement ("eats bird seed").  -
 ----------------------------------------------------
    function Movement(A_Flying : in Flying_Type) return String;

private
    type Flying_Type is new Bird_Type with
        record
            null;
        end record;

end Flying_Package;
-- flying_package.adb gives Flying-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Package is

 -----------------------------------------------------
 -- Determine type of a Flying Bird                  -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Flying, a Flying_Type.                -
 -- Return: "Flying".                                -
 -----------------------------------------------------
    function Type_Name(A_Flying : in Flying_Type) return String is
    begin
        return "Flying";
    end Type_Name;

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Flying, a Flying_Type.               -
 -- Return: a flying movement ("flew past").  -
 ----------------------------------------------------
    function Movement(A_Flying : in Flying_Type) return String is
    begin
        return "flew past";
    end Movement;

end Flying_Package;-- walking_package.ads gives Walking-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Walking_Package is
    type Walking_Type is new Bird_Type with private;

-----------------------------------------------------
 -- Determine type of a Walking Bird                  -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Walking, a Walking_Type.                -
 -- Return: "Walking".                                -
 -----------------------------------------------------
    function Type_Name(A_Walking : in Walking_Type) return String;

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Walking, a Walking_Type.               -
 -- Return: a default movement ("walked past").  -
 ----------------------------------------------------
    function Movement(A_Walking : in Walking_Type) return String;

private
    type Walking_Type is new Bird_Type with
        record
            null;
        end record;

end Walking_Package;
-- walking_package.adb gives Walking-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Package is

 -----------------------------------------------------
 -- Determine type of a Walking Bird                  -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Walking, a Walking_Type.                -
 -- Return: "Walking".                                -
 -----------------------------------------------------
    function Type_Name(A_Walking : in Walking_Type) return String is
    begin
        return "Walking";
    end Type_Name;

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Walking, a Walking_Type.               -
 -- Return: a walking movement ("walked past").  -
 ----------------------------------------------------
    function Movement(A_Walking : in Walking_Type) return String is
    begin
        return "walked past";
    end Movement;

end Walking_Package;-- Kiwi_package.ads gives Kiwi-related declarations,
--
--  and derives Kiwi from Walking Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Kiwi_Package is

 type Kiwi_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())         -
 -- Receive: A_Kiwi, a Kiwi.                      -
 -- Return: "Shrillll!"                                 -
 ----------------------------------------------------
    function  Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Kiwi                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, a Kiwi.                       -
 -- Return: "Kiwi".                                 -
 -----------------------------------------------------
    function  Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
    type Kiwi_Type is new Walking_Type with
        record
            null;
        end record;


end Kiwi_Package;
-- Kiwi_package.adb gives Kiwi-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

package body Kiwi_Package is

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())         -
 -- Receive: A_Kiwi, a Kiwi_Type.                 -
 -- Return: "Shrilll!"                                 -
 ----------------------------------------------------
    function Call(A_Kiwi : in Kiwi_Type) return String is
    begin
     return "Shrilll!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Kiwi                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, a Kiwi_Type.                  -
 -- Return: "Kiwi".                                 -
 -----------------------------------------------------
    function Type_Name(A_Kiwi : in Kiwi_Type) return String is
    begin
     return "Kiwi";
    end Type_Name;


end Kiwi_Package;
-- penguin_package.ads gives penguin-related declarations,
--
--  and derives Penguin from Walking Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Penguin_Package is

 type Penguin_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())         -
 -- Receive: A_Penguin, a Penguin.                      -
 -- Return: "Bleeeat!"                                 -
 ----------------------------------------------------
    function  Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a Penguin.                       -
 -- Return: "Penguin".                                 -
 -----------------------------------------------------
    function  Type_Name(A_Penguin : in Penguin_Type) return String;

private
    type Penguin_Type is new Walking_Type with
        record
            null;
        end record;


end Penguin_Package;
-- Penguin_package.adb gives Penguin-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

package body Penguin_Package is

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())         -
 -- Receive: A_Penguin, a Penguin_Type.                 -
 -- Return: "Bleeeat!"                                 -
 ----------------------------------------------------
    function Call(A_Penguin : in Penguin_Type) return String is
    begin
     return "Bleeeat!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a Penguin_Type.                  -
 -- Return: "Penguin".                                 -
 -----------------------------------------------------
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
     return "Penguin";
    end Type_Name;


end Penguin_Package;
-- ostrich_package.ads gives Ostrich-related declarations,
--
--  and derives Ostrich from Walking Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Walking_Package; use Walking_Package;

package Ostrich_Package is

 type Ostrich_Type is new Walking_Type with private;


 ----------------------------------------------------
 -- An Ostrich's Call (Over-rides Bird.Call())      -
 -- Receive: A_Ostrich, an Ostrich.                 -
 -- Return: "Hisss!"                                -
 ----------------------------------------------------
    function  Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Ostrich                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, an Ostrich.                  -
 -- Return: "Ostrich".                               -
 -----------------------------------------------------
    function  Type_Name(A_Ostrich : in Ostrich_Type) return String;

private
    type Ostrich_Type is new Walking_Type with
        record
            null;
        end record;


end Ostrich_Package;
-- Ostrich_package.adb gives Ostrich-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

package body Ostrich_Package is

 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())         -
 -- Receive: A_Ostrich, a Ostrich_Type.                 -
 -- Return: "Hisss!"                                 -
 ----------------------------------------------------
    function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
     return "Hisss!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Ostrich                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, a Ostrich_Type.                  -
 -- Return: "Ostrich".                                 -
 -----------------------------------------------------
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
     return "Ostrich";
    end Type_Name;


end Ostrich_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Goose_Package is

 type Goose_Type is new Flying_Type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
    function  Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
    function  Type_Name(A_Goose : in Goose_Type) return String;

private
    type Goose_Type is new Flying_Type with
        record
            null;
        end record;


end Goose_Package;
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
    function Call(A_Goose : in Goose_Type) return String is
    begin
     return "Honk!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
    function Type_Name(A_Goose : in Goose_Type) return String is
    begin
     return "Goose";
    end Type_Name;


end Goose_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Duck_Package is
    type Duck_Type is new Flying_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
    function  Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
    function  Type_Name(A_Duck : in Duck_Type) return String;

private
    type Duck_Type is new Flying_Type with
        record
            null;
        end record;

end Duck_Package;
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function Call(A_Duck : in Duck_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function Type_Name(A_Duck : in Duck_Type) return String is
   begin
    return "Duck";
   end Type_Name;

end Duck_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Owl_Package is
    type Owl_Type is new Flying_Type with private;


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
    function Call(A_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
    function Type_Name(A_Owl : in Owl_Type) return String;

private
    type Owl_Type is new Flying_Type with
        record
            null;
        end record;

end Owl_Package;
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
    function Call(A_Owl : in Owl_Type) return String is
    begin
        return "Whoo!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
    function Type_Name(A_Owl : in Owl_Type) return String is
    begin
        return "Owl";
    end Type_Name;

end Owl_Package;
-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

package Bird_Package is
    type Bird_Type is tagged private;

 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
    procedure Init(A_Bird : out Bird_Type; Name : in String);

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
    function  Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
    function  Call(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
    function  Type_Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class);

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Flying, a Flying_Type.               -
 -- Return: a default movement ("eats bird seed").  -
 ----------------------------------------------------
    function Movement(A_Bird : in Bird_Type) return String;
    
private
    type Bird_Type is
        tagged record
            My_Name : String(1..6);
        end record;

end Bird_Package;
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
    procedure Init(A_Bird : out Bird_Type; Name : in String) is
    begin
        A_Bird.My_Name := Name;
    end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------\
    function Name(A_Bird : in Bird_Type) return String is
    begin
        return A_Bird.My_Name;
    end Name;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
    function Call(A_Bird : in Bird_Type) return String is
    begin
        return "Squawwwwwwk!";
    end Call;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
    function Type_Name(A_Bird : in Bird_Type) return String is
    begin
        return "Bird";
    end Type_Name;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
    procedure Put(A_Bird : in Bird_Type'Class) is
    begin
        Put( Name(A_Bird) );
        Put( ' ' );
        Put( Type_Name(A_Bird) );
        Put( " just ");
        Put ( Movement(A_Bird) );
        Put( " and said " );
        Put('"');
        Put( Call(A_Bird) );
        Put('"');
    end Put;

 ----------------------------------------------------
 -- A Bird's Movement                               -
 -- Receive: A_Flying, a Flying_Type.               -
 -- Return: a default movement ("eats bird seed").  -
 ----------------------------------------------------
    function Movement(A_Bird : in Bird_Type) return String is
    begin
        return "eats bird seed";
    end Movement;

end Bird_Package;

cat: birds.abd: No such file or directory
]0;sth6@gold30: ~/cs/214/projects/10/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/10/ada[00m$ cat birds.add[Kvb[K[Kb
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Sam Hoogewind
-- Date: March 24, 2022
-----------------------------------------------------

with Bird_Package,
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      Ostrich_Package,
      Penguin_Package,
      Kiwi_Package,
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Ostrich_Package,
      Penguin_Package,
      Kiwi_Package,
      Ada.Text_IO;


procedure Birds is

 Bird1 : Bird_Type;       -- base class
 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Ostrich_Type;     -- derived class 4
 Bird6 : Penguin_Type;     -- derived class 5
 Bird7 : Kiwi_Type;       -- derived class 6

begin
   Put("Welcome to the Bird Park!"); New_Line;
   Init(Bird1, "Tweety");
   Put(Bird1); New_Line;

   Init(Bird2, "Donald");
   Put(Bird2); New_Line;

   Init(Bird3, "Mother");
   Put(Bird3); New_Line;

   Init(Bird4, "Woodsy");
   Put(Bird4); New_Line;

   Init(Bird5, "Oliver");
   Put(Bird5); New_Line;

   Init(Bird6, "Flippy");
   Put(Bird6); New_Line;

   Init(Bird7, "Doduo ");
   Put(Bird7); New_Line;

 New_Line;
end Birds;

]0;sth6@gold30: ~/cs/214/projects/10/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/10/ada[00m$ gnatmake birds.adb 
gnatmake: "birds" up to date.
]0;sth6@gold30: ~/cs/214/projects/10/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/10/ada[00m$ ./birds 
Welcome to the Bird Park!
Tweety Bird just eats bird seed and said "Squawwwwwwk!"
Donald Duck just flew past and said "Quack!"
Mother Goose just flew past and said "Honk!"
Woodsy Owl just flew past and said "Whoo!"
Oliver Ostrich just walked past and said "Hisss!"
Flippy Penguin just walked past and said "Bleeeat!"
Doduo  Kiwi just walked past and said "Shrilll!"

]0;sth6@gold30: ~/cs/214/projects/10/ada[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/10/ada[00m$ exit

Script done on 2022-03-24 15:14:38-04:00 [COMMAND_EXIT_CODE="0"]
