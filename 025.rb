a, b, i = 1, 1, 2
while true
  break if a.to_s.length >= 1000
  a, b, i = a + b, a, i + 1
end

puts i
