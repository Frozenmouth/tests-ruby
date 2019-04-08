def translate(str)

  vowels = %w(a A e E i I o O u U)
  str.split(" ").reduce([]) { |words, word|
      split_word = word.chars

  if !vowels.include? word[0]
      if split_word[0].upcase.include? split_word[0] 
          split_word[0] = split_word[0].downcase 
          i = 1
          while i < 4 
              if vowels.include? split_word[i]
                  split_word[i] = split_word[i].upcase
                  i = 3 
              end
              i += 1
          end
      end

      n = split_word.find_index { |x| vowels.include? x }
      n += 1 unless split_word[n-1..n].join("") != "qu"
      split_word.push(split_word.shift(n))[1..-1]

  end

  words << split_word.insert(-1, "ay").join("")
  }.join(" ")
end
puts translate('Apple banana Three Carrot Quick Five')