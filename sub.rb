def substrings(str, arr)
    sub_string = []
    str_low = str.downcase.gsub(/[^a-z\s]/, '')
    sub_string_hash = Hash.new(0)

    (0...str_low.length).each do |start_idx|
        (start_idx...str_low.length).each do |end_idx|
            sub_string << str_low[start_idx..end_idx]
        end
    end

    arr.each do |word|
        sub_string.each do |sub|
            if sub == word 
                sub_string_hash[sub] += 1
            end
        end
    end
    return sub_string_hash
    
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below , down", dictionary)



