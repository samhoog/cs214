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
