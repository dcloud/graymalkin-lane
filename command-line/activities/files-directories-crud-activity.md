# Working with directories and files

You are going to run commands on the command line, record observations, and attempt to answer the associated questions. You should have already completed the "Exploring the filesystem" and "Input/Output Streams" activities, since this will build on what you learned there.

Start by changing to a directory where you will keep your work: `~/Documents`, `~/Dropbox` or wherever you keep things. You can also open that directory in the Finder to watch as the changes

1. We're going to create a directory named `learning-command-line`, but let's check to see if a directory with this name already exists. Type `ls | grep learning-command-line` and press Return. Did expression print out any matches? What did this expression do (write down your answer)?

2. Now we're going to make the directory. The command for making directories is called `mkdir`, so go ahead and Google/DuckDuckGo `man mkdir`. Run `mkdir learning-command-line` and press Return. Now run `ls`. Is your directory there? What is inside your new directory?

    `mkdir` won't overwrite an existing directory, so the actions in #1 weren't necessary (except to review some concepts from before!).

3. Now let's change our working directory (in the terminal, and optionally the Finder) to be `learning-command-line`. Write down the command you'd use, then try it. Now let's use *one command* make two new directories inside `learning-command-line`, one named `activities` and one named `notes`. How can you tell `mkdir` to make more than one directory at a time? Take a guess and write down what you tried.

    The following parts will use the `activities` and `notes` directories, so if you had trouble creating them on the command line, make them in the Finder.

4. Let's create a new empty file for class notes. The command we'll use to create a new file is called `touch`, so search `man touch` and read the description. Use `touch` to create a file named `lesson-02.txt` in your `notes` directory. Now run `ls -lT` on the directory containing `lesson-02.txt` and make a note of the time the file was created (you should see a date and a time, possibly military time). Now run `touch` again on that filename, and then run `ls -lT`. Did anything about the file change?

    Your computer *may* have a command called `mkfile`, but `touch` is better ~~most~~ almost all of the time.

5. Now let's create a file that will be hidden from the Finder and `ls` by default. All you have to do is put a period in front of a filename. Run `touch` for a new file named `.hidden_notes` inside the `notes` directory. Use `ls` to list the contents of the directory where you created that file. What do you see? Now use either the `-a` or `-A` option with `ls`. Do you see the file you created now?

6. Let's put a secret message into our hidden file. Assuming you have a `notes` directory, simply type `echo 'I am so cool and talented.' > notes/.hidden_notes` and press Return. Now run `cat notes/.hidden_notes`. Do you see your message? Now type and run `echo 'No secrets here!' > notes/.hidden_notes`, then `cat` the file again. What do you see now? Finally, `echo I have a new trick! >> notes/.hidden_notes` (note the double `>`). Cat the file again. What do you see; what effect did `>>` have that was different than regular `>`?

7. Create a new file named `foo.txt` in your current working directory. We're going to move that file using the `mv` command, so search `man mv`. What does the man page say `mv` can do? Let's first try moving a `foo.txt` into your `notes` directory: type `mv -i foo.txt notes/` and press Return. Did it work? What happened? What does the `-i` option mean. Create another file named `foo.txt` in your current working directory, then rerun `mv -i foo.txt notes/`. What happened? You should see a message, or *prompt*, asking for a *y*es or *n*o response. Type `n` and press Return.

    We're using `-i` so we get a prompt before overwriting anything.

8. Now we'll rename the `notes/foo.txt` file to `bar.txt` using `mv`. Run `mv -i notes/foot.txt bar.txt`. Where is `bar.txt` now? Why do you think that happened? Now run `mv -i bar.txt notes/foobar.txt`. What happened that time? What do you think is happening when we type different file paths?

9. We can also move and rename directories. Make a new directory in your current working directory. Now `mv -i` it so that it is inside the `notes` directory using a different name.

10. Finally, let's copy our `.hidden_notes` to a new file named `public_notes.txt` in the `notes` directory. Look up `man cp` and read about the copy command. It has the same `-i` option which will keep us from accidentally overwriting a file (assuming we don't want to). The syntax for `cp` is similar to `mv`, so `cp` uses *source* and *dest* arguments as well. Write down the command you think you should run in the form of `cp -i SOURCE DST`, then run the command to copy `.hidden_notes` to `public_notes.txt`. Now `cat` that file. What do you see? `ls -A` the `notes` directory. You should see both files.
