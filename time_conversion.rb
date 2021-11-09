# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
# ex. input - "07:05:45PM"
# ex. output - "19:05:45"

# s = "07:05:45PM"
# s = "07:05:45AM"
# s = "12:00:00AM"
# s = "12:00:00PM"
# s = "12:00:01AM"
s = "12:00:01PM"

def change_time(s) # works but not longer than needed - find ways to shorten
  array = []
  new_array = []

  i = 0
  while i < s.length
    array << s[i]
    i += 1
  end

  if s[0] == "1" && s[1] == "2" && s[8] == "A"
    i = 0
    2.times do
      array[i] = 0
      array.pop
      i += 1
    end
    military_time = array.join
  elsif s[0] == "1" && s[1] == "2" && s[8] == "P"
    2.times do
      array.pop
    end
    military_time = array.join
  elsif array[8] == "P"
    pm_i = (array[0] + array[1]).to_i
    pm_i += 12
    pm_s = pm_i.to_s
    
    i = 0
    while i < pm_s.length
      new_array << pm_s[i]
      i += 1
    end

    j = 0
    2.times do
      array[j] = new_array[j]
      array.pop
      j += 1
    end

    military_time = array.join
  elsif array[8] == "A"
    2.times do
      array.pop
    end
    military_time = array.join
  end
  return military_time
end

p change_time(s)