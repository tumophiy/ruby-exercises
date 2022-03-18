def stock_picker(input_array)
  information = {}
  for i in 0..input_array.length - 1
    for ii in (i + 1)..(input_array.length - 1)
      information[[i, ii]] = [input_array[i], input_array[ii]]
    end
  end
  best_pair = { [0, 0] => 0 }
  information.each do |key, value|
    best_pair = { key => value } if value[1] - value[0] > best_pair.values[0][1] - best_pair.values[0][0]
  end
  best_pair.keys.first
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1, 4]   for a profit of $15 - $3 == $12
