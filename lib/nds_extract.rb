require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  name_index = 0 
  while name_index < nds.length do 
    director = nds[name_index]
    result[director[:name]] = gross_for_director(director)
    name_index += 1 
  end 
  result

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0 
  director_gross = 0 
    while director_index < director_data[:movies].length do 
     director_gross += director_data[:movies][director_index][:worldwide_gross]
     director_index += 1 
    end 
     director_gross 
end
