def prime?(integer)
  if integer < 2
    return false
  end
    
  counter = 2

  while counter < integer
    if integer % counter == 0
      return false
   else
     counter += 1
   end
 end
 
 return true
 end
     
