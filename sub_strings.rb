def substrings(string, array)
    result = {}
    array.each do |array_word|
      string.downcase.split.to_a.each do |string_word|
        if string_word.include?(array_word)
          if result.has_key?(array_word)
            result[array_word] += 1
          else
            result[array_word] = 1
          end
        end
      end
    end
    result
  end