def prime?(input)
# If the input number is less than or equal to 1, it is not prime and thus
# we will return false right away to avoid wasting any further resources on
# this case.
  if input <= 1
    return false
  end

# Check whether input number is prime. Calculates the square root of the
# inputted number. The square root and all whole numbers from 2 up through
# it are then placed into an array.
  sqrt = (input ** 0.5).to_i
  testers = (2..sqrt).to_a

# This each block tests each number in our "testers" array against our
# original input number using the modulo operator. This will tell us
# whether there are remainders, and if there are not, that means the
# inputted number is not prime b/c it is evenly divisible by another number.
  testers.each do |i|
    if input % i == 0
      return false
    end
  end

# If the code has reached this point, that means it's passed all tests
# to check whether our input number is non-prime. Thus, it must be prime
# and we'll now return true to illustrate this.
  return true
end
