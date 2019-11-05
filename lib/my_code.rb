def map(array)
  new_array = []
  array.each do |item|
    new_array.push(yield(item))
  end
   new_array
end

def reduce(array, sv=nil)
 if sv 
  sum = sv
  i = 0
 else 
  sum = array[0]
  i = 1
end
while i < array.length do 
  sum = yield(sum, array[i])
  i += 1
end
sum
end
