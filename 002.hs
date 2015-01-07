-- Each new term in the Fibonacci sequence is generated by adding the previous
-- two terms. By starting with 1 and 2, the first 10 terms will be:
-- 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose values do not exceed
-- four million, find the sum of the even-valued terms.

action' :: Int -> Int -> Int -> Int -> [Char]
action' max acc1 acc2 sum
  | sum > max = show sum
  | otherwise = action acc2 (acc1 + acc2) (sum + if even acc1 then acc1 else 0)

action :: Int -> Int -> Int -> [Char]
action = action' 4000000

main :: IO ()
main = putStrLn $ show $ (action 1 1 0)
