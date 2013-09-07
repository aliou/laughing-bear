# The following iterative sequence is defined for the set of positive integers:
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
#  13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

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
