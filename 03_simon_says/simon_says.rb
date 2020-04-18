#write your code here
def echo(phrase)
    p phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, num = 2)
    new_phrase = [] 
    (num).times do |n|
        new_phrase << phrase
    end

    new_phrase.join(" ")
    
end

def start_of_word(word, letters = 1)
    word[0...letters]

end

def first_word(str)
    str.split(" ")[0]
end

def titleize(str)
    little_words = ["and", "over", "the"]
    arr = []

    str.split(" ").each_with_index do |word, i|
        if i == 0 || !(little_words.include?(word))
            arr << word[0].upcase + word[1..-1].downcase
        else 
            arr << word
        end
    end

    arr.join(" ")
end