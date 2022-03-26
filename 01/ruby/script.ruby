Script started on 2022-01-13 13:25:02-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ cat circle_area.rb
#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: January 13, 2022
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927 # Set the constant variable PI
def circleArea(r)
    PI * r ** 2 # Calculate the area of the circle
end

if __FILE__ == $0
   puts "To compute the area of a circle," # Output a line to the terminal
   print " enter its radius: " # Prompt the user for an input
   radius = gets.chomp.to_f
   print "The circle's area is: "
   puts circleArea(radius) # Output the answer
end]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 1
The circle's area is: 3.1415927
]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2
The circle's area is: 12.5663708
]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 2.5
The circle's area is: 19.634954375
]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ ruby circle_area.rb
To compute the area of a circle,
 enter its radius: 4.99999
The circle's area is: 78.53950334104418
]0;sth6@gold19: ~/cs/214/01/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/01/ruby[00m$ exit
exit

Script done on 2022-01-13 13:25:48-05:00 [COMMAND_EXIT_CODE="0"]
