Script started on 2022-02-04 14:54:03-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold07: ~/cs/214/projects/04/ruby[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ruby[00m$ cat factorial.rb 
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
 
 ]0;sth6@gold07: ~/cs/214/projects/04/ruby[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ruby[00m$ ruby factorial.rb

To compute n!, enter n: 3
3! = 6
]0;sth6@gold07: ~/cs/214/projects/04/ruby[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ruby[00m$ ruby factorial.rb

To compute n!, enter n: 0
0! = 1
]0;sth6@gold07: ~/cs/214/projects/04/ruby[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ruby[00m$ ruby factorial.rb

To compute n!, enter n: 6
6! = 720
]0;sth6@gold07: ~/cs/214/projects/04/ruby[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/ruby[00m$ exit
exit

Script done on 2022-02-04 14:54:27-05:00 [COMMAND_EXIT_CODE="0"]
