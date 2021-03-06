// Each new term in the Fibonacci sequence is generated by adding the previous
// two terms. By starting with 1 and 2, the first 10 terms will be:
// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
// By considering the terms in the Fibonacci sequence whose values do not exceed
// four million, find the sum of the even-valued terms.

fn main() {
    let mut sum = 0;
    let mut fib1 = 1;
    let mut fib2 = 1;
    let mut current;

    while fib2 < 4000000 {
        current = fib1 + fib2;
        if current % 2 == 0 {
            sum += current;
        }
        fib2 = fib1;
        fib1 = current;
    }

    println!("sum: {}", sum);
}
