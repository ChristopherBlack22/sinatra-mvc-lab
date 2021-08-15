class PigLatinizer

    def piglatinize_word(word)
        word_array = word.split("")
        if word.downcase.match?(/^[bcdfghjklmnpqrstvwxyz]{3}/)
            word_array = word.split("",4)
            word_array[3]+word_array[0]+word_array[1]+word_array[2]+"ay"
        elsif word.downcase.match?(/^[bcdfghjklmnpqrstvwxyz]{2}/)
            word_array = word.split("",3)
            word_array[2]+word_array[0]+word_array[1]+"ay"
        elsif word.downcase.match?(/^[bcdfghjklmnpqrstvwxyz]/)
            word_array = word.split("",2)
            word_array[1]+word_array[0]+"ay"
        else 
            word+"way"
        end 
    end 

    def piglatinize(text)
        words = text.split(" ")
        words.collect! do |word|
            piglatinize_word(word)
        end
        words.join(" ")
    end 

end 