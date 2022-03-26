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
end