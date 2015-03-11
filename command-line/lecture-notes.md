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

```
pwd
```

**Takeaway:** `pwd` will show you an *absolute* path to your present working directory.

##

## Let's make a new file


