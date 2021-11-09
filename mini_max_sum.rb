# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

# arr = [1, 2, 3, 4, 5]
# arr = [5, 5, 5, 5, 5]
arr = [5, 6, 4, 2, 3]
# sums = []
# sorted_sums = []

# def min_max4(arr)

# end

# sum1 = arr[1] + arr[2] + arr[3] + arr[4] # missing 0
# sum2 = arr[0] + arr[2] + arr[3] + arr[4] # missing 1
# sum3 = arr[0] + arr[1] + arr[3] + arr[4] # missing 2
# sum4 = arr[0] + arr[1] + arr[2] + arr[4] # missing 3
# sum5 = arr[0] + arr[1] + arr[2] + arr[3] # missing 4

# sums << sum1
# sums << sum2
# sums << sum3
# sums << sum4
# sums << sum5

# sorted_sums = sums.sort
# p sorted_sums[0]
# p sorted_sums[-1]

# i = 0
# j = 4
# while i < arr.length
#   if i != j
#     sums << arr[i]
#   end
#   i += 1
#   j -= 1
# end

# def miniMaxSum(arr)
#   sorted_array = arr.sort
#   min = sorted_array.first(4).sum
#   max = sorted_array.last(4).sum
#   puts "#{min} #{max}"
# end

# miniMaxSum(arr)

# def miniMaxSum(arr) 
#   min = arr.min(4).sum 
#   max = arr.max(4).sum 
#   puts "#{min} #{max}" 
# end

# miniMaxSum(arr)

p arr.min(4)
p arr.max(4)
p arr.min(4).sum
p arr.max(4).sum

# found the correct solution but solve it without any methods