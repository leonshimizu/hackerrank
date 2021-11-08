n = 4

# str = ' ' * n 
# 1.upto(n) do |i|
#   str[-i] = '#'
#   puts str
# end

def staircase(n)
  string = ' ' * n
  i = 1
  n.times do
    string[-i] = '#'
    puts string
    i += 1
  end
end
staircase(n)

# def print_staircase(num_rows)
#   str = ' ' * num_rows
#   1.upto(num_rows) do |i|
#     str[-i] = '#'
#     puts str
#   end
# end
# print_staircase(5)

# def print_staircase(num_rows)
#   for i in (1..num_rows)
#     puts ' ' * (num_rows-i) + '#' * i
#   end
# end

# print_staircase(6)