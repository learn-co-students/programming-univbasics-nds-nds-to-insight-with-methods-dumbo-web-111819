require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
   totals = {}
  directors_names = [] 
   director_index = 0 
   while director_index < directors_database[director_index] do directors_names.push(directors_database[director_index][:name])
   director_index+=1 
   end
  counter = 0 
  while counter < directors_names.count do 
 totals[directors_names[counter]] = list_of_totals[counter]
  counter+=1 
end 
 return totals
 end
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_index = 0 
  totals = 0 
  list_of_totals = []
  while director_index < directors_database.count do 
    
    movie_index = 0 
    while movie_index < directors_database[director_index][:movies].count do
      totals += directors_database[director_index][:movies][movie_index][:worldwide_gross]
      movie_index+=1 
      end
    list_of_totals.push(totals)
  director_index+=1 
end
return list_of_totals[0]
end

def directors_totals(nds)
  director_index = 0
  totals = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      totals[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

  totals
end



