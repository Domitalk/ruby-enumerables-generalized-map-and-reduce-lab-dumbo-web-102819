def map(array)
  new_map = []
  i = 0
  while i < array.length do
    new_map[i] = yield(array[i])
    i += 1
  end
  return new_map
end

def reduce(array, starting_point = 0)
  if array.respond_to?(:to_i)
    memo = starting_point
  else
    memo = true
  end
  array.length.times { |index|
    n = array[index]
    memo = yield
  }
  return memo
end
