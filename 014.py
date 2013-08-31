cache = {}

def collatz(nb):
  if nb == 1:
    return 1
  if nb in cache:
    return cache[nb]
  if nb % 2 == 0:
    _next = nb / 2
  else:
    _next = 3 * nb + 1
  cache[nb] = collatz(_next) + 1
  return cache[nb]

max_chain = 0
max_value = 0
for i in range(2, 1000000):
  tmp = collatz(i)
  if tmp > max_chain:
    max_chain = tmp
    max_value = i

print max_value
