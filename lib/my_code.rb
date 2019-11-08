# Your Code Here
# My Code here....

def map(array)

  i = 0
  result = []

  until  i == array.length do

    result.push(yield(array[i]))
    i += 1

  end

p result

end

#using yield to pass an argument

def reduce(array, starting_point = nil)

  if starting_point
    i = 0
    total = starting_point
  else
    i = 1
    total = array[0]
  end

   until  i == array.length do

     total = yield(total, array[i])

     i += 1

   end

   p total

end
