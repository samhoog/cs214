Script started on 2022-03-29 14:41:25-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold02: ~/cs/214/projects/11/ruby[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/ruby[00m$ cat List.rb Search.rb 
# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 29, 2022
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0
   def initialize()
      @first = nil
      @last = nil
      @length = 0
   end


   # create reader method for length
   attr_reader :length


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen
   def print
      temp = @first
      while !temp.nil?
         printf " #{temp.value}"
         temp = temp.next
      end
   end

   # find my maximum item
   # Return: my maximum item
   def max
      temp = @first
      maxValue = -999999
      while !temp.nil?
         if temp.value > maxValue
            maxValue = temp.value
         end
         temp = temp.next
      end
      return maxValue
   end

   # find value in a list
   # Return: the index of value or -1 if not found
   def search(value)
      temp = @first
      count = 0
      while !temp.nil?
         if temp.value == value
            return count
         end
         count = count + 1
         temp = temp.next
      end
      return -1
   end

   class Node
      def initialize(item, link)
         @value = item
         @next = link
      end

      attr_reader :value
      attr_accessor :next
   end

end

# search.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 29, 2022

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(11).append(22).append(33).append(44).append(55)

list1.print 
puts
puts "Index of 99 in list1: #{list1.search(99)}"

list2.print 
puts
puts "Index of 99 in list2: #{list2.search(99)}"

list3.print 
puts
puts "Index of 99 in list3: #{list3.search(99)}"

list4.print 
puts
puts "Index of 99 in list4: #{list4.search(99)}"
]0;sth6@gold02: ~/cs/214/projects/11/ruby[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/ruby[00m$ ruby Search.rb 
 99 88 77 66 55
Index of 99 in list1: 0
 55 66 77 88 99
Index of 99 in list2: 4
 55 77 99 88 66
Index of 99 in list3: 2
 11 22 33 44 55
Index of 99 in list4: -1
]0;sth6@gold02: ~/cs/214/projects/11/ruby[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/ruby[00m$ exit

Script done on 2022-03-29 14:41:36-04:00 [COMMAND_EXIT_CODE="0"]
