# Add  code here!
def prime?(int)
  for n in 2..(int-1)
    if int % n == 0
      return false
    end
  end
  if int < 2
    return false
  end
  return true
end
