-- The sum of the squares of the first ten natural numbers is,
--
--       1^2 + 2^2 + ... + 10^2 = 385
-- The square of the sum of the first ten natural numbers is,
--
--       (1 + 2 + ... + 10)^2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten
-- natural numbers and the square of the sum is 3025 - 385 = 2640.
--
-- Find the difference between the sum of the squares of the first one hundred
-- natural numbers and the square of the sum.

self_squared :: Int -> Int
self_squared x = x ^ x

squared_sum = foldl1 (+) [x ^ 2 | x <- [1..100]]
sum_squared = foldl1 (+) [1..100] ^ 2

main = do
  putStrLn $ show $ (sum_squared - squared_sum)
