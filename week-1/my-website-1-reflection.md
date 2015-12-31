###My website link:
```
[http://taylordaug.github.io/](http://taylordaug.github.io/)
```

###Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
```
Visit the website "https://github.com/new." Make sure your username is listed under owner and then name your repository whatever you'd like. Add a description if necessary. If you want anyone to be able to see your repository and choose who can commit changes, click "public". If you want to be able to choose who can see your repository, click "private." Make sure to click the checkbox for "Initialize this repository with a README" because this allows you to immediately clone the repository to your computer. Decide if you'd like to add a license at the bottom. Different licenses allow outside users to do things to your code, such as modify, copy, and/or sell. Research these licenses before adding one! Click the green "Create repository" button to create it. Now that you've done this, hit command spacebar to open the search bar and type in "terminal." Click the terminal icon when it pops up. Now you will type a series of commands to clone (or copy) the repository you just created in GitHub (on the web) to your local computer. Decide which folder on your computer you'd like to copy your file to and go to that file by typing in "cd filename." Now, go back to the page on GitHub where you created your repository and find the textbox containing a URL in it next to "HTTPS" near the top of the page. Copy this link using command C. Now, return to your terminal and type the command "git clone" and then paste the URL you just copied right next to the command using command V. Your command should look like this "git clone https://github.com/taylordaug/taylordaug.github.io.git".That's it - now your newly create repository is stored in a directory locally on your own computer.
```

###Describe what open source means.
```
Open source means you are sharing the raw source code of your computer program with anyone in the world. By doing this, you allow anyone to make edits, copy, or even sometimes sell the code (with a license attached). Having the source code of a program allows you to dive into it to see how the program is made and edit it if you'd like.
```

###What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
```
It seems like in an ideal world everyone would share their ideas and allow anyone to see what they've built to invite feedback and improvements. Because I don't know much about coding yet, I am not nervous about putting my code out there because I know I'm not creating anything groundbreaking! I feel like I will become more protective once I start having original ideas and building real programs that I wouldn't want people to steal. I'm not sure yet how I will reconcile this.
```

###Assess the importance of using licenses.
```
Licenses allow others to help improve your code by viewing and modifying it. You still hold the original copyright, but licenses dictate what others can do with your code. Copyleft (a play on copyright, since it is the opposite) dictates what happens to versions of the code: an author may give every person who receives a copy of the work permission to reproduce, adapt, and redistribute the code. Commercial licenses stipulate whether others can make money off of your code. Reciprocity licenses dictate that users must share improvements on the code with the original author. Open-source licenses protect you as the original author and make sure you get the credit you deserve for your program!
```

###What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
```
Creating a new branch was solidified for me - I had forgotten the code was "git checkout -b feature-branch." I also realized that you don't have to be in the directory you want to work in to create a new branch. You can create it and then change directory down to where you want to be working - my understanding is that a branch is just a working stream, not a file stored somewhere, so it doesn't matter where/when it is created. Deleting a branch locally got tricky for me because the command is very similar to creating a new one, but is actually "git branch -d feature-branch." You can use -D instead to delete a branch even if it is not fully merged yet.
```

###Did you find any resources on your own that helped you better understand a topic? If so, please list it.
I realized I had a phase-0 directory nested inside a larger phase0 directory and wanted to change that name to devbootcamp so I wouldn't get confused. I forgot how to rename directories, so I basically just typed my question in Google and found an article very quickly that pointed me to that answer. Here is the [link](http://www.patrick-wied.at/blog/rename-files-and-folders-with-git) . The command was "mv phase0 devbootcamp" which essentially replaced the directory name phase0 with the name devbootcamp.