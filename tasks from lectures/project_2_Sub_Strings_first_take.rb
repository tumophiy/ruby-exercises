# iput = name of function( "string", dictionary )
# output = dictionay with sub-strings=> count
# the method should be case incsensetive
# tip: convert strings into Array

def substrings(string, dictionary)
  # delete !.,/
  input_array = string.downcase.split
  output_hash = Hash.new(0)
  for i in 0..input_array.length - 1
    temporary_array = []
    word = input_array[i]
    p "working word: #{word}, class: #{word.class}"
    # p word.slice(0,2)
    for start_index in 0...word.length - 1
      (word.length).downto(start_index) do |end_index|
        temporary_array << word.slice(start_index, end_index)
      end
    end

    temporary_array.delete('')
    input_array[i] = temporary_array.uniq
  end
  p input_array
  input_array.each do |row|
    p row
    row.each { |element| output_hash[element] += 1 if dictionary.include?(element) }
  end
  output_hash
end

dictionary = %w[below, down, go, going, horn, how, howdy, it, i, low, own, part, partner, sit]
# p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
