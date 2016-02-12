// Release 5: Putting it all together
// Tests passed: sum and mean defined as functions; all tests for median
// Tests failed: sum and mean for even & odd lengths

// It looks like the sum and mean functions are broken. While running the code with examples and printing using console.log, I saw that it was printing nothing, so I figured out we actually weren't returning anything. I noticed that for both functions, there was an "i" counter for the index that was not defined with var and wasn't told to count up, it was simply called in function(i) with no context. This could have been broken in the refactor from the for loop to the forEach() method. In trying to fix the forEach syntax, I realized how much more sense the for loop made, so changed the code to iterate that way instead. After this change, all tests passed! The correct solutions for each are below:

// sum
function sum(array) {
  var totalSum = 0
  for(var counter = 0; counter < array.length; counter ++)
    {totalSum += array[counter];
  }
  return(totalSum);
}

//mean
function mean(array) {
  var totalSum = 0;
  for(var counter = 0; counter < array.length; counter ++)
    {totalSum += array[counter];
  }
  return(totalSum / array.length)
};


//median
function median(array) {
  if (array.length % 2 === 0) {
    return (array[array.length / 2] + array[(array.length / 2) - 1]).toFixed(2) / 2;
  } else {
    return array[Math.floor((array.length.toFixed(1) / 2))];
  }
};