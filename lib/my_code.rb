def map(source_array)
  return_array = []

  for i in 0...source_array.length
    return_array[i] = yield(source_array[i])
  end

  return return_array
end

def reduce(source_array, starting_point=nil)
  #puts source_array
  #puts "starting_point: " + starting_point
  start_index = 0

  if starting_point then
    return_value = starting_point
  else
    return_value = source_array[start_index]
    start_index = start_index + 1
  end

  for i in start_index...source_array.length
    return_value = yield(return_value, source_array[i])
  end

  #puts "return_value: " + return_value
  return return_value
end
