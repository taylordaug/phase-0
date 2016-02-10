 // Manipulating JavaScript Objects

// I worked on this challenge by myself.

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}
// __________________________________________
// Write your code below.

var adam = {name: "Adam"};
terah.spouse = adam;
adam.spouse = terah;
terah.weight = 125;
delete terah.eyeColor;
terah.children = {};
terah.children.carson = {name: "Carson"};
terah.children.carter = {name: "Carter"};
terah.children.colton = {name: "Colton"};
adam.children = terah.children;


// __________________________________________
// Reflection: Use the reflection guidelines
//What tests did you have trouble passing? What did you do to make it pass? Why did that work?
// I had the most trouble passing the children as objects. I was creating terah.children = {} and then var carson = {name: "Carson"} and terah.children = carson. It turned out that I actually didn't need to create a new object for carson using "var". It appears that when you create an object within another object, it doesn't need to be defined with "var". To assign carson to the terah object, I actually had to call that property along with the children property so it looked like this terah.children.carson and set it equal to the property/value of carson.

// How difficult was it to add and delete properties outside of the object itself?
// Once I figured out how to add properties by calling them with the "." and setting them equal to their new value, it made sense. The format followed something like this: terah.property = newValue. To delete, it was similar, but you'd write the keyword "delete" followed by the object.property. Deleting the property deleted the value as well.

// What did you learn about manipulating objects in this challenge?
// Manipulating JS objects is all about calling the correct property with the "." on the object and setting its value. To liken JS objects to Ruby hashes, calling object.property = value is much like hash[key] = value. The dot notation is used when you know the exact property you'd like to manipulate. The bracket notation is used when you want to access a particular property at an index.


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the object adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined || null,
  "The terah eyeColor property should be deleted.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "Terah's spouse's spouse property should refer back to the terah object.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be defined as an Object.",
  "7. "
)

assert(
  (terah.children.carson instanceof Object),
  "carson should be defined as an object and assigned as a child of Terah",
  "8. "
  )

assert(
  terah.children.carson.name === "Carson",
  "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
  "9. "
)

assert(
  (terah.children.carter instanceof Object),
  "carter should be defined as an object and assigned as a child of Terah",
  "10. "
  )

assert(
  terah.children.carter.name === "Carter",
  "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
  "11. "
)

assert(
  (terah.children.colton instanceof Object),
  "colton should be defined as an object and assigned as a child of Terah",
  "12. "
  )

assert(
  terah.children.colton.name === "Colton",
  "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
  "13. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be equal to the value of the terah children property",
  "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)