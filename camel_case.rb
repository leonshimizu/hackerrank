s = "oneTwoThree" # output should be 3 - one, two, three

def camel_case(s)
  count = 1
  i = 0
  while i < s.length
    if s[i] == s[i].upcase
      count += 1
    end
    i += 1
  end
  return count
end

p camel_case(s)