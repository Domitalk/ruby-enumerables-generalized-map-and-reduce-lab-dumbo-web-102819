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
  if source_array.respond_to?(:to_i)
    memo = starting_point
  else
    memo = true
  end
  source_array.length.times { |index|
    n = source_array[index]
    memo = yield
  }
  return memo
end
