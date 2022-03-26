Script started on 2022-02-18 13:03:15-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ cat r=q[K[K[Kquadratic.rb 
# quadratic.rb calculates the roots of a quadratic equation
#
# Input: The three coefficients of the equation
# Output: The roots of the equation, or a corrosponding error
#
# Completed by: Sam Hoogewind
# Date: February 15, 2022
#################################################################


# quadraticRoots() calculates the quadratic roots according to the equation specified
# Receive: a, b, c - the coefficients of the equation
# Return: The two quadratic roots or an error
######################################################

def quadraticRoots(a, b, c)
  if a != 0 # if x^2 isn't 0
    arg = b ** 2 - (4 * a * c) # calculate the part under the radical
    if arg >= 0 # if the part under the radical is greater than or equal to 0
      root1 = (-b + Math.sqrt(arg)) / (2 * a) # calculate each root
      root2 = (-b - Math.sqrt(arg)) / (2 * a)
    else # otherwise you have imaginary numbers, so print an error
      puts "quadraticRoots(): b^2 - 4ac is negative!"
      root1 = 0
      root2 = 0
    end 
  else # otherwise x^2 is 0, so print an error
    puts "quadraticRoots(): a is zero!"
    root1 = 0
    root2 = 0
  end
  results = [root1, root2] # return the results
end

def main
  # prompt for the equation
  print "To calculate the quadratic roots, please enter the equation: ";

  # prompt for the first coefficient
  print "Enter the first coefficient: "
  a = gets.to_i

  # prompt for the second coefficient
  print "Enter the second coefficient: "
  b = gets.to_i

  # prompt for the third coefficient
  print "Enter the third coefficient: "
  c = gets.to_i

  # Compute roots and print
  quadratic_roots = quadraticRoots(a, b, c)
  if quadratic_roots[0] != 0 && quadratic_roots[1] != 0 then
    puts "The first root is: #{quadratic_roots[0]}"
    puts "and the second root is: #{quadratic_roots[1]}"
  end
end

main
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ ruby quadratic.rb 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 0
Enter the second coefficient: 5
Enter the third coefficient: 10
quadraticRoots(): a is zero!
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ ruby quadratic.rb 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 1
Enter the second coefficient: 1
Enter the third coefficient: 10
quadraticRoots(): b^2 - 4ac is negative!
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ ruby quadratic.rb 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 2
Enter the second coefficient: 5
Enter the third coefficient: 2
The first root is: -0.5
and the second root is: -2.0
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ ruby quadratic.rb 
To calculate the quadratic roots, please enter the equation: Enter the first coefficient: 2
Enter the second coefficient: 6
Enter the third coefficient: 2
The first root is: -0.3819660112501051
and the second root is: -2.618033988749895
]0;sth6@gold18: ~/cs/214/projects/06/ruby[01;32msth6@gold18[00m:[01;34m~/cs/214/projects/06/ruby[00m$ exit

Script done on 2022-02-18 13:03:42-05:00 [COMMAND_EXIT_CODE="0"]
