# Input/Output Streams

We're going to run some commands and redirect input and output! This is an exciting new way to understand data, and there are some symbols you'll need to know:

| Symbol | Name | Purpose |
| - | - | :- |
| `>` | Output redirect | We can take the output of a command and send it somewhere other than the screen. It looks pointing from one command to another command or a file. |
| `<` | Input redirect | In practice, it looks like saying we are sending some input from the right to the left. |
| `\|` | Pipe | Passing a stream from one command to another. You can pass information from one command to another in a chain. |

**Warning:** Redirecting output to a file can be *dangerous*! If you specify a path to an existing file name when redirecting output, the existing file will overwritten!

1. Redirecting the output of `ls` to a file. You should open a Finder window to the location your command line is working from so you can see files being created. Run `ls /Applications/ > file_listing.txt`. You should see a new file named `file_listing.txt` in your current working directory. What do you think is in this file? Write down your guesses, then open the file (you can use the Finder for now). What is in this file? Is it what you expected?

2. Redirecting input. Run `cat < file_listing.txt` (assuming you have the file created in 1). What do you see in the Terminal? Look up the `cat` command and write down what it does.

    Redirecting a file to `cat` is a somewhat artificial example since it, and many of the commands we'll use,accepts a files as an argument. A more powerful (but potentially dangerous) input redirection might be streaming information from the internet and sending it to a command.

3. Piping streams to programs. Run `ls /Applications/ | grep A` and not what happened. Look up (search `man grep`) and read the description. What does `grep` do? Given the results from `ls /Applications` what do you think is happening when you `grep` for *A*? Write down your guess. Now try a slightly different version, changing the uppercase *A* to a lowercase *a*. What changed; why do you think you got the results you did?

4. A longer pipe. Now run `ls /Applications/ | grep A | sort -r`. Write down what you think `sort` does, and what the `-r` option might do. Now search `man sort` and confirm or contradict your guess.

5. Piping and redirection together. Building on what we've done so far, let's store the result of the expression `ls /Applications/ | grep A | sort -r` into a file. What would you add to this expression to save it in a file named `A_applications.txt`? Try writing out what this expression does in your own words, as a series of commands if you can.

## Notes

You don't need to use the suffix `.txt` for the file to store text. The type of content in the file is determined by what goes in it; the suffix is mainly a hint for humans and computer programs as to what kind of content to expect in the file. You could have used `file_listing` instead of `file_listing.txt` in #1 if you wanted to.
