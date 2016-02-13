// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Take care of the kitten! Feed the kitten when it gets hungry, pet it when it needs attention. If too much time passes, the kitten will feel neglected and run away.
// Overall mission: Get the kitten back to full and happy before it runs away!
// Goals: Pet and feed the kitten.
// Characters: Kitten, water
// Objects: Kitten(name, full, happy, thirsty), water(howMuch)
// Functions: for kitten: checkStatus, feed, purrStatus, pet, drinkWater, randomizeNeeds; for Water: refill

// Pseudocode
// Upon opening game, new kitten and new water objects are created
// Click Play to start: randomly generate status for happy and full
//Click button to check if hungry? or if happy?
//If hungry, click button to feed, adds 1 point fullness each click
//If not happy, click button to pet, adds 1 point happiness each click
//If click feed button when too full, kitten gets sick and game is over
//If kitten's fullness dips below 25%, parakeet can come steal food
//set timer, if don't feed kitten in this time, it will run away
//If you pet him when he needs food, parakeet will eat the food
//If you feed him when he needs to be pet, he will cry
//If you pet him when he needs to be pet, he will purr

// Initial Code
var kitten = function (name, full, happy) {
  this.name = name;
  this.full = 0;
  this.happy = 0;
  this.thirsty = 10;
}

var fullStatus
var happyStatus

var Water = function (howMuch) {
  this.howMuch = 3;
}

kitten.drinkWater = function() {
  kitten.thirsty = (yourWater.howMuch --);
  if (yourWater.howMuch <= 0){
  document.getElementById("output").innerHTML = ("Please refill my water bowl.");}
  else
    {
  document.getElementById("output").innerHTML = ("Mmm, refreshing!");}
}

Water.refill = function() {
  yourWater.howMuch = 3
  document.getElementById("output").innerHTML = ("My water bowl is full.");
}

var randomizeNeeds = function () {
fullStatus = [1,2,3,4,5,6,7,8,9,10][Math.floor(Math.random()* 10)];
happyStatus = [1,2,3,4,5,6,7,8,9,10][Math.floor(Math.random()* 10)];
document.getElementById("output").innerHTML = (yourKitten.name + " says: Take care of me!");
}

kitten.checkStatus = function () {
    if (fullStatus > 10) {
      document.getElementById("output").innerHTML = ("You have fed " + yourKitten.name + " too much! " + yourKitten.name + " threw up on your carpet.");}
    else if (fullStatus >= 8 && fullStatus <= 10) {
      document.getElementById("output").innerHTML = (yourKitten.name + " is full!");}
    else if (fullStatus >= 5 && fullStatus <= 7) {
      document.getElementById("output").innerHTML = (yourKitten.name + " is a little hungry!");}
    else if (fullStatus >= 3 && fullStatus <= 4){
      document.getElementById("output").innerHTML = (yourKitten.name + " is very hungry!");}
    else {
      document.getElementById("output").innerHTML = (yourKitten.name + " is STARVING!");}
}

kitten.feed = function() {
  kitten.full = fullStatus ++
  if (fullStatus >= 10){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, no more, I'm stuffed!")}
  else if (fullStatus === 9){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat a tiny bit more.")}
   else if (fullStatus === 8){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat a bit more.")}
   else if (fullStatus === 7){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat some more.")}
   else if (fullStatus === 6){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat much more.")}
  else if (fullStatus === 5){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat way more.")}
  else if (fullStatus === 4){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I could eat more.")}
  else if (fullStatus === 3){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I need some more.")}
   else if (fullStatus === 2){
    document.getElementById("output").innerHTML = (yourKitten.name + " says, I need way more!")}
  else {document.getElementById("output").innerHTML = (yourKitten.name + " says, I need a lot more!")}
}

kitten.purrStatus = function () {
    if (happyStatus > 10) {
      document.getElementById("output").innerHTML = ( yourKitten.name + " is the happiest kitten that ever lived.");}
    else if (happyStatus >= 8 && happyStatus <= 10) {
      document.getElementById("output").innerHTML = (yourKitten.name + " wants a little more attention.");}
    else if (happyStatus >= 5 && happyStatus <= 7) {
      document.getElementById("output").innerHTML = (yourKitten.name + " needs more attention");}
    else if (happyStatus >= 3 && happyStatus <= 4){
      document.getElementById("output").innerHTML = (yourKitten.name + " doesn't feel loved!");}
    else {
      document.getElementById("output").innerHTML = (yourKitten.name + " is meowing loudly for attention.");}
}

kitten.pet = function() {
  kitten.happy = happyStatus ++
  if (happyStatus >= 10) {
      document.getElementById("output").innerHTML = ( yourKitten.name + " is purring extremely loudly.");}
  else if (happyStatus === 9) {
      document.getElementById("output").innerHTML = ( yourKitten.name + " is purring very loudly.");}
  else if (happyStatus === 8){
    document.getElementById("output").innerHTML = (yourKitten.name + " is purring loudly.")}
  else if (happyStatus === 7){
    document.getElementById("output").innerHTML = (yourKitten.name + " is purring pretty loudly.")}
  else if (happyStatus === 6){
    document.getElementById("output").innerHTML = (yourKitten.name + " is purring moderately loudly.")}
  else if (happyStatus === 5){
    document.getElementById("output").innerHTML = (yourKitten.name + " is purring softly.")}
  else if (happyStatus === 4){
    document.getElementById("output").innerHTML = (yourKitten.name + " is purring very softly.")}
  else if (happyStatus === 3){
    document.getElementById("output").innerHTML = (yourKitten.name + " is not purring yet.")}
  else if (happyStatus === 2){
    document.getElementById("output").innerHTML = (yourKitten.name + " is staring at you and is not purring.")}
  else {document.getElementById("output").innerHTML = (yourKitten.name + " is grumpy and ignoring you.")}
}

var tooLong = function() {
  document.getElementById("output").innerHTML = ("You neglected " + yourKitten.name + " for too long. " + yourKitten.name + " ran away to find a better home.");}

var yourKitten = new kitten(window.prompt("Please name your kitten:", "Bob"), "yourKitten")

var yourWater = new Water

document.getElementById("name").innerHTML = yourKitten.name;
document.getElementById("name").innerHTML = yourKitten.name + " is your kitten! Take care of " + yourKitten.name + " by clicking PLAY."



// Refactored Code






// Reflection
// What was the most difficult part of this challenge?
// Getting objects and functions to interact and functions to change properties of objects was very difficult for me. I had to use console.log a bunch to print out what was happening to see if my functions were actually modifying object properties. I had to adjust my thinking a bit for calling methods when I decided to incorporate buttons into my game.

// What did you learn about creating objects and functions that interact with one another?
// To create a function that interacts with an object, you can call the function on the object like "kitten.feed" - this specifies that the function feed acts on the object properties kitten. This allowed me to pull in properities for the kitten, like how full it was.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// setInterval(method, time in milliseconds) was an interesting method that could set off a particular function after a certain amount of time had passed. I played around with this for a long time, trying to depete the kitten's hunger stores as time passed, but this proved to be too difficult - I'll keep working on it!

// How can you access and manipulate properties of objects?
//Access properties of objects using dot or bracket notation. To access the full property for my kitten, I'd type kitten.full and then I could change that value by making it equal to something else.