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
