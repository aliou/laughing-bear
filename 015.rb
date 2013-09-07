# Starting in the top left corner of a 22 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 2020 grid?

require "./misc/factorial"

def combination(n, p)
  n.factorial / p.factorial / (n - p).factorial
end

puts combination(40, 20)
