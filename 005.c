/* 2520 is the smallest number that can be divided by each of the numbers from 1
 * to 10 without any remainder. What is the smallest positive number that is
 * evenly divisible by all of the numbers from 1 to 20? */

#include <stdio.h>

int	is_evenly_divisible(int nb)
{
  for (int i = 1; i <= 20; i++)
  {
    if (nb % i != 0)
      return (0);
  }
  return (1);
}

int	main()
{
  int nb = 2520;
  while (!is_evenly_divisible(nb))
    nb++;
  printf("%d\n", nb);
  return (0);
}
