-- 2520 is the smallest number that can be divided by each of the numbers from 1
-- to 10 without any remainder. What is the smallest positive number that is
-- evenly divisible by all of the numbers from 1 to 20?

find :: (a -> Bool) -> [a] -> a
find fn lst = head $ filter fn lst

isEvenlyDivisible :: Int -> Bool
isEvenlyDivisible nb = all (\x -> nb `mod` x == 0) [1..20]

main = do
  let result = find isEvenlyDivisible [2520..]
  putStrLn $ show result
