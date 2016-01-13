<img src="/imgs/3.4-exercise-1.png">
<img src="/imgs/3.4-exercise-2.png">
<img src="/imgs/3.4-exercise-3.png">
<img src="/imgs/3.4-exercise-4.png">
<img src="/imgs/3.4-exercise-5.png">
<img src="/imgs/3.4-exercise-6.png">
<img src="/imgs/3.4-exercise-7.png">
<img src="/imgs/3.4-exercise-8.png">
<img src="/imgs/3.4-exercise-9.png">

###How can you use Chrome's DevTools inspector to help you format or position elements?
DevTools can help you by showing you how adjustments to your CSS code will change the formatting of your page. You can strikethrough elements to see how the page would change without them without completely eliminating them from the code. You can quickly see how elements interact with one another and what each change will produce. Once you're satisfied, then you can add the code into your CSS!

###How can you resize elements on the DOM using CSS?
You can resize elements using dimensions such as height and width. You can also add padding and border to extend the element out.

###What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
Elements are positioned using top, bottom, left, and right properties - but these properties will not work unless position is set. They work differently according to which position is used:

-Static is the default position. This is not affected by setting top, right, bottom, or left. This element is always positioned according to the normal flow of the page. If an element is static, it is not positioned.
-Relative positioning positions elements relative to its normal position. Setting the top, bottom, right, left properties will cause it to be adjusted from its normal position and other content will not be adjusted to fill any space left by the element.
-Fixed positioning fixes the positioning relative to the viewport. This means the element will always stay in the same place even if the page is scrolled. The top, bottom, right, left properties can position this element.
-Absolute positioning positions the element relative to the nearest positioned ancestor, instead of the viewport. If there is no positioned ancestor, it moves according to the document body, meaning it moves with page scrolling.

Absolute was tough because the elements moved relative to one another, so you change one and it affects the others. Fixed was easier because you knew it would remain in that same position!

###What are the differences between margin, border, and padding?
These make up the CSS box model. These are a box that wrap around every HTML element. Margin adds space outside the border, border adds a line of specified thickness, style, and color directly around the padding and content, and padding clears the area around the content inside the border and is transparent.

###What was your impression of this challenge overall? (love, hate, and why?)
My pair and I ran into many frustrations during this project. We were unaware if we were cheating by adding things like "left: 25%;" to center an item - but we couldn't figure out any other way! We kept running into issues with the positioning and just had to keep experimenting to find what worked. I semi-hated it in the moment, but realize it was necessary to go through all the trouble to cement these ideas in my mind.