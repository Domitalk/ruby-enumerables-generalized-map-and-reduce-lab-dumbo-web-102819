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
  if source_array.all? {|i| i.is_a?(Integer) }
    memo = starting_point
  else
    memo = true
  end
  while i < source_array.length do
    memo = yield(array[i])
    i += 1
  end
  return memo
end
