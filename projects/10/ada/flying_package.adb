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

end Flying_Package;