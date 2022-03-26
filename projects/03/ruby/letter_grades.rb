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
 
 