// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Connor Reaumond.

// // Pseudocode
// turn number to string, then put in array
// get length of the array
// reverse the array so we can use positive indices

// FOR
//   set counter to 3
//   when the counter is less than length
//     add comma to array at position counter
//     add 3 to counter
//     add 1 to length for every comma inserted
//   turn array back into string and reverse
//
// // Initial Solution
//   function separateComma(number) {
//   var string = number.toString();
//   var array = string.split("");
//   array.reverse();
//   var length = array.length;
//   for (var counter = 3; counter < length; counter += 4) {
//     array.splice(counter, 0, ",")
//     length += 1
//   }
//   array.reverse();
//   var join = array.join("");
//   console.log(join);

// }

// Refactored Solution
function separateComma(number) {
  var numberArray = number.toString().split("");
  numberArray.reverse();
  var numLength = numberArray.length;
  for (var counter = 3; counter < numLength; counter += 4) {
    numberArray.splice(counter, 0, ",")
    numLength += 1
  }
  var numberString = numberArray.reverse().join("");
  console.log(numberString);
}



// Your Own Tests (OPTIONAL)
separateComma(1569743123123123)



// // Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// The approach was very similar. We thought about how to access different parts of the number and realized we had to do this by pushing the number into an array. Once it was inside an array, we just had to figure out the indices that needed to have commas. The logic seemed very similar to the Ruby solution, just the syntax was different.
// What did you learn about iterating over arrays in JavaScript?
// In JS, you iterate over arrays using for loops, instead of built-in methods like each and map in Ruby.
// What was different about solving this problem in JavaScript?
// Instead of iterating over an array with a method like #each, we just used a counter to determine the index where we would insert a comma within the array. There are many syntax differences to get used to, especially listing all conditions in one line in a for loop.
// What built-in methods did you find to incorporate in your refactored solution?
// We found the #splice method. It takes 3 arguments like this: (index the insertion will go out, what to delete, and what will be inserted). This method allowed us to insert a comma at the "counter" index and allow the counter to count up in our for loop. The methods reverse, join, and split were similar to Ruby, but we were confused why methods like toString() and reverse() had empty closed parentheses right after. In looking this up, it seems like the empty parentheses added to the end of the function calls the function that was just created. It is still confusing to know when it should be empty and when it needs arguments - this will take time memorizing new JS methods.