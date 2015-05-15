# Exploring the filesystem

You are going to run commands on the command line (in Terminal), record observations, and attempt to answer the associated questions. You aren't expected to know the answers, so come up with your best guess! You'll share your findings with the class.

## `ls` and paths

You can **l**i**s**t the contents of directories using the `ls` command. Let's explore!

1. In the terminal, type `ls` and press Return. What do you see? Compare that to the contents of the Finder window. Write down your observations.

2. Type `ls ` in the Terminal (don't forget a space after *ls*), then drag and drop a Folder (or the hard drive icon) on the Terminal window. What happened when you did that? Press Enter. What do you see? Write down your observations.

3. Type `ls /` and press Return. What do you see? Try using the Finder to navigate to a directory has somewhat similar contents. The contents will almost certainly not be the same between the Finder and Terminal's `ls`. Write down a guess as to what `ls /` does.

4. How would you get a list of your Applications on the command line? Write down what you think you'll need to type in the Terminal, then try it. Were you correct?

5. Type `ls ~/Downloads` and press Return. Write down what you see. Now type `ls ` (don't forget a space after *ls*), then drag your "Downloads" folder from the Finder to the Terminal. Note the information that was inserted. Press Return. Write down any differences or similarities in the response from the two commands. Now type `ls Downloads` and press Return. What is similar or different about the output from this command? What do you think the difference was between the three commands you just ran?

6. Type `ls ..` and press Return. What do you see? Make a guess about what `..` represents from that command, and write that down.

## `cd`, `pwd` to move around

On the command line, there is a strong sense of location; you are always executing commands from a directory on the filesystem. Running `ls` above may have given you some hints about your starting directory.

The `cd` command allows to you **c**hange **d**irectories and `pwd` will **p**rint (display) the **w**orking **d**irectory. Now let's explore using `cd` and `pwd`!

7. Type `cd /Applications` in the Terminal and press Return. What happened? Write down your observations. Now type `ls` and press Return. What do you see? Why do you think this is?

8. Type `pwd` and press Return. What does this show you? Now type `cd` and press Return. What changed? Now run `pwd` again. What does it show you now? Make a guess about what you think is happenning when you run `cd` and when you run `pwd`; write your guesses down.

9. Type `cd foobar` and press Return. What happened? What do you think this means?

10. Type `cd ~/Downloads` and press Return. What happened? Now type `cd ..` and press Return. What happened? What do you think `..` could signify?

11. Type `cd ~`. Where are you now? What do you think `~` signifies?
