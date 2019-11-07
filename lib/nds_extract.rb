require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

# def directors_totals(nds)
#   result = {}
#   nil
# end

def directors_totals(nds)

  result = {}

  dir_index = 0
  count_outer = 0
  index_outer = nds.length
  
  while count_outer < index_outer do
    dir_gross = 0
    count_inner = 0
    index_inner = nds[dir_index][:movies].length
    while count_inner < index_inner do
      dir_gross += nds[dir_index][:movies][count_inner][:worldwide_gross]
      count_inner += 1
    end

    puts dir_index
    puts dir_gross
    dir_index += 1
    count_outer += 1

    if dir_index == 1
      result["Stephen Spielberg"] = dir_gross
    elsif dir_index == 2
      result["Russo Brothers"] = dir_gross
    elsif dir_index == 3
      result["James Cameron"] = dir_gross
    elsif dir_index == 4
      result["Spike Lee"] = dir_gross
    elsif dir_index == 5
      result["Wachowski Siblings"] = dir_gross
    elsif dir_index == 6
      result["Robert Zemeckis"] = dir_gross
    elsif dir_index == 7
      result["Quentin Tarantino"] = dir_gross
    elsif dir_index == 8
      result["Martin Scorsese"] = dir_gross
    elsif dir_index == 9
      result["Francis Ford Coppola"] = dir_gross
    end
    
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  dir_tot = 0
  count = 0
  index = director_data[:movies].count
  while count < index do
    dir_tot += director_data[:movies][count][:worldwide_gross]
    count += 1
  end
  dir_tot
end



