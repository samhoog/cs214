Script started on 2022-03-09 13:24:01-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
c]0;sth6@gold01: ~/cs/214/labs/08/ruby[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/ruby[00m$ cat NameTester.rb 
# NameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 9, 2022
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
   end

   attr_reader :first, :middle, :last

   def fullName()
      return first + " " + middle + " " + last
   end

   def print()
      puts(fullName())
      fullName()
   end

end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;sth6@gold01: ~/cs/214/labs/08/ruby[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/ruby[00m$ ruby NameTester.rb 
John Paul Jones
All tests passed!
]0;sth6@gold01: ~/cs/214/labs/08/ruby[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/ruby[00m$ exit

Script done on 2022-03-09 13:24:14-05:00 [COMMAND_EXIT_CODE="0"]
