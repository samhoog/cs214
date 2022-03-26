Script started on 2022-01-15 11:18:31-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;sth6@gold03: ~/cs/214/projects/01/ruby[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ruby[00m$ cat rectangle_area.rb
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its width and height
# 
# Input: the width and height of a rectangle
# Precondition: the width and height are not negative
# Output: the area of the rectangle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: January 15, 2022
###############################################################

# function rectangleArea returns a rectangle's area, given its width and height
# Parameters: w and h, numbers
# Precondition: w and h > 0.
# Returns: the area of a rectangle whose width is w and height is h.
def rectangleArea(w, h)
    w * h
end

if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its width: " # get the width from the user
   width = gets.chomp.to_f
   print " enter its height: " # get the height from the user
   height = gets.chomp.to_f 
   print "The rectangle's area is: "
   puts rectangleArea(width, height) # output the area
end]0;sth6@gold03: ~/cs/214/projects/01/ruby[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ruby[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 4
 enter its height: 7
The rectangle's area is: 28.0
]0;sth6@gold03: ~/cs/214/projects/01/ruby[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ruby[00m$ re uby rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 2
 enter its height: 6
The rectangle's area is: 12.0
]0;sth6@gold03: ~/cs/214/projects/01/ruby[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ruby[00m$ ruby rectangle_areAZ  A.  a.rb
To compute the area of a rectangle,
 enter its width: 2 9
 enter its height: 7
The rectangle's area is: 63.0
]0;sth6@gold03: ~/cs/214/projects/01/ruby[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/ruby[00m$ exit
exit

Script done on 2022-01-15 11:19:05-05:00 [COMMAND_EXIT_CODE="0"]
