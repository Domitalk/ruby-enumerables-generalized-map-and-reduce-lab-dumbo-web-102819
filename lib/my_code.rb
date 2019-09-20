def map(array)
  new_map = []
  i = 0
  while i < array.length do
    new_map[i] = yield(array[i])
    i += 1
  end
  return new_map
end

def reduce(source_array, starting_point = 0)
  i = 0
  temp_value = 0 

  if source_array.all?(Numeric) == true
    temp_value = temp_value + starting_point
  else
    temp_value = true
  end

  while i < source_array.length do
    temp_value = yield(temp_value, source_array[i])
    i += 1
  end

  return temp_value
end
