How does tracking and adding changes make developers' lives easier?
Developers are able to see a history of the changes they've made over time. This saves developers the pain of starting all over if they introduce a bug into their code inadvertently. You can always revert to a working version of the code while you debug!
What is a commit?
A commit is a save point. It is a version of your code in one snapshot in time.
What are the best practices for commit messages?
Start with a "subject" line that is capitalized and only 50 characters that summarizes the change, follow it with a space and then write a more detailed explanation of changes no longer than 72 characters. Use the imperative, not past, tense. A good convention is to write the commit message as if you are giving a person directions instead of explaining what you did.
What does the HEAD^ argument mean?
HEAD^ sends you back to the last commit you made. HEAD is the current commit you are on and the ^ sends you back one.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages are modified, staged, and committed.First you modify or create a new file in your working directory. The file is modified, but not staged at this point. To stage the change, use the command "git add file-name." This adds the file to the stage to be committed. The file is now staged, but not yet committed. However, you cannot commit a file before you stage it. The next stage is a commit. You do this to the staged file by using the command "git commit file-name -m" which opens a sublime text box for you to write your commit message in. Save and close your sublime window and return to your terminal. The commit takes your files from the staging area and stores them permanently to your Git directory. Check your commit using "git status" to make sure you've committed everything you wanted to.
Write a handy cheatsheet of the commands you need to commit your changes?
-git checkout -b feature-branch-name: creates a new branch called "feature-branch-name"
-touch filename.md: creates a new file (make changes to this file by opening the file in sublime)
-git add file-name: stages the file
-git commit file-name -m: opens commit message window - write  your commit, save, close window and then the commit is made
-git checkout master: check master branch for changes
-git pull origin master: fetch changes from remote repository and merges them
-git checkout feature-branch-name: check changes to feature branch, navigate to it
-git merge master: merges changes from master into feature branch
-git push origin feature-branch-name: pushes the change to GitHub (may ask for username and password)
-Pull request in GitHub comes next

What is a pull request and how do you create and merge one?
A pull request merges changes in your feature branch into the master branch. Visit your repository on GitHub and make sure you are on the branch you were just working on. Click the green "Compare & pull request" button which opens a pull request. Make sure the base branch is "master" and the compare branch is "your feature branch." Add a subject and write some text to describe your changes. Click the "Create pull request button." This gives you a linkable page for other developers to view your code. To merge the request, go to the "conversation" tab and click "merge pull request." Click "confirm merge" when asked. Clean up by deleting the feature branch since you've merged it with your master and no longer need it.

Why are pull requests preferred when working with teams?
When you make a pull request, you have a linkable page that allows other developers to review your code. After you do this, another developer will review and then merge your code to the master branch. This makes it possible for others to also add commits to the pull request by pushing to the same branch. This keeps all changes together and ensures everyone is working on the most current version.