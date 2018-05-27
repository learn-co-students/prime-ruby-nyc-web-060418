def prime?(num)
  i = 2
  isPrime = true
  if num <= 1
    isPrime = false
  else 
    while i < num
      if num % i == 0 
        isPrime = false
      end
      i += 1
    end
  end
  isPrime
end    
    
  
  
   
