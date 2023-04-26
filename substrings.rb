def substrings(words, dictionnary)
    hash = Hash.new(0)
    wordsArray = words.downcase.split(" ")
    dictionnary.each() do |dictionnaryElement|
        wordsArray.each do |word|
            if(word.include?(dictionnaryElement))
                hash[dictionnaryElement] +=1;
            end
        end
    end
    hash
end