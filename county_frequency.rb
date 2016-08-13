def count_frequency(word_list)
  counts = Hash.new(0) 

  for word in word_list
    counts[word] += 1
  end
  #the hash containing the word frequencies is ordered based on thr first time it sees each word. 
  counts
end    

#We're using the p method to print out the value of whatever the count_frequency method returns 

#p count_frequency(["the","the","cat","sat","on","the","on"])



