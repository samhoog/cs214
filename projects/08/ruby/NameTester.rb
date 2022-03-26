# NameTester.rb tests class Name and its operations with additional functions
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 10, 2022
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

   def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
   end

   attr_accessor :first, :middle, :last

   def fullName()
      return first + " " + middle + " " + last
   end

   def print()
      puts(fullName())
      fullName()
   end

   # return the name in Last-First-MiddleInitial form
   def lfmi()
      return last + ", " + first + " " + middle[0] + "."
   end

   # read in new values for name from the keyboard
   def read()
      @first = gets.chomp
      @middle = gets.chomp
      @last = gets.chomp
   end

end


def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"

   # test changing each name
   name.first = "Samuel"
   assert name.first == "Samuel", "first failed"
   name.middle = "Thomas"
   assert name.middle == "Thomas", "middle failed"
   name.last = "Hoogewind"
   assert name.last == "Hoogewind", "last failed"
   name.print
   
   # test lfmi()
   assert name.lfmi == "Hoogewind, Samuel T.", "lfmi failed"
   print name.lfmi + "\n"

   # test read()
   name.read
   name.print
   print name.lfmi + "\n"
   
   print "All tests passed!\n"
end

testName

