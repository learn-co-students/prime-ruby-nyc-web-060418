# Add  code here!
def prime?(int)
  return false if int <= 1 
  sqr = (int ** 0.5).to_i 
  range = (2..sqr).to_a 
  range.each do |i|
    if int % i == 0 
      return false 
    end 
  end 
  return true
end 
