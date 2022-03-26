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
