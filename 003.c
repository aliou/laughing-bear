/* The prime factors of 13195 are 5, 7, 13 and 29. */
/* What is the largest prime factor of the number 600851475143 ? */

#include <stdio.h>

int	is_prime(long nb)
{
  int	div;

  if (nb == 0 || nb == 1)
    return (0);
  if (nb == 2)
    return (1);
  if (nb % 2 == 0)
    return (0);
  div = 3;
  while (div < nb / 2)
  {
    if (nb % div == 0)
      return (0);
    div += 2;
  }
  return (1);
}

int	main()
{
  long	nb;
  long	div;

  div = 3;
  nb = 600851475143;
  while (nb && nb != 1)
  {
    if (nb % div == 0 && is_prime(div))
      nb = nb / div;
    else
      div += 2;
  }
  printf("Largest prime factor of 600851475143: %ld.\n", div);
  return (0);
}
