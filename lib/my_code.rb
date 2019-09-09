def map(array)
  new = []
  i = 0 
  while i < array.length do 
    new.push(yield(array[i]))
    i += 1 
  end 
  return new
end 

# new.push(array[i] * -1) 
# {|n| n * -1}

def reduce(source_array, starting_point = 0)
  i = 0
  while i < source_array.length do 
    starting_point = yield(starting_point, source_array[i])
    i += 1 
  end
  if starting_point == nil 
    return false 
  end 
  return starting_point  
end

# no starting point, starting point {|memo, n| memo + n}
# all true {|memo, n| memo && n}
# any true {|memo, n| memo || n}