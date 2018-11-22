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
