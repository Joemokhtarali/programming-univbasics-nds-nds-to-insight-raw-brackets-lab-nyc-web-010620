$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# binding.pry 

def directors_totals(nds)
  total = {}
  growth = 0
  
  i = 0 
  while i < nds.length do 
    name = nds[i][:name]
    movies = nds[i][:movies]
      j = 0 
    while j < movies.length do
      growth = movies[j][:worldwide_gross]
      total[name] += growth
      j += 1
    end 
    i += 1
  end 
    return total 
end 

# directors_database[0][:movies][0][:worldwide_gross]

