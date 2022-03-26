-- temperature_tester.adb "test-drives" the Temperature type.
--
-- Completed by: Sam Hoogewind
-- Date: March 18, 2022
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Temperature_Package; use Temperature_Package;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure temperature_tester is
    baseTemp : Temperature_Package.Temperature;
    limitTemp : Temperature_Package.Temperature;
    tempTemp : Temperature_Package.temperature;
    stepValue : Float;
begin

    baseTemp := readTemp(baseTemp); -- read in the baseTemp
    limitTemp := readTemp(limitTemp); -- read in the limitTemp
    Put("Enter your step value: ");
    Get(stepValue); -- read in the stepValue
    while lessThan(baseTemp, limitTemp) loop -- while the base is less than the limit
        tempTemp := baseTemp;
        tempTemp := toFahrenheit(tempTemp); -- Use a temporary Temp to convert and print each unit
        Put(tempTemp);
        tempTemp := toCelsius(tempTemp);
        Put(tempTemp);
        tempTemp := toKelvin(tempTemp);
        Put(tempTemp); New_line;
        baseTemp := raiseTemp(baseTemp, stepValue); -- update the base temp with the stepLimit
    end loop;

    Put("All tests passed!"); New_line;
end temperature_tester;

