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

