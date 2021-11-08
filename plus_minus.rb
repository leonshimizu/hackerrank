# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

arr = [1, 1, 0, -1, -1]

def plusMinus(arr)
  p_count = 0.0
  n_count = 0.0
  z_count = 0.0
  length = arr.length
  arr.each do |number|
    if number > 0
      p_count += 1
    elsif number < 0
      n_count += 1
    elsif number == 0
      z_count += 1
    end
  end
  p p_ratio = p_count / length
  p n_ratio = n_count / length
  p z_ratio = z_count / length
end

plusMinus(arr)