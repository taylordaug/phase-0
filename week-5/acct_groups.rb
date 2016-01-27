=begin
Input: Array of strings (names) separated by commas
Output: Array inside array with names
Steps:
1. Jumble up the names every time
2. Split current array of strings into arrays (size of 4) within the array
2. Iterate through array of arrays and figure out if length of any of the arrays is less than or equal to 3
3. IF length of array <= 3, split that array into another array of array.
4. For each index in the small array we just split up, add each index one at a time to the arrays within the original array, so each of the top few arrays get one extra person.
=end

people = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams"]

def acct_groups(people)
#shuffle up names every time to always get diff answer
  people.shuffle!
#break up array into array of arrays of specified length
  groups_of_people = people.each_slice(4).to_a
  p = 0
#iterate over array to find one smaller than specified length
  groups_of_people.each {|x|
    if x.length <= 3
      last_array = x.each_slice(1).to_a
      p = 0
      for p in p..x.length
        groups_of_people[p] << last_array[p]
        p += 1
      end
      groups_of_people.delete_at(-1)
    end
  }
#to number each group and organize the names
  i = 1
  groups_of_people.each {|x|
    puts "#{i}. " + x.join(", ")
    i += 1}
end

acct_groups(people)

=begin
Reflection
What was the most interesting and most difficult part of this challenge?
I discovered many new methods for arrays like .each_slice which slices up an array into portions you specify, and .shuffle! which creates a new shuffled array each time you run your method. I struggled splitting up the small group and adding each of the members to different groups. I had to again split that into an array of arrays to push the indices to the indices of the larger, original array.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I get so many ideas when I first start to look at something and think of many different paths to go down. Pseudocode, at times, helps me narrow down and follow one pathway, but I often veer from that.

Was your approach for automating this task a good solution? What could have made it even better?
Originally, I just took the last array that was less than the specified length and plopped the whole thing onto the top array to make it one larger group. This made one very uneven group, so I worked to split up that smaller array into each index and add each index to a different array, so every group only had one extra person and no groups went over 5.

What data structure did you decide to store the accountability groups in and why?
I used an array of arrays. It made sense to push indices of one array to another array, and then to iterate over those arrays to print all the names out in an organized fashion.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Yes! I practiced using the for loop with counters which helped and also discovered the << to push indices of arrays into other arrays. The method .delete_at was helpful to delete something at a specific location in the array. The method .join joined strings of arrays together and I was able to add punctuation between the strings to make everything look cleaner.

=end