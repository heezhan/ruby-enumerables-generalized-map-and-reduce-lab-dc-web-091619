def map(array)
  new = []
  i = 0 
  while i < array.length do 
    new.push(yield(array[i]))
    i += 1 
  end 
  return new
end 

def reduce(source_array, starting_point = 0)
  i = 0
  while i < source_array.length do 
    starting_point = yield(source_array[i], starting_point)
    i += 1 
  end
  if starting_point == nil 
    return false
  end 
  return starting_point  
end