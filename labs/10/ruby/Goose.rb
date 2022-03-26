# Goose.rb | Defines the Goose class which inherits attributes and methods
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

end