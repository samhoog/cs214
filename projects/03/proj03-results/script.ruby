Script started on 2022-01-31 16:08:23-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ codeexitruby letter_grades.rb [1Pcat letter_grades.rb 
# letter_grades.rb calculates your letter grade
#
# Input: The grade average
# Precondition: The average is an integer 0-100
# Output: The corrosponding letter grade
#
# Completed by: Sam Hoogewind
# Date: January 31, 2022

def letterGrade(average)
  average = average / 10
  case average
  when 10
    grade = 'A'
  when 9
    grade = 'A'
  when 8
    grade = 'B'
  when 7
    grade = 'C'
  when 6
    grade = 'D'
  else
    grade = 'F'
 end
end
 
 if __FILE__ == $0
    print "Enter your grade average: "
    average = gets.to_i
    print "Letter grade is: "
    puts letterGrade(average)
 end
 
 ]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ cat letter_grades.rb ode[Kexitruby letter_grades.rb 
Enter your grade average: 100   95
Letter grade is: A
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ ruby letter_grades.rb 
Enter your grade average: 84
Letter grade is: B
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ ruby letter_grades.rb 
Enter your grade average: 76
Letter grade is: C
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ ruby letter_grades.rb 
Enter your grade average: 68
Letter grade is: D
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ ruby letter_grades.rb 
Enter your grade average: 35
Letter grade is: F
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ ruby letter_grades.rb 
Enter your grade average: 100] 
Letter grade is: A
]0;sth6@remotel2: ~/cs/214/projects/03/ruby[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/ruby[00m$ exit
exit

Script done on 2022-01-31 16:08:47-05:00 [COMMAND_EXIT_CODE="0"]
