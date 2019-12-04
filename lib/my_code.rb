require 'pry'

def map(array)
  new_array = []

  for element in array
    new_array.push yield element
  end

  new_array
end

def reduce (array,starting_point=nil)
  if starting_point
    total = starting_point
    i = 0
  else
    total = array[0]
    i = 1
  end
  while i < array.size do
    total = yield(total,array[i])
    i += 1
  end
  total
end 
  
  