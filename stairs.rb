def counter(n)

for i in 1..n
  
  count = n
  
  for k in 1..n 
    if count <= i  
      print ("#")
     else
       print (" ")
    end
    count -= 1 
  end
  puts("\n")
end  
end

var = gets.to_i 
counter(var)