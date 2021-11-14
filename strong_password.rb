# password = '2bbbbbB!'
password = "Ab1"

def minimunNumber(n, password)
  if n >= 6
    count = 0
    if password.count("a-z") < 1
      count += 1
      puts "Needs a lower case letter"
    end
    if password.count("A-Z") < 1
      count += 1
      puts "Needs a upper case letter"
    end
    if password.count("0-9") < 1
      count += 1
      puts "Needs a number"
    end
    if password.count("!@#$%^&*()-+") < 1
      count += 1
      puts "Needs a special character"
    end
  elsif n < 6
    count = 0
    if password.count("a-z") < 1
      count += 1
      puts "Needs a lower case letter"
    end
    if password.count("A-Z") < 1
      count += 1
      puts "Needs a upper case letter"
    end
    if password.count("0-9") < 1
      count += 1
      puts "Needs a number"
    end
    if password.count("!@#$%^&*()-+") < 1
      count += 1
      puts "Needs a special character"
    end
    if count < 6
      while count < 6
        count += 1
      end
    end
  end
  return count
end
p minimunNumber(3, password)

# n = 3
# password = "Ab1"

# def minimumNumber(n, password):
#     numbers = "0123456789"
#     lower_case = "abcdefghijklmnopqrstuvwxyz"
#     upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#     special_characters = "!@#$%^&*()-+"

#     count = 0
#     if any(i.isdigit() for i in password) == False:
#         count += 1
#     if any(i.islower() for i in password) == False:
#         count += 1
#     if any(i.isupper() for i in password) == False:
#         count += 1
#     if any(i in special_characters for i in password) == False:
#         count += 1
#     return max(count, 6-n)

# print(minimumNumber(n, password))