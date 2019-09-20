def map(array)
  new_map = []
  i = 0
  while i < array.length do
    new_map[i] = yield(array[i])
    i += 1
  end
  return new_map
end

def reduce(array, starting_point = "0")
  temp_value = ''
  if array.instance_of? Fixnum do
    temp_value = starting_point + 0
  else
    temp_value = true
  end
  
