class PigLatinizer
    def piglatinize(sentence)
        sentence.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end
    
    def piglatinize_word(word)
        index_of_vowel = get_first_vowel_position(word)
        if index_of_vowel == 0
           return word + "way"
        else            
           return word[index_of_vowel..-1] + word[0..index_of_vowel-1] + "ay"
        end
    end

    def get_first_vowel_position(word)
        upcase = word.upcase
        i = 0
        while i < upcase.length do
            if upcase[i] == 'A' || upcase[i] == 'E' || upcase[i] == 'I' || upcase[i] == 'O' || upcase[i] == 'U'
                return i
            else
                i += 1
            end
        end
    end
end
