# Add  code here!
def prime?(int)
  newInt = int.abs
  if newInt == 2 || newInt == 3
    return true
  elsif newInt == 1 || newInt == 0
    return false
  else
    upperRange = (newInt * 1/2).to_i
    for counter in 2..upperRange
      if newInt % counter == 0
        return false
      end
    end
    return true
  end
end
