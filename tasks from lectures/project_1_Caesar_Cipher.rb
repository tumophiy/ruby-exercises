def caesar_cipher(string, factor)
  dictionary_of_small_letters = ('a'..'z').to_a
  dictionary_of_capital_letters = ('A'..'Z').to_a
  starting_array = string.split('')

  finish_array = starting_array.map do |character|
    if !(('a'..'z').to_a + ('A'..'Z').to_a).include?(character)
      character = character

    # iterate over capital letters
    elsif character.upcase == character
      index = (dictionary_of_capital_letters.index(character.to_s) + factor) % 26
      dictionary_of_capital_letters[index]

    # iterate over small letters
    elsif character.downcase == character
      index = (dictionary_of_small_letters.index(character.to_s) + factor) % 26
      dictionary_of_small_letters[index]
    end
  end
  finish_array.join('')
end

p caesar_cipher('What a string!', 5)
