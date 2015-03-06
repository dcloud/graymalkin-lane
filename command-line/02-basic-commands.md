# Commands on the command line

Here are some commands that should get you started using the command line. In the terminal, you type the name of the command you want then any options or arguments after that using spaces to separate each phrase, then press <kbd>Enter</kbd> to run the command. We'll discuss arguments and options after we see a few basic commands.

**Note:** We will use the word *print* to mean "display on screen" (not send to the printer).

## Some commands

| Command name | What it does | Example |
| ------------ | ------------ | ------- |
| ``man`` | Shows a **man**ual page for a particular command, if available. | ``man ls`` will show you how to use the `ls` command, with options. Press the `q` key to *quit* or `h` for help. |
| ``ls`` | **L**i**s**t files in the current directory (folder) or a directory you specify with a [path](04-files.md#follow-the-path). | ``ls /``. ``ls -la`` is very useful. See [arguments and options](#arguments-and-options) |
| ``pwd`` | **P**rint the **w**orking **d**irectory. Your command line is always running from a directory! |
| ``cd`` | **C**hange **d**irectory. Navigate the file system on your computer. You can provide a [relative or absolute path](04-files.md#follow-the-path), or use one of the [built-in shortcuts](04-files.md#path-shortcuts)). Running `cd ~` will change your working directory to your "home" directory. | `cd /` will change to the root directory of the filesystem. |
| ``cat`` | Con**cat**enate (link together) and print one or more files (to the terminal). Good for short documents. | ``cat 02-basic-commands.md`` |
| ``less`` | View contents of a file in your terminal, paging the contents. Good for viewing long documents as it shows **less** than ``cat``. | ``less 02-basic-commands.md`` |
| ``grep`` | Searches for a pattern in one or more files you specify. You can perform simple searches quickly using `fgrep`, but you can create more powerful search expressions using `grep`. | ``grep --color=auto 'terminal' command-line/02-basic-commands.md`` |
| ``cut`` | **Cuts** out portions of a each line of a file and displays them in the terminal. Useful for [CSV](abbr:Comma-separated Values) files. | ``cut -d , -f 1,4,7 datafile.csv`` will output values for the first, fourth and seventh columns for each row in `datafile.csv`, using a comma as the separating character |
| ``clear`` | **Clear**s the terminal screen and print a command line prompt at the top of the window. | ``clear`` |

*Note:* Commands for working with files and directories are in the chapter on [files and filesystems](04-files.md).

## Arguments and options

Arguments are information a command uses (or needs) to act. For example, the `man` command doesn't know what manual page you want unless you specify one as an argument, e.g. `man pwd`. Some commands take multiple arguments separated by spaces. `ls` can take a path as an argument, as in the example `ls /`, which tells `ls` to list files in the root directory. It can also take multiple arguments, such as `ls Desktop/ Downloads/` which would list files in a `Desktop` directory and a `Downloads` directory.

Many commands also accept one or more named options (the "name" is often a single letter) that affect the behavior of the command. Option names are typically preceded by one or two minus signs. Multiple options can often be combined after a single minus sign. The `l` and the `a` after the hyphen in `ls -la` are separate options. For example, `ls -l` runs the `ls` command with a single option, **l**, that tells `ls` to display more information in what it calls a "long format". You can add the `-a` option to show hidden files: ``ls -al /``. I use ``ls -alFhG`` often (though I've set up an *alias*, which we'll discuss in the chapter on [customizing the command line](05-customizing.md#add-command-aliases).

## What do these commands look like?

### `man`

Using `man` to learn about the `ls` command:

![Screenshot: Using `man` to learn about the `ls` command](images/man-ls.png)

### `ls`

Listing files in the present working directory:

![Screenshot: Listing files in the present working directory](images/ls.png)

### `pwd`

Printing the present working directory:

![Screenshot: Printing the present working directory](images/pwd.png)

### `cd`

Changing the working directory to a different directory:

![Screenshot: Changing the working directory to a different directory](images/cd.png)

### `cat`

Con**cat**enating and printing a file to the terminal:

![Screenshot: "cat'ing" a file to the terminal](images/cat.png)

### `less`

Paging and printing a file to the terminal, using `less`:

![Screenshot: Paging and printing a file to the terminal, using `less`](images/less.png)

You'll need to how to navigate in `less`. To move forward in the document you can press `f` or the *spacebar*. To go back, press `b`. To get out of this "program", press `q`. You can press `h` for *help* or read more about these shortcuts in the *man* page (run `man less` in the terminal).

### `grep`

Searching for a pattern (text, in this case) in a file. Note the `--color=auto` option to show the phrase matches in color:

![Screenshot: Searching for a pattern (text, in this case) in a file](images/grep.png)


