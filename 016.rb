require "./misc/digits"

puts (2 ** 1000).digits.reduce(:+)
