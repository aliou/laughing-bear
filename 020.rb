require "./misc/digits"
require "./misc/factorial"

puts 100.factorial.digits.inject(:+)
