Script started on 2022-03-11 14:27:17-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
c]0;sth6@gold19: ~/cs/214/labs/09/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/ruby[00m$ cat nameTester.rb Name.rb 
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 11, 2022
####################################################

require 'test/unit/assertions'
require './Name'
include Test::Unit::Assertions

def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

# Name.rb is a module for our 'Name' type-abstraction.
#
# Completed by: Sam Hoogewind
# Date: March 11, 2022
######################################################

module Names
    class Name

        def initialize(first, middle, last)
        @first, @middle, @last = first, middle, last
        end
    
        attr_reader :first, :middle, :last
    
        def fullName
        @first + " " + @middle + " " + @last
        end
    
        def print
        puts fullName
        fullName
        end
    end
end]0;sth6@gold19: ~/cs/214/labs/09/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/ruby[00m$ ruby nameTester.rb 
John Paul Jones
All tests passed!
]0;sth6@gold19: ~/cs/214/labs/09/ruby[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/ruby[00m$ exit

Script done on 2022-03-11 14:27:28-05:00 [COMMAND_EXIT_CODE="0"]
