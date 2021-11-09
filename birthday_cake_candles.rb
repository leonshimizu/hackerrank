# You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

# candles = [4, 4, 1, 3]
# candles = [1, 1, 3, 3, 3, 3]

# def birthdayCakeCandles(candles) # works for most cases - also not optimal
#   count = {}
#   i = 0
#   while i < candles.length
#     sorted = candles.sort
#     if count[sorted[i]] == nil
#       count[sorted[i]] = 0
#     end
#     count[sorted[i]] += 1
#     i += 1
#   end
#   return count.values.last
# end
# p birthdayCakeCandles(candles)

# def birthdayCakeCandles(candles)
#   count = 0
#   max = 0
#   candles.each do |number|
#     if number > max
#       max = number
#       count = 1
#     elsif max == number
#       count += 1
#     end
#   end
#   return count
# end
# p birthdayCakeCandles(candles)


### code to see how many times a letter appears - can add .downcase if needed
# string = "alphabet"
# count = {}

# i = 0
# while i < string.length
#   if count[string[i]] == nil
#     count[string[i]] = 0
#   end
#   count[string[i]] += 1
#   i += 1
# end
# p count