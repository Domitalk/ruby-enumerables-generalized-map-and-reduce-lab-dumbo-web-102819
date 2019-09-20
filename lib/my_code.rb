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
  memo = ''
  if array.instance_of? Fixnum
    memo = starting_point
  else
    memo = true
  end
  array.length.times { |n|
    memo = yield
  }
  return memo
end
