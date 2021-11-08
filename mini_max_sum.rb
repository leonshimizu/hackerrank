# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

arr = [1, 2, 3, 4, 5]
sums = []
sorted_sums = []

# def min_max4(arr)

# end

sum1 = arr[1] + arr[2] + arr[3] + arr[4] # 0
sum2 = arr[0] + arr[2] + arr[3] + arr[4] # 1
sum3 = arr[0] + arr[1] + arr[3] + arr[4] # 2
sum4 = arr[0] + arr[1] + arr[2] + arr[4] # 3
sum5 = arr[0] + arr[1] + arr[2] + arr[3] # 4

sums << sum1
sums << sum2
sums << sum3
sums << sum4
sums << sum5

sorted_sums = sums.sort
# p sorted_sums[0]
# p sorted_sums[-1]

i = 0
j = 4
while i < arr.length
  if i != j
    sums << arr[i]
  end
  i += 1
  j -= 1
end