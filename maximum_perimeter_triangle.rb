# Given an array of stick lengths, use  of them to construct a non-degenerate triangle with the maximum possible perimeter. Return an array of the lengths of its sides as  integers in non-decreasing order.

# If there are several valid triangles having the maximum perimeter:

# Choose the one with the longest maximum side.
# If more than one has that maximum, choose from them the one with the longest minimum side.
# If more than one has that maximum as well, print any one them.
# If no non-degenerate triangle exists, return [-1].
# The condition for a non-degenerate triangle with sides a, b, c is − a + b > c a + c > b b + c > a
# ex. 
# sticks = [1, 2, 3, 4, 5, 10]
# The triplet (1, 2, 3) will not form a triangle. Neither will (4, 5, 10) or (2, 3, 5), so the problem is reduced to (2, 3, 4) and (3, 4, 5). The longer perimeter is 3 + 4 + 5 = 12.

# sticks = [1, 2, 3, 4, 5, 10]
# sticks = [1, 1, 1, 3, 3]
sticks = [1, 2, 3]

def maximum_perimeter_triangle(sticks)
  highest = 0
  i = 0
  while i < sticks.length
    if sticks[i + 2] != nil
      a = sticks[i] 
      b = sticks[i + 1]
      c = sticks[i + 2]
      if a + b > c && a + c > b && b + c > a 
        if (a + b + c) > highest
          highest = a + b + c
          aa = a 
          bb = b 
          cc = c
        end
      end
    end
    i += 1
  end
  if a + b > c && a + c > b && b + c > a 
    return aa, bb, cc
  else
    return -1
  end
end

p maximum_perimeter_triangle(sticks)