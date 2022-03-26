Script started on 2022-02-03 12:51:33-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/labs/04/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/ruby[00m$ cat l Log   logTable.rb 
#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: "
   start = gets.to_f
   print "Enter the stop value: "
   stop = gets.to_f
   print "Enter the increment value: "
   increment = gets.to_f
   
   while start <= stop
      puts "The logarithm of #{ start } is #{ Math.log10(start) }"
      start += increment
   end
end

]0;sth6@gold19: ~/cs/214/labs/04/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/ruby[00m$ ruby Log   logTable.rb 
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 0.5
The logarithm of 1.0 is 0.0
The logarithm of 1.5 is 0.17609125905568124
The logarithm of 2.0 is 0.3010299956639812
The logarithm of 2.5 is 0.3979400086720376
The logarithm of 3.0 is 0.47712125471966244
The logarithm of 3.5 is 0.5440680443502757
The logarithm of 4.0 is 0.6020599913279624
The logarithm of 4.5 is 0.6532125137753437
The logarithm of 5.0 is 0.6989700043360189
The logarithm of 5.5 is 0.7403626894942439
The logarithm of 6.0 is 0.7781512503836436
The logarithm of 6.5 is 0.8129133566428556
The logarithm of 7.0 is 0.8450980400142568
The logarithm of 7.5 is 0.8750612633917001
The logarithm of 8.0 is 0.9030899869919435
The logarithm of 8.5 is 0.9294189257142927
The logarithm of 9.0 is 0.9542425094393249
The logarithm of 9.5 is 0.9777236052888477
The logarithm of 10.0 is 1.0
]0;sth6@gold19: ~/cs/214/labs/04/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/ruby[00m$ exit
exit

Script done on 2022-02-03 12:51:51-05:00 [COMMAND_EXIT_CODE="0"]
