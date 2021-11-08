# Given an array of integers, find the sum of its elements.

ar = 1, 2, 3, 4, 10, 11

def simpleArraySum(ar)
  sum = 0
  ar.each do |number|
      sum += number
  end
  return sum
end

p simpleArraySum(ar)