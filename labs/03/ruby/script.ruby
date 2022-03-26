Script started on 2022-01-27 12:57:22-05:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
   if year =~ /freshman/
      return 1
   elsif year =~ /sophomore/
      return 2
   elsif year =~ /junior/
      return 3
   elsif year =~ /senior/
      return 4
   else
      return 0
   end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ ruby year_codes.rb
Enter the year: sophoo more
Numeric code is: 2
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ ruby year_codes.rb
Enter the year: test
Numeric code is: 0
]0;sth6@gold19: ~/cs/214/labs/03/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/ruby[00m$ exit
exit

Script done on 2022-01-27 12:58:02-05:00 [COMMAND_EXIT_CODE="0"]
