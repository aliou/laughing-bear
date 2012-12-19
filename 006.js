// The sum of the squares of the first ten natural numbers is,
// 
//       1^2 + 2^2 + ... + 10^2 = 385
// The square of the sum of the first ten natural numbers is,
// 
//       (1 + 2 + ... + 10)^2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten 
// natural numbers and the square of the sum is 3025 - 385 = 2640.
// 
// Find the difference between the sum of the squares of the first one hundred 
// natural numbers and the square of the sum.

var sum_square = 0;
var square_sum = 0;

for (var i = 0; i <= 100; i++)
{
    sum_square += Math.pow(i, 2);
    square_sum += i;
}
square_sum = Math.pow(square_sum, 2);
console.log(square_sum - sum_square)
