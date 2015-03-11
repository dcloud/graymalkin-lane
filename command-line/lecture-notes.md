# Lecture Notes

## What is the command line?

The command line is a text-based interface for working with a computer.

Users of the command line often use the phrases *command line* (*cli* for short), *shell*, [*Bash*](abbr:Bourne Again Shell) and *terminal* interchangably.

**Takeaway**: You can call it the *command line*, *shell* or *terminal*. Don't sweat the details.

## What does the command line look like? What am I seeing?

There is a *prompt*, as in "hey what do you want to do?"

```bash
dcmbp:~ dcloud$
```

| &nbsp; | What it means |
| ----: | :--- |
| `dcmbp`|  hostname of the computer (named for networking purposes) |
| `:` | a separator |
| `~` | the current working directory (`~` is a shortcut for your home directory) |
| `dcloud`|  your username |
| `$ ` | symbol indicating the end of the prompt |

**Takeaway**: The prompt not only waits for your input, but can provide you information

## `ls` is a command for **l**i**s**ting

You can use `ls` to list files in your current directory or a directory anywhere on your filesystem, if you specify a path.

Try it (type `ls` and hit return):

```bash
ls
```

What do you see?

Now try `ls /`, then `ls ~/Downloads`, `ls ~/Documents` and `ls ~/Dropbox` (if you use Dropbox)

**Takeaway**: `ls` lists files and directories. You can provide a *path* (as an *argument*) to list things in any directory on your filesystem.

## Well, what are *paths*? What is the *filesystem*?

### Filesystem

The filesystem represents information on *all* hard drives, media, and network drives attached to your computer.

Files are organized into directories (aka folders) and directories can contain other directories.

The topmost directory in the filesystem is known as the *root* directory. In this tree metaphor, directories under the root directory are branches, and those directories can contain more branches.

**Takeaway:** The filesystem represents files and directories on your computer's hard drive and other media. We call the top level of the filesystem the *root* directory.

### Paths

A *path* provides "directions" to where something is on the filesystem. They look a bit like URLs for websites; URLs are basically paths to where things are on websites.

On your filesystem, slashes */* separate words that represent files or directories.

If there is a slash at the beginning of a path, then it is an **absolute** path, meaning that it provides directions to something from the top level, or **root**, of the filesystem.

If the path *does not* start with a slash, then it is a **relative** path, meaning directions from your current working directory.

**Takeaway:** *paths* provide directions to a file or directory's location on your filesystem.

### Spaces in directories and file names

You may be accustomed to naming files/directories with spaces in them, like `My Great Project.txt`. Since spaces are used to separate arguments to commands on the command line, spaces will confuse commands on the command line.

If a file or directory with spaces in it's name, you place quotation marks around the path to it when using it on the command line:

```
cat "/path/to/My Great Project.txt"
```

**Takeaway:** Spaces in file and directory names can cause confuse commands, so we try not to use spaces in file and directory names. Try underscores or hyphens instead `My-Great-Project.txt`

## `cd` is a command for **c**hanging **d**irectories

You supply a *path* (an argument) to `cd` to tell it what directory you want to work out of.

Try it:

```
cd ~/Dropbox
```

or if you don't have Dropbox

```
cd ~/Documents
```

**Takeaway:** On the command line, you are always "working" from a directory, and you can `cd` to change directories.

## What is that squiggle? Also, what other *shortcuts* exist?

That `~` squiggle is called a *tilde*. It is a *shortcut*, or *alias*, for the path to your "home" directory.

So `~/Dropbox` is a shorter way of saying `/Users/dcloud/Dropbox`.

### A single period is a shortcut

You can use a period, `.`, to indicate a path relative to your current working directory.

If you've already **cd**'d to `~/Dropbox` and there is a `Public` directory, then following all indicate the same path:

- `./Public/`
- `Public/`
- `Public`
- `/Users/dcloud/Dropbox/Public/`

Try it! Use `ls` to list the files at each path. You'll need to change the last (*absolute*) path by replacing `dcloud` with your username.

### Two periods form another shortcut

You can use two periods, `..`, to indicate a path starting one level *higher than* your current working directory.

Try it! Still in `~/Dropbox`, use ls to list the contents of `..`: `ls ..`. You should see files and directories from your home directory, which is *higher than* your Dropbox directory in your filesystem.

**Takeaway:**: The tilde `~`, one period, and two periods are shortcuts for navigating the filesystem.

## `pwd` will **p**rint the **w**orking **d**irectory

Try it!

```bash
pwd
```

**Takeaway:** `pwd` will show you an *absolute* path to your present working directory.

## Let's **m**a**k**e a new **dir**ectory

```bash
mkdir ~/command-line-power
```

Create intermediate directories using `-p` option:

```bash
mkdir -p ~/command-line-power/rock/and/roll
```

## Let's make a new file

```bash
touch ~/command-line-power/hello.txt
```
**Takeaway:** Use `touch` to create an empty file. `mkfile` exists, but is weird.

## Let's copy a file (or directory)

**Warning:** `cp` can overwrite existing files!

```bash
cp -i ~/command-line-power/hello.txt ~/command-line-power/hello-hello.txt
```

**Takeaway:** Remember `cp -i` for safe copying.

## Let's move and/or rename a file (or directory)

**Warning:** `mv` can overwrite existing files!

```bash
mv -i ~/command-line-power/hello.txt ~/command-line-power/goodbye.txt
```

**Takeaway:** Remember `mv -i` for safe renaming/moving files. `mv` allows to you to move or rename or both.

## Let's remove a file (or directory and it's contents)

**Warning:** `rm` won't confirm deletion. It is not like the "Trash" on OS X

```bash
rm -i ~/command-line-power/goodbye.txt
```

**Takeaway:** Remember `rm -i` for safe removing files. `rm -ri` can remove directories that contain files and other directories (`r` is for **r**ecursive).

## Using the keyboard

### General keyboard shortcuts

| Shortcut | What it does |
| -------- | ------------ |
| <kbd>Ctrl+c</kbd> | Sends a signal telling the operating system to interrupt (stop and close) the current command (. Say you're "grepping" (running the `grep` command to search) a large file and you want it to stop. Press <kbd>Ctrl+c</kbd> to stop `grep` from running. |
| <kbd>Ctrl+d</kbd> | Similar to <kbd>Ctrl+c</kbd> in that its typical use is to tell a running command to quit, such as running an interactive program such as the `python` interpreter. Also closes the current shell if no program is running. |
| <kbd>Tab</kbd> | Autocompletion in the terminal. Start typing and then hit <kbd>Tab</kbd> to see matching commands and files (searching from the beginning of the command). You can discover a lot of commands this way! |
| <kbd>Ctrl+l</kbd> | Clears the screen (you can also use the `clear` command) |

**Takeaway:** <kbd>Ctrl+c</kbd> and <kbd>Ctrl+d</kbd> will come in handy when trying to stop things from running.

### Keyboard shortcuts for moving the (text) cursor

| Shortcut | What it does |
| -------- | ------------ |
| <kbd>Ctrl+a</kbd> | Move the cursor to the beginning of the line. Useful when you've typed a command with long arguments and you realize there's a typo. You can also use the <kbd>Home</kbd> key. |
| <kbd>Ctrl+e</kbd> | Move the cursor to the end of the line. You can also use the <kbd>End</kbd> key. |
| <kbd>Ctrl+f</kbd> | Move the cursor **f**orward one character. You can also use the <kbd>&rarr;</kbd> (right arrow) key. |
| <kbd>Ctrl+b</kbd> | Move the cursor **b**ackward one character. You can also use the <kbd>&larr;</kbd> (right arrow) key. |
| <kbd>Option/Alt+f</kbd> | Move the cursor **f**orward one *word* (or word segment), using spaces and punctuation as word boundaries. |
| <kbd>Option/Alt+b</kbd> | Move the cursor **b**ackward one *word* (or word segment), using spaces and punctuation as word boundaries. |

**Note:** On some terminal applications, such as OS X Terminal, you have to set a preference to enable use <kbd>Option/Alt+b</kbd> as the *Meta* key

**Takeaway:** You can use the keyboard to move around a long line so you can edit it.

### Keyboard shortcuts for navigating your command history

| Shortcut | What it does |
| -------- | ------------ |
| <kbd>Ctrl+r</kbd> | Initiate a search of your command history, from most recently used backwards. |
| <kbd>Ctrl+s</kbd> | Search forward in your command history to more recent commands. Useful after <kbd>Ctrl+r</kbd> a few too many times. |
| <kbd>Ctrl+c</kbd> | Cancel your search. |

**Takeaway:** You can review and rerun old commands.

## Pipelines connect commands together

```bash
grep powerful 05-input-output.md | less
```

**Takeaway:** When we run a command, the *output* can be passed to another command using `|`.

**Warning:** `>` will overwrite existing information in a file

## You can redirect output and input

### Redirect output to a file, overwriting previous contents

```bash
ls -alF ~/ > home_files.txt
```

### Redirect output to a file, appending to previous contents

```bash
ls -alF ~/ >> home_files.txt
```

**Takeaway:** The *output* of commands can be saved to a file using `>` (overwrite) or `>>` (append).

### You can redirect input from a file

```bash
grep powerful < 05-input-output.md
```

### You can redirect input and output at the same time

```bash
tidy -i < command-line/examples/ugly.html > command-line/examples/pretty.html
```

We're using a program called `tidy`, which can clean up and format HTML. We are using `command-line/examples/ugly.html` for the input and sending the output to `command-line/examples/pretty.html`.

**Takeaway:** Redirction of input and output can be powerful

## Internet stuff

### `curl` is for **c**ommand line **URL** transfers

```bash
curl http://httpbin.org/html -o httpbin_html.html
```

`curl` can output transfer information (i.e., download time) and the URL response content by default. The `-o` indicates the response content should be stored in a file. You can use ` --silent` to tell it not to output transfer information.

**Takeaway:** We can interact with information from the internet and use them in our commands!

#### Now we're playing with power: `curl` and `grep` and `less`

```bash
curl --silent http://sunlightfoundation.com/about/ | grep --color=always 'transparency' | less -R
```

### `ssh` is for **s**ecure **sh**ell client

> ssh (SSH client) is a program for logging into a remote machine and for executing commands on a remote machine.

**Note**: There was an `rsh`, but it wasn't **s**ecure.

```bash
ssh username@remoteserver.com
```

**Takeaway:** We can connect to remote machines and run command lines on them!

### `ping` is for checking that you can reach a hostname

```bash
ping -c 10 www.apple.com
```

The `-c 10` option tells `ping` to only send 10 message "packets", otherwise `ping` will continue until we <kbd>Ctrl+c</kbd> (abort/quit/cancel) it.

**Takeaway:** We can perform a rudimentary (not definiteve) check to see if a host is down or not.

### `traceroute` is for tracing the route data takes to get to a remote host


```bash
traceroute www.apple.com
```

**Takeaway:** We can see how our data is routed over the internet. Try it at home!

