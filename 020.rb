require "./misc/digits"

puts (1..100).inject(:*).digits.inject(:+)
