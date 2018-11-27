function printCallback(array) {
  array.forEach(element => {
    console.log(element);
  });
}

function titleize(array, callback) {
  const newArray = array.map(el => `Mx ${el} Jingleheimer Schmidt`);
  callback(newArray);
}

const Elephant = function(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
};

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phRRRR'!!!`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  const randomTrick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${randomTrick}!`);
};


Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please";
  return (food) => {
    if (food !== undefined) {
      order = `${order.slice(0, -7)} and ${food} please`;
    }
    console.log(order);
  };
}