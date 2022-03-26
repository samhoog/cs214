Script started on 2022-02-23 14:06:46-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
c]0;sth6@gold15: ~/cs/214/projects/07/ruby[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/ruby[00m$ cat arrays.rb 
# arrays.rb prompts the user for a array size, then lets them input values before printing them back out.
# Precondition: theArray is an array of numbers
# Output: the list of the values in theArray
#
# Completed by: Sam Hoogewind
# Date: February 23, 2022
########################################################

###############################################
# printArray() is a method that outputs a given array of doubles.
# Receive: anArray, an array of doubles.
################################################

def printArray(anArray)
    puts "Your array values are:"
    anArray.each{|i| puts(i)} # for each item in the array output it
 end
 
 ###############################################
 # readArray() is a method that reads in values from the user into anArray
 # Receive: anArray, an array of doubles.
 ################################################
 
 def readArray(anArray)
    puts "Please enter the array values:" # prompt for the array values
    for i in 1..anArray.size() # loop through each empty slot
       anArray[i] = gets.to_f  # get a float from the user
    end
 end
 
 def main
    print "How many values would you like in the array? " # prompt for the size
    size = gets.to_i
    if size < 0 then # if the size is less than 0 throw an error
        puts "The size can't be negative."
    else # otherwise it's a valid size
        anArray = Array.new(size) # instigate the array
        readArray(anArray) # read in the values
        printArray(anArray) # print the values
    end
    
 end
 
 main
 
 ]0;sth6@gold15: ~/cs/214/projects/07/ruby[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/ruby[00m$ ruby arrays.rb 
How many values would you like in the array? -5
The size can't be negative.
]0;sth6@gold15: ~/cs/214/projects/07/ruby[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/ruby[00m$ ruby arrays.rb 
How many values would you like in the array? 4
Please enter the array values:
3
4.6
94
0
Your array values are:

3.0
4.6
94.0
0.0
]0;sth6@gold15: ~/cs/214/projects/07/ruby[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/ruby[00m$ ruby arrays.rb 
How many values would you like in the array? 2
Please enter the array values:
45.68
94.5
Your array values are:

45.68
94.5
]0;sth6@gold15: ~/cs/214/projects/07/ruby[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/ruby[00m$ exit

Script done on 2022-02-23 14:07:07-05:00 [COMMAND_EXIT_CODE="0"]
