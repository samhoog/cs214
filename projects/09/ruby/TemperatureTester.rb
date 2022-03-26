# TemperatureTester.rb tests class Temperature and its operations
#
# Completed by: Sam Hoogewind
# Date: March 21, 2022
####################################################

require 'test/unit/assertions'
require './Temperature'
include Test::Unit::Assertions

def testTemperature
    # instigate the needed temperatures
    tempTemp = Temperatures::Temperature.new(0.0, "F")
    baseTemp = Temperatures::Temperature.new(0.0, "F")
    limitTemp = Temperatures::Temperature.new(0.0, "F")
    # read them in from the user
    baseTemp = baseTemp.readTemp
    limitTemp = limitTemp.readTemp
    # read in the step value
    stepValue = gets.chomp.to_f

    while tempTemp.lessThan(baseTemp, limitTemp) # while you are less than the limit
        tempTemp = baseTemp.toFahrenheit # convert to each scale and print them
        tempTemp.printTemp

        tempTemp = baseTemp.toCelsius
        tempTemp.printTemp

        tempTemp = baseTemp.toKelvin
        tempTemp.printTemp

        print("\n")

        baseTemp = baseTemp.raise(stepValue) # increment by the step value
    end
   
    print "All tests passed!\n"
end

testTemperature

