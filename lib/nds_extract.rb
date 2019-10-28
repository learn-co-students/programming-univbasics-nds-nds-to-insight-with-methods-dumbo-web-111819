require 'directors_database'
require 'pp'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  #
  idx1 = 0
  while idx1 < nds.length
    result[nds[idx1][:name]] = gross_for_director(nds[idx1])
    idx1 +=1
  end
  result
end




# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds)

  sum=0
  idx2 = 0
  while idx2 < nds[:movies].length
    # p director_database[idx1][:movies][idx2][:worldwide_gross]
    sum += nds[:movies][idx2][:worldwide_gross]
    idx2 +=1
  end
  # puts sum
  # puts "-"
  sum
end

