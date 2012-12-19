// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
// Find the sum of all the primes below two million.

function isPrime(nb)
{
  if (nb === 0 || nb === 1)
    return false;
  if (nb === 2)
    return true;
  if (nb % 2 === 0)
    return false;
  var div = 3;
  while (div <= Math.sqrt(nb))
  {
    if (nb % div === 0)
      return false;
    div++;
  }
  return true;
}

var sum = 2;

for (var i = 3; i < 2000000; i += 2)
{
  if (isPrime(i))
    sum += i;
}
console.log(sum);