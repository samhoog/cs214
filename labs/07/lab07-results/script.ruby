Script started on 2022-02-21 16:35:45-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="181" LINES="12"]
c]0;sth6@remotel3: ~/cs/214/labs/07/ruby[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ruby[00m$ cat average.rb 
# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: February 21, 2022
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################

def sum(anArray)
   total = 0
   anArray.each{|i| total += i}
   return total
end

###############################################
# average() computes the average of the values in an array. 
# Receive: anArray, an array of doubles.              
# Return: the average of the values in anArray.
################################################

def average(anArray)
   if anArray.empty?
      return 0.0
   else 
      return sum(anArray) / anArray.size
   end
end

def main
   # Define array0 as an Array containing no values
   array0 = []
   # Define array1 as an Array containing 9.0, 8.0, 7.0, 6.0
   array1 = [9.0, 8.0, 7.0, 6.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main

]0;sth6@remotel3: ~/cs/214/labs/07/ruby[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ruby[00m$ cat average.rb [Kruby average.rb 
sum 0 is: 0
sum 1 is: 30.0
average 0 is: 0.0
average 1 is: 7.5
]0;sth6@remotel3: ~/cs/214/labs/07/ruby[01;32msth6@remotel3[00m:[01;34m~/cs/214/labs/07/ruby[00m$ exit

Script done on 2022-02-21 16:35:53-05:00 [COMMAND_EXIT_CODE="0"]
