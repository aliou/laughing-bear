-- A palindromic number reads the same both ways. The largest palindrome made
-- from the product of two 2-digit numbers is 9009 = 91 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

is_palindrome :: Int -> Bool
is_palindrome nb
  | nb < 10   = True
  | otherwise = (reverse $ show nb) == show nb

main = do
  let r = [100..999]
  putStrLn $ show $ maximum [ x * y | x <- r, y <- r, is_palindrome $ x * y ]
