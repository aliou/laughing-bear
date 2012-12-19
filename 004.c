// A palindromic number reads the same both ways. The largest palindrome made
// from the product of two 2-digit numbers is 9009 = 91 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

#include <stdio.h>
#include <string.h>

int	is_palindrome(int val)
{
  char	nb[256];

  sprintf(nb, "%d", val);
  for (int i = 0; i < strlen(nb) / 2; i++)
  {
    if (nb[i] != nb[strlen(nb) - i - 1])
      return (0);
  }
  return (1);
}

int	main()
{
  int	max = 0;
  for (int i = 999; i > 99; i--)
  {
    for (int j = 999; j > 99; j--)
    {
      if (is_palindrome(i * j) && i * j > max)
	max = i * j;
    }
  }
  printf("%d\n", max);
  return (0);
}
