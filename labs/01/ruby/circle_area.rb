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
end