Script started on 2022-03-21 18:32:50-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="173" LINES="12"]
]0;sth6@gold30: ~/cs/214/projects/09/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ruby[00m$ cat t[KTemperature.rb Tep[KmperatureTester.rb 
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
end# TemperatureTester.rb tests class Temperature and its operations
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

]0;sth6@gold30: ~/cs/214/projects/09/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ruby[00m$ ruby TemperatureTester.rb 
/home/sth6/cs/214/projects/09/ruby/Temperature.rb:107: warning: string literal in condition
/home/sth6/cs/214/projects/09/ruby/Temperature.rb:107: warning: string literal in condition
0 F
!00   100 C
2.5
0.0 F     -17.78 C     255.22 K     
2.5 F     -16.39 C     256.61 K     
5.0 F     -15.0 C     258.0 K     
7.5 F     -13.61 C     259.39 K     
10.0 F     -12.22 C     260.78 K     
12.5 F     -10.83 C     262.17 K     
15.0 F     -9.44 C     263.56 K     
17.5 F     -8.06 C     264.94 K     
20.0 F     -6.67 C     266.33 K     
22.5 F     -5.28 C     267.72 K     
25.0 F     -3.89 C     269.11 K     
27.5 F     -2.5 C     270.5 K     
30.0 F     -1.11 C     271.89 K     
32.5 F     0.28 C     273.28 K     
35.0 F     1.67 C     274.67 K     
37.5 F     3.06 C     276.06 K     
40.0 F     4.44 C     277.44 K     
42.5 F     5.83 C     278.83 K     
45.0 F     7.22 C     280.22 K     
47.5 F     8.61 C     281.61 K     
50.0 F     10.0 C     283.0 K     
52.5 F     11.39 C     284.39 K     
55.0 F     12.78 C     285.78 K     
57.5 F     14.17 C     287.17 K     
60.0 F     15.56 C     288.56 K     
62.5 F     16.94 C     289.94 K     
65.0 F     18.33 C     291.33 K     
67.5 F     19.72 C     292.72 K     
70.0 F     21.11 C     294.11 K     
72.5 F     22.5 C     295.5 K     
75.0 F     23.89 C     296.89 K     
77.5 F     25.28 C     298.28 K     
80.0 F     26.67 C     299.67 K     
82.5 F     28.06 C     301.06 K     
85.0 F     29.44 C     302.44 K     
87.5 F     30.83 C     303.83 K     
90.0 F     32.22 C     305.22 K     
92.5 F     33.61 C     306.61 K     
95.0 F     35.0 C     308.0 K     
97.5 F     36.39 C     309.39 K     
100.0 F     37.78 C     310.78 K     
102.5 F     39.17 C     312.17 K     
105.0 F     40.56 C     313.56 K     
107.5 F     41.94 C     314.94 K     
110.0 F     43.33 C     316.33 K     
112.5 F     44.72 C     317.72 K     
115.0 F     46.11 C     319.11 K     
117.5 F     47.5 C     320.5 K     
120.0 F     48.89 C     321.89 K     
122.5 F     50.28 C     323.28 K     
125.0 F     51.67 C     324.67 K     
127.5 F     53.06 C     326.06 K     
130.0 F     54.44 C     327.44 K     
132.5 F     55.83 C     328.83 K     
135.0 F     57.22 C     330.22 K     
137.5 F     58.61 C     331.61 K     
140.0 F     60.0 C     333.0 K     
142.5 F     61.39 C     334.39 K     
145.0 F     62.78 C     335.78 K     
147.5 F     64.17 C     337.17 K     
150.0 F     65.56 C     338.56 K     
152.5 F     66.94 C     339.94 K     
155.0 F     68.33 C     341.33 K     
157.5 F     69.72 C     342.72 K     
160.0 F     71.11 C     344.11 K     
162.5 F     72.5 C     345.5 K     
165.0 F     73.89 C     346.89 K     
167.5 F     75.28 C     348.28 K     
170.0 F     76.67 C     349.67 K     
172.5 F     78.06 C     351.06 K     
175.0 F     79.44 C     352.44 K     
177.5 F     80.83 C     353.83 K     
180.0 F     82.22 C     355.22 K     
182.5 F     83.61 C     356.61 K     
185.0 F     85.0 C     358.0 K     
187.5 F     86.39 C     359.39 K     
190.0 F     87.78 C     360.78 K     
192.5 F     89.17 C     362.17 K     
195.0 F     90.56 C     363.56 K     
197.5 F     91.94 C     364.94 K     
200.0 F     93.33 C     366.33 K     
202.5 F     94.72 C     367.72 K     
205.0 F     96.11 C     369.11 K     
207.5 F     97.5 C     370.5 K     
210.0 F     98.89 C     371.89 K     
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ruby[00m$ ruby TemperatureTester.rb 
/home/sth6/cs/214/projects/09/ruby/Temperature.rb:107: warning: string literal in condition
/home/sth6/cs/214/projects/09/ruby/Temperature.rb:107: warning: string literal in condition
0 K
212 F
20,0
-459.4 F     -273.0 C     0.0 K     
-423.4 F     -253.0 C     20.0 K     
-387.4 F     -233.0 C     40.0 K     
-351.4 F     -213.0 C     60.0 K     
-315.4 F     -193.0 C     80.0 K     
-279.4 F     -173.0 C     100.0 K     
-243.4 F     -153.0 C     120.0 K     
-207.4 F     -133.0 C     140.0 K     
-171.4 F     -113.0 C     160.0 K     
-135.4 F     -93.0 C     180.0 K     
-99.4 F     -73.0 C     200.0 K     
-63.4 F     -53.0 C     220.0 K     
-27.4 F     -33.0 C     240.0 K     
8.6 F     -13.0 C     260.0 K     
44.6 F     7.0 C     280.0 K     
80.6 F     27.0 C     300.0 K     
116.6 F     47.0 C     320.0 K     
152.6 F     67.0 C     340.0 K     
188.6 F     87.0 C     360.0 K     
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ruby[00m$ ^C
]0;sth6@gold30: ~/cs/214/projects/09/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/ruby[00m$ exit

Script done on 2022-03-21 18:33:21-04:00 [COMMAND_EXIT_CODE="130"]
