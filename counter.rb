require_relative "words_from_string.rb"
require_relative "county_frequency.rb"

raw_text = %{Lorem Ipsum is simply dummy text of the printing and typesetting industry.
  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
  when an unknown printer took a galley of type and scrambled it to make a type specimen book.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)

sorted = counts.sort_by{|word, count| count}
top_five = sorted.last(5)

# Non practice 
# for i in 0..5
#   word = top_five[i][0]
#   count = top_five[i][1]
#   puts "#{word}: #{count}"
# end

top_five.each do |word, count|
  puts "#{word}: #{count}"
end  

# Compactly
#top_five,map{|word, count| "#{word}: #{count}" } 