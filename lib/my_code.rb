# Your Code Here
def map(source_array)
new_array  = []
i = 0 
  while i <  source_array.length do  
    new_array << yield 
    i += 1
  end 
end 

map(source_array){|n| -1 * n}

map(source_array){|n| n}

map(source_array){|n| n * 2}

map(source_array){|n| n** 2}


