function fizzbuzz(arr) {
  fizzes = [];
  for(let i = 0; i < arr.length, i++) {
    if ((arr[i] % 3) == 0) {
      if((arr[i] % 5) != 0) {
        fizzes << arr[i]
      }
    else {
      if((arr[i]) % 5) {
        fizzes << arr[i]
      }
    }
  }
}
