$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# def directors_totals(nds)
#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#   result = {
#   }
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   #
#   # Be sure to return the result at the end!
#   nil
# end

# list = pp directors_database
# list

# Array of Hashes, each hash representing a director.
#Each director hash has a movies key, which points to an AoH.
#Director also has name key pointing to string of dir name
#Each movie hash has a worldwide_gross key
def directors_totals(directors)
  director_index = 0
  director_grosses = {}
  while director_index < directors.length do
    director_grosses[directors[director_index][:name]]= 0
    movie_index = 0
    while movie_index < directors[director_index][:movies].length do
      director_grosses[directors[director_index][:name]] += directors[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    director_index += 1
  end
  director_grosses
end
