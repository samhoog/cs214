Script started on 2022-03-24 13:05:33-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="173" LINES="12"]
]0;sth6@gold30: ~/cs/214/labs/10/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/ruby[00m$ cat Bird.rb birds.rb Duck.rb Goose.rb Owl.rb 
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 24, 2022
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end

    def call
        'Squaaaaaaawk!'
    end
    
    def className
        self.class.to_s
    end
    
    def print
        puts name + " " + className + " says " + "\"" + call + "\""
    end
  end# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 24, 2022
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 24, 2022
####################################################

require './Bird.rb'

class Duck < Bird

    def call
        'Quack!'
    end

end# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 24, 2022
####################################################

require './Bird.rb'

class Goose < Bird

    def call
        'Honk!'
    end

end# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Sam Hoogewind
# Date: March 24, 2022
####################################################

require './Bird.rb'

class Owl < Bird

    def call
        'Whoo-hoo!'
    end

end]0;sth6@gold30: ~/cs/214/labs/10/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/ruby[00m$ ruby birds.rb 

Welcome to the Bird Park!

Hawkeye Bird says "Squaaaaaaawk!"
Donald Duck says "Quack!"
Mother Goose says "Honk!"
Woodsey Owl says "Whoo-hoo!"


]0;sth6@gold30: ~/cs/214/labs/10/ruby[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/ruby[00m$ exit

Script done on 2022-03-24 13:05:46-04:00 [COMMAND_EXIT_CODE="0"]
