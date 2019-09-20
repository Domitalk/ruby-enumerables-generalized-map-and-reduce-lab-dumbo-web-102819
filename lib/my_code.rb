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
  temp_total = 0

  if starting_point.is_a?(Numeric) == true
    temp_total += starting_point
  end

  if source_array.is_a?(Numeric) == true
    memo = temp_total
    while i < source_array.length do
      memo = yield(memo, source_array[i])
      i += 1
    end
  else
    memo = true
    while i < source_array.length do
      memo = yield(memo, source_array[i])
      i += 1
    end
  end

  while i < source_array.length do
    memo = yield(memo, source_array[i])
    i += 1
  end

  return memo
end
