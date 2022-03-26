#! /usr/bin/ruby
# factorial.rb calculates the factorial of n
#
# Completed by: Sam Hoogewind
# Date: February 4, 2022
#
# Input:  n
# Precondition: n is 0 or greater
# Output: the factorial of n


def factorial(n)
    answer = 1 
    for i in 2..n
        answer *= i # calculate the factorial
    end
    return answer
end

if __FILE__ == $0
    print "\nTo compute n!, enter n: " # get input
    n = gets.to_i
     
    puts "#{ n }! = #{ factorial(n) }" # output n!
 end
 
 