require 'directors_database'
require 'pp'
pp directors_database 
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0 
  indiv_total = 0
  while row_index < director_data.length do
    element_index = 0 
    while element_index < director_data[row_index][:movies] do 
      indiv_total += director_data[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1 
    end 
    indiv_total
end










