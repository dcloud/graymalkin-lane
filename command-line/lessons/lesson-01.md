Lesson 1 Outline

- What is the command line?
    - What a physical terminal looked like
    - How this relates to modern terminal
- The filesystem and some introductory commands
    - ls and cd **Activity** and review
    - Discussion: filesystem paths
        -Spaces in directories and file names
- Getting help!
    - Duck/Google search for man pages
    - Reading about cd and ls & arguments and options
- Streams: Input/Output
    - streams are data available over time.
    - Activity: I/O streams
- Questions?

# What is the command line?

## Defining the command line

Briefly explain that "The command line is a text-based interface for working with a computer."

### Ask students to consider a historical view of computers

There was a time when computers were expensive, giant machines that took up lots of space, potentially filling entire rooms. Because these machines were so expensive, many people shared the use of a single computer.

Users accessed a shared computer through a piece of hardware called a computer *terminal*. The earliest terminals were "teletypewriters" (keyboard with paper feed for printing), but were replaced by video terminals in the late 1960s. These terminals were powerful enough to transmit text-based commands and display text-based results.

Show [image of terminal](https://en.wikipedia.org/wiki/Computer_terminal#/media/File:DEC_VT100_terminal.jpg)

### How does this relate to the modern *terminal*?

Similar
- Operating system built for multiple users on a single machine
- Text for input and output
- Keyboard driven
- Commands that date back to the era of physical computer terminals

Different
- The terminal is **virtual**: it runs inside of a GUI
- You have a *personal* computer
- There are other ways of interacting with the computer

# The filesystem and some introductory commands

## Activity: Exploring the filesystem with `ls`, `cd` and paths

Have students open a terminal and a Finder window side by side; both should be in their home directory.

Students can pair up (or work individually, if they prefer) and complete the ["Exploring the filesystem" activity](../activities/exploring-filesystem-activity.md). They should be able to complete this in 15 minutes, hopefully less.

### Review

1. Explain that `ls` lists the contents of a directory.

2. You can provide an argument to `ls` that specifies a location on your filesystem. Dragging a folder from the Finder should copy a "path" to the window, but you can also type one in directly.

3. Discuss file paths and `/` as the "root" path. Paths are how we refer to files and folders on the filesystem. Your **GUI** hides certain files and folders from you that the Terminal does not, such as `/bin` and `/Volumes`. Also, the GUI shows some things, like external hard drives, differently than the Terminal.

4. `/` is the root and `/Applications` is where your **GUI** applications live. A forward slash at the beginning of a path specifies a location from the "root", but we'll see that there are other ways to specify paths to things on the filesystem

5. You can `ls ~` as well. You can also specify "relative paths" because a running terminal operates from a location on the filesystem, your home directory by default.

6. `..` means "the directory above"

7. The `cd` command allows to you **c**hange **d**irectories, and you can provide a path as an *argument* to `cd` to specify which directory you want to change to. Note that the "prompt" displays the current directory and that `ls` will now show you the contents of that directory.

8. `pwd` will **p**rint (display) the **w**orking **d**irectory. `cd` without a path argument will move you to your *Home* directory.

9. Typing an invalid path will give you an error.

10. `~` is a shortcut that means "your home directory". `..` means the directory above, as we saw in #6. There are other symbols that have special meanings in path names.

## Discussion: filesystem paths

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

*Note:* Filesystem paths can describe the full or partial hierarchy of folders that contain files or other folders.

# Discussion: Getting help!

There is a command called `man`, which is short for **man**ual, that allows you to look up documentation on about various commands. However, you can also search online for the same documentation, so that might be easier for now. You can search for `man ls` on Google or [DuckDuckGo](https://duckduckgo.com) and many results will come up. DuckDuckGo provides "instant answers", so you don't necessarily need to go to a web page!

## Reading about `cd` and `ls` and `pwd`

A manual page has a few sections, usually starting with **Name**, which provides a name and a brief description of the command.

### `man cd`

Let's look up `cd` first: [Search for "man cd"](https://duckduckgo.com?q=man+cd).

```
cd [-L|-P] [dir]
```

If you're looking at the DuckDuckGo Instant Answer, you will see two sets of square brackets. This is a special notation you'll see in man pages; basically square brackets indicate placeholders for extra stuff a command. Let's ignore the first set of brackets for `cd` (we'll use `ls` to explore *hyphen options*) and look at the second that contains *dir*. You ran `cd /Applications` before, and */Applications* is a directory path! So `[dir]` in the man page is telling you that you can optionally provide `cd` with a directory path.

### `man ls`

Let's look at a more complex command, `ls`: [Search for "man ls"](https://duckduckgo.com?q=man+ls), and open a web page with a full description.

| Section | Value |
| - | - |
| Name | ```ls - list directory contents``` |
| Synopsis | ```ls [OPTION]... [FILE]...``` |
| Description | A long description of the command, it's options and arguments. |
| Examples | There *may* be an examples section. |

The synopsis provides a compact representation of how a command can be used, using that special notation for indicating *options* and *arguments* that you can provide to customize the commands behavior.

Looking first at the second set of brackets, the `ls` command can accept one or more `[FILE]` arguments (I don't know why some man pages use the word "file" when it is "paths"). So you can have `ls` list the contents of *multiple* directories at once. There are also many *options* you can provide to `ls`, which you indicate with single or double hyphens.

#### Discussion: `ls` options

What are some possibly useful options for `ls`?

*Have students read man page and suggest some things.*

| Option | Example | Effect |
| :- | :- | :- |
| -a | `ls -a` | Shows hidden files |
| -l | `ls -l` | Display more information in a *long listing* format |
| -F | `ls -F` | Add symbols to differentiate files from directories from other things |
| -alF | `ls -alF` | Combine multiple options! |

`-h`?

**Note:** The implementation of ls can be a bit different between Mac and Linux, so some options you see online may not work as described.

# Streams, input, output

The command line conceptualizes information as streams, *data available over time*. Time in this case can be seconds or less.

Information coming out of a program is a stream of data that can be displayed to a user on a monitor, or it could be written out to a file. Some programs require a stream of input from a file or from the keyboard.

This is different from how we think of information in graphical systems, and will become clearer the more we work with them. When we download large files from the Internet, we are aware of that information coming to our computer over time.

There are three standard streams called `stdin`, `stdout` and `stderr`. `stdin` is for information going into the program, so the keyboard is usually where this stream comes from. `stdout` is where a program outputs its data by default: the screen. `stderr` is where errors from a program get sent, this is usually location as `stdout`, the screen. We can change where our programs get input and sent output (or errors)!

## Activity: I/O streams

Have students open a terminal and a Finder window side by side; both should be in their home directory.

Students can pair up (or work individually, if they prefer) and complete the ["Input/Output Streams" activity](../activities/input-output-activity.md). They should be able to complete this in 15 minutes, hopefully less.

# Questions?
