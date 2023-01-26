dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)

    matching_words = Array.new
    
    dictionary.each do |word|
        input.downcase.split(" ").each do |substring|
            if substring.include?(word)
                matching_words.push(word)
            end
        end
    end

    matching_words.reduce(Hash.new(0)) do |word, counter|
        word[counter] += 1
        word
    end

end


puts "Type out some collection of words,
and have it's prevelance tallied against
this here collection of other words:"
dictionary.each { |word| puts word}
input = gets.chomp

p substrings(input, dictionary)