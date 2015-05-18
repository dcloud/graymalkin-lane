# Working with directories and files

You are going to run commands on the command line, record observations, and attempt to answer the associated questions. You should have already completed the "Exploring the filesystem" and "Input/Output Streams" activities, since this will build on what you learned there.

Start by changing to a directory where you will keep your work: `~/Documents`, `~/Dropbox` or wherever you keep things. You can also open that directory in the Finder to watch as the changes

1. Type `ls | grep learning-command-line` and press Return. Did expression print out any matches? What did this expression do (write down your answer)?

2. We're going to make a directory named `learning-command-line`. Go ahead and Google/DuckDuckGo `man mkdir`. Run `mkdir learning-command-line` and press Return. Now run `ls`. Is your directory there? What is inside your new directory?

    `mkdir` won't overwrite an existing directory, so the actions in #1 weren't necessary (except to review some concepts from before!).

3. Now `cd` into the `learning-command-line` directory. Now use *one command* make two new directories inside `learning-command-line`, one named `activities` and one named `notes`. How can you tell `mkdir` to make more than one directory at a time? Take a guess and write down what you tried.

    The following parts will use the `activities` and `notes` directories, so if you had trouble creating them on the command line, make them in the Finder.

4. Let's create a new empty file for class notes. Search `man touch` and read the description. Use `touch` to create a file named `lesson-02.txt` in your `notes` directory. Use `ls` to confirm that it exists (you can also check for it using the Finder).

    Your computer *may* have a command called `mkfile`, but `touch` is better ~~most~~ almost all of the time.

5. Now create a file that will be hidden from the Finder and `ls`. Use `touch` to create a file named `.hidden_notes` inside the `notes` directory. Use `ls` to list the contents of the directory where you created that file. What do you see? Now use either the `-a` or `-A` option with `ls`. Do you see the file you created now? Is the file visible in the Finder?

6. Put secret messages into our hidden file:
    A. Run `echo 'I am so cool and talented.' > notes/.hidden_notes` and press Return. What happened (anything)?

    B. Run `cat notes/.hidden_notes`. Do you see your message?

    C. Run `echo 'No secrets here!' > notes/.hidden_notes`, then `cat` the file again. What do you see now?

    D. Run `echo I have a new trick! >> notes/.hidden_notes` (note the double `>`). Cat the file again. What do you see; what effect did `>>` have that was different than regular `>`?

7. Moving files around (We're using `-i` so we get a prompt before overwriting anything):
    A. Create a new file named `foo.txt` in your current working directory. Search `man mv`; what does the man page say `mv` can do?

    B. Move `foo.txt` into your `notes` directory: type `mv -i foo.txt notes/` and press Return. Did it work? What happened?

    C. Create another file named `foo.txt` in your current working directory, then rerun `mv -i foo.txt notes/`. What happened? If you see a *prompt* asking for a *y*es or *n*o response, type `n` and press Return.

8. Now rename the `notes/foo.txt` file to `bar.txt` using `mv`. Run `mv -i notes/foot.txt bar.txt`. Where is `bar.txt` located? Why do you think that happened? Run `mv -i bar.txt notes/foobar.txt`. What happened that time? What do you think is happening?

9. We can also move and rename directories. Make a new directory in your current working directory. Now `mv -i` it so that it is inside the `notes` directory using a different name.

10. Copy your `.hidden_notes` to a new file named `public_notes.txt` in the `notes` directory. Look up `man cp` and read about the copy command. The syntax for `cp` is similar to `mv`. Write down the command you think you should run in the form of `cp -i SOURCE DST`, then run it. Now `cat` that file. What do you see? `ls -A` the `notes` directory. You should see both files.
