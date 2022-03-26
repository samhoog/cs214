# Temperature.rb is a module for our 'Temperature' type-abstraction.
#
# Completed by: Sam Hoogewind
# Date: March 21, 2022
######################################################

module Temperatures
    class Temperature

        def initialize(degrees, scale)
            if isValid(degrees, scale)
                @degrees, @scale = degrees, scale
            else 
                @degrees = 0.0
                @scale = 'X'
            end
        end
    
        attr_reader :degrees, :scale
    
        def printTemp
            print @degrees.round(2).to_s + " " + @scale + "     "
        end

        # convert temperature to fahrenheit
        def toFahrenheit
            if @scale == 'C'
                temperature = Temperature.new(((9.0 / 5.0) * @degrees) + 32.0, 'F')
                return temperature
            elsif @scale == 'K'
                temperature = Temperature.new(((9.0 / 5.0) * (@degrees - 273.0)) + 32.0, 'F')
                return temperature
            else
                temperature = Temperature.new(@degrees, 'F')
                return temperature
            end
        end

        # convert temperature to celsius
        def toCelsius
            if @scale == 'F'
                temperature = Temperature.new((5.0 / 9.0) * (@degrees - 32.0), 'C')
                return temperature
            elsif @scale == 'K'
                temperature = Temperature.new(@degrees - 273.0, 'C')
                return temperature
            else
                temperature = Temperature.new(@degrees, 'C')
                return temperature
            end
        end

        # convert temperature to kelvin
        def toKelvin
            if @scale == 'F'
                temperature = Temperature.new(((5.0 / 9.0) * (@degrees - 32.0)) + 273.0, 'K')
                return temperature
            elsif @scale == 'C'
                temperature = Temperature.new(@degrees + 273.0, 'K')
                return temperature
            else
                temperature = Temperature.new(@degrees, 'K')
                return temperature
            end
        end

        # raise the temperature by given degrees
        def raise(degrees)
            temperature = Temperature.new(@degrees + degrees, @scale)
            return temperature
        end

        # lower the temperature by given degrees
        def lower(degrees)
            temperature = Temperature.new(@degrees - degrees, @scale)
            return temperature
        end

        # check if two temperatures are equal
        def equals(temp1)
            temp1 = temp1.toFahrenheit
            temp2 = self.toFahrenheit
            if temp1.degrees == temp2.degrees
                return true 
            else
                return false
            end
         end

        # check if one temperature is less than the other
        def lessThan(temp1, temp2)
            temp1 = temp1.toFahrenheit
            temp2 = temp2.toFahrenheit
            if temp1.degrees < temp2.degrees
                return true 
            else
                return false
            end
        end

        # check if a given temperature is valid
        def isValid(degrees, scale)
            if scale == "F" or "C" or "K"
                return true
            else
                return false
            end
        end

        # read in a new temperature
        def readTemp
            temp = gets.chomp
            tempArray = temp.split(" ")
            degrees = tempArray[0].to_f
            scale = tempArray[1]
            
            temperature = Temperature.new(degrees, scale)
            return temperature
        end
    end
end