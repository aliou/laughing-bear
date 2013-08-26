#include <math.h>
#include <stdio.h>

int divisors(int nb)
{
  int count = 0, max = sqrt(nb), i = 1;

  for (i = 1; i < max; i++)
    if (nb % i == 0)
      count += 2;
  if (max * max == nb)
    count++;
  return (count);
}

int main()
{
  int nb = 0, i = 0;

  for (i = 1; ; i++)
  {
    nb += i;
    if (divisors(nb) > 500)
    {
      printf("%d\n", nb);
      break;
    }
  }
  return (0);
}
