class Book

    attr_reader :title

    def title= (str)
        articles = ["the", "a", "an", "and", "in", "of"]
        arr = []

        str.split(" ").each_with_index do |word, i|
            if i == 0 || !(articles.include?(word))
                arr << word[0].upcase + word[1..-1].downcase
            else 
                arr << word
            end
        end

        @title = arr.join(" ")

    end

end
