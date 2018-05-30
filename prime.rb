def prime?(num)
  if num <= 1
    return false
  else
    Array(2..num-1).all? do |integer|
      num % integer != 0
    end
  end
end
