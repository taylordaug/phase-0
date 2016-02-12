// JavaScript Olympics

// I paired with Ivy Vetor on this challenge.

// This challenge took me 2 hours.

// Bulk Up
var athletes = [
  {name: "Sarah Hughes", event: "Ladies' Singles"}, {name: "Bruce Jenner", event: "Men's Triathalon"}]


var win = function(athletes){
  for(var counter = 0; counter < athletes.length; counter ++){
    athletes[counter].win = console.log((athletes[counter].name) + " won the " +       (athletes [counter].event)+ "!")
  }
}

win(athletes)

// Jumble your words
var reverse = function(var1){
  console.log(var1.split('').reverse().join(''));
};

reverse("Hello")

// 2,4,6,8
var evenArray = []
var evenFunction = function(array) {
  for(var i = 0; i<array.length; i++) {
    if (array[i] % 2 === 0) {
      evenArray.push(array[i])
    };
  };
  console.log(evenArray);
};
evenFunction([2, 3, 4, 5, 6, 7, 46, 50])


// "We built this city"
function Athlete(name, age, sport, quote)
{this.name = name;
this.age = age;
this.sport = sport;
this.quote = quote;
};

var michaelPhelps = new Athlete( "Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// I am getting more comfortable with for loops to iterate over objects.
// What are constructor functions?
// Constructor functions are like Ruby classes. You can "initialize" in a sense a variety of variables that each new object created from a constructor will take on. You can create a new object using a constructor function that will take on a series of arguments and spit out a new object.
// How are constructors different from Ruby classes (in your research)?
// They are very similar, but instead of using instance variables to initialize arguments, you use the keyword "this". Anything with "this" will be a property or method created for the new object.