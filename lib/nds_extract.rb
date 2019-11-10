require 'directors_database'
require 'pp'
pp directors_database 
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0 
  while director_index < nds.length do 
    result[nds[director_index][:name]] = gross_for_director(nds[director_index])
    director_index += 1
  end 
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    indiv_total = 0
    gross_index = 0 
    while gross_index < director_data[:movies].length do 
      indiv_total += director_data[:movies][gross_index][:worldwide_gross]
      gross_index += 1 
    end 
    indiv_total
end










