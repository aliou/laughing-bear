// A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
// a^2 + b^2 = c^2
// For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

function is_pythagorean(a, b, c)
{
  if (a * a + b * b === c * c)
    return true;
  return false;
}

function get_triplets()
{
  for (var i = 0; i < 1000; i++)
  {
    for (var j = i + 1; j < 1000; j++)
    {
      for (var k = j + 1; k < 1000; k++)
      {
        if (i + j + k === 1000 && is_pythagorean(i, j, k))
          return [i, j, k];
      }
    }
  }
}
var triplets = get_triplets();
console.log(triplets[0] * triplets[1] * triplets[2])