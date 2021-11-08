# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# arr = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [9, 8, 9]
# ]

arr = [
  [11, 2, 4],
  [4, 5, 6],
  [10, 8, -12]
]

def diagonal_difference(arr)
  sum1 = 0
  sum2 = 0
  difference = 0
  arr.each_with_index do |row, i|
    sum1 += row[i]
    sum2 += row[-i-1]
  end
  difference = (sum1 - sum2).abs 

  return difference
end

p diagonal_difference(arr)