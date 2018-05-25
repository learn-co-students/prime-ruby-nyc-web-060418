# Add  code here!
def prime?(num)	
	new_array = (2..num-1).to_a	
	return false if num <= 1
	for i in new_array do
		return false if num % i == 0
	end
	return true
end