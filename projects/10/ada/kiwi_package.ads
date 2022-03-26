-- Kiwi_package.ads gives Kiwi-related declarations,
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
