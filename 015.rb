require "./misc/factorial"

def combination(n, p)
  n.factorial / p.factorial / (n - p).factorial
end

puts combination(40, 20)
