// JavaScript Olympics

// I paired with Ivy Vetor on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up




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