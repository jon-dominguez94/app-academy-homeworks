function fizzbuzz(arr) {
  const fizzes = [];
  for(let i = 0; i < arr.length; i++) {
    if ((arr[i] % 3) === 0) {
      if((arr[i] % 5) !== 0) {
        fizzes.push(arr[i]);
      }
    }
    else {
      if((arr[i]) % 5 === 0) {
        fizzes.push(arr[i]);
      }
    }
  }
  return fizzes;
}

console.log(fizzbuzz([1,2,3,4,5,15,24,30,33]));//.forEach()


function isPrime(number) {
  if (number < 2) { return false ; }
  for(let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

console.log(isPrime(1));
console.log(isPrime(2));
console.log(isPrime(3));
console.log(isPrime(4));
console.log(isPrime(5));
console.log(isPrime(8));
console.log(isPrime(10));
console.log(isPrime(11));


function sumOfNPrimes (n) {
  let sum = 0;
  let count = 0;
  let i = 2;

  while (count < n) {
    if (isPrime(i)) {
      sum += i;
      count++;
    }
    i++;
  }

  return sum;
}
