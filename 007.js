// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
// that the 6th prime is 13.
// What is the 10 001st prime number?

function isPrime(nb)
{
  if (nb === 0 || nb === 1)
    return false;
  if (nb === 2)
    return true;
  if (nb % 2 === 0)
    return false;
  var div = 3;
  while (div < nb / 2)
  {
    if (nb % div === 0)
      return false;
    div++;
  }
  return true;
}

primes = [];

var i = 2;
while (primes.length !== 10001)
{
  if (isPrime(i))
    primes.push(i);
  i++;
}
console.log(primes[10000]);
