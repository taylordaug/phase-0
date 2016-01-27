=begin
Input: Array of strings (names) separated by commas
Output: Array inside array with names
Steps:
1. Create new array that is array within an array and set the default length to 5
1. Find how many people are in array (length)
2. Divide that length so that 3 are left (modulus) and figure out how many groups it divides into
3. Create a new array with the number of spaces you find in #2
4. Add people from first array into new array
5. If the last array[..-1] array length is less than 3, split it up and add it to first array

=end

people = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def acct_groups(people)
  people.shuffle!
  groups_of_people = people.each_slice(4).to_a
  length_array = groups_of_people.length
  groups_of_people.each {|x|
    if x.length < 3
      groups_of_people[0].concat(x)
      groups_of_people.delete_at(-1)
    end
  }
  i = 1
  groups_of_people.each {|x|
    puts "#{i}. " + x.join(", ")
    i += 1}

  end

acct_groups(people)

#.product
#.shift - removes first element of array and returns it (move small array to top, return it split it and add to others)

  #last_length = groups_of_people[-1].length
  #if last_length <

