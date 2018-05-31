# Add  code here!
def prime?(integer)
  if integer.abs == 1 || integer == 0
    return false
  elsif integer.abs == 2
    true
  else
    for i in (2..Math.sqrt(integer.abs).to_i)
      if (integer % i) == 0
        return false
      end
    end
    true
  end
end
