$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


binding.pry 

def directors_totals(nds)
  total = {}
  growth = 0
  name = nds[0][:name]
  movies = nds[0][:movies]
  
    i = 0 
    while i < movies.length do
      growth += movies[i][:worldwide_gross]
      total[name] = growth
      i += 1
    end 
    return total 
end 

# directors_database[0][:movies][0][:worldwide_gross]

