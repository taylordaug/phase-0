// DOM Manipulation Challenge


// I worked on this challenge Dan Heintzelman and Jones Melton.


// Add your JavaScript calls to this page:


// Release 1:

var first_div = document.getElementById('release-0')
 first_div.className += 'done';


// Release 2:
var second_div = document.getElementById('release-1')
  second_div.style.display = "none";


// Release 3:
var firstH1 = document.getElementsByTagName('h1')[0]
  firstH1.innerHTML = "I completed release 2.";


// Release 4:

document.getElementById('release-3').style.backgroundColor = "#955251";

// Release 5:

var rel4 = document.getElementsByClassName('release-4')
for (var i = 0; i < rel4.length; i++) {
  rel4[i].style.fontSize = "2.0em";
}

// Release 6:

var templ = document.getElementById('hidden');
document.body.appendChild(templ.content.cloneNode(true));

// Reflection
// What did you learn about the DOM?
// The DOM is basically how the browser renders the source code that makes up the website.
// What are some useful methods to use to manipulate the DOM?
// Manipulating elements in the DOM with JavaScript entails calling the specific tag, id, or class that you want to change. You access it with this syntax: document.getElementbyId("id") OR document.getElementsByClassName OR document.getElementsByTagName. You can add the styling elements at the end of those calls with ".style.backgroundColor"
