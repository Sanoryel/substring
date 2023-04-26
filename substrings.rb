def substrings(words, dictionnary)
    hash = Hash.new(0)
    wordsArray = words.split(" ")
    dictionnary.each() do |dictionnaryElement|
        wordsArray.each do |word|
            if(word.downcase.include?(dictionnaryElement.downcase))
                hash[dictionnaryElement] +=1;
            end
        end
    end
    hash
end