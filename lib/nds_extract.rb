$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
nds=directors_database()

def directors_totals(nds)
  new_hash={}
  nds.map do |obj|
    sum=0
    obj[:movies].map do |value|
      sum+=value[:worldwide_gross]
    end
    new_hash[obj[:name]]=sum
  end
  new_hash

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #lear
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
end
