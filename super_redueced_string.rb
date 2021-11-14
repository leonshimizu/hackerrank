# Reduce a string of lowercase characters in range ascii[‘a’..’z’]by doing a series of operations. In each operation, select a pair of adjacent letters that match, and delete them.

# Delete as many characters as possible using this method and return the resulting string. If the final string is empty, return Empty String
# ex. input = aaabccddd - output = abd

# array = string.split("")
# p array
# i = 0
# while i < array.length
#   if array[i] == array[i + 1]
#     2.times do
#       array.delete_at(0)
#     end
#   end
#   i += 1
# end

# p array

# string = "aabbabbaabba"
# string = 'aa'
string = "baab"

def stringReducer(s)
  string_array = s.split('')
  times_to_do = string_array.length
  times_to_do.times do
    i = 0
    while i < string_array.length
      if string_array[i] == string_array[i + 1]
        string_array.delete_at(i)
        string_array.delete_at(i)
      else
        i += 1
      end
    end
  end
  reduced_string = string_array.join
  return reduced_string
end

p stringReducer(string)