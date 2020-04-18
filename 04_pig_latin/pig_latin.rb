#write your code here
def translate(str)
    vowels = "aeiou"
    words = str.split(" ")
    translated = []

    words.each_with_index do |word, i|
        if vowels.include?(word[0])
            translated << word + "ay"
        else
            translated << pig(word)
        end

    end

    translated.join(" ")

end

def pig(word)
    vowels = "aeiou"
    
    if word.include?("qu")
        return queued(word)
    end

    if vowels.include?(word[1])
        return word[1..-1] + word[0] + 'ay'
    elsif vowels.include?(word[2])
        return word[2..-1] + word[0..1] + 'ay'
    else
        return word[3..-1] + word[0..2] + 'ay'
    end
end

def queued(word)
    idx = word.index("qu") + 2
    return word[idx..-1] + word[0...idx] + "ay"

end
