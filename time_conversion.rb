# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
# ex. input - "07:05:45PM"
# ex. output - "19:05:45"

s = "07:05:45PM"

def change_time(s)
  array = []

  i = 0
  while i < s.length
    array << s[i]
    i += 1
  end
  # p array

  if array[8] == "P"
    pm_i = (array[0] + array[1]).to_i
    pm_i += 12
    pm_s = pm_i.to_s
    # p pm_s
  elsif array[8] == "A"
    military_time = array.join
  end

  new_array = []
  i = 0
  while i < pm_s.length
    new_array << pm_s[i]
    i += 1
  end
  # p new_array

  j = 0
  2.times do 
    array[j] = new_array[j]
    array.pop
    j += 1
  end
  # p array

  military_time = array.join
  return military_time
end

p change_time(s)

# array = ["1", "9", ":", "0", "5", ":", "4", "5", "P", "M"]
# p array
# array.pop
# array.pop
# p array

# s = "07:05:45PM"
# array = []

# i = 0
# while i < s.length
#   array << s[i]
#   i += 1
# end
# # p array

# if array[8] == "P"
#   pm_i = (array[0] + array[1]).to_i
#   pm_i += 12
#   pm_s = pm_i.to_s
#   # p pm_s
# elsif array[8] == "A"
#   military_time = array.join
# end

# new_array = []
# i = 0
# while i < pm_s.length
#   new_array << pm_s[i]
#   i += 1
# end
# # p new_array

# j = 0
# 2.times do 
#   array[j] = new_array[j]
#   array.pop
#   j += 1
# end
# # p array

# military_time = array.join
# p military_time