# The Command-line interface

One of the core competencies of programmers is familiarity with something called [the command line](https://en.wikipedia.org/wiki/Command-line_interface). The command line is a text-based interface for working with the computer. The "command" part refers to a user typing in what kind of task she wants the computer to perform. Using the command line provides a keyboard-drive way to perform tasks we have become accustomed to handling using modern graphical interfaces. On the command line, you can create and delete files, list the contents of a folder (a.k.a directory), fetch information from the internet, and open programs.

FIXME: Too jargony? Think about how much an audience needs to know.

## Word soup

We often use the phrases *command line*, *shell*, [*Bash*](abbr:Bourne Again Shell) and *terminal* interchangably. Essentially, a *terminal* is an interface to a *shell* which provides a *command line* and *Bash* is popular *shell* implementation (in the sense that Firefox is a browser implementation). So someone may ask you to "open a shell" or "open a terminal" or "go to the command line", and they typically mean the same thing.

## What does the command line look like?

TODO: Provide image and description of image. What is that $ sign, etc?

## Some commands

| Command name | What it does |
| ------------ | ------------ |
| ``ls`` | **L**i**s**t files in the current directory. Your shell is always running from a directory! |
| ``pwd`` | Tells you what the **p**resent **w**orking *d*irectory is. Your shell is always running from a directory! |
| ``cd`` | *C*hange *d*irectory. Navigate the file system on your computer. |
| ``type`` | Helps you learn what different commands are |

## Customizing the command line to work for you

### Your terminal (application)

On Mac OS X, the built-in terminal application is named *Terminal.* You can select and customize themes that control colors, font, window size, etc. Many developers opt for a theme that provides light text on a dark background, such as the "Pro" theme in *Terminal*.

*Introduce idea of shell customization by hidden files in your $HOME.

### Bash

#### `.bashrc`, `.bash_profile`, etc.

Explain .profile, etc. in an accessible way.