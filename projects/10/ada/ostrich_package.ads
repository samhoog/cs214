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
