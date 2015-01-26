# What is the "Command line"?

One of the basic skills programmers and computer power users have is familiarity with something called [the command line](https://en.wikipedia.org/wiki/Command-line_interface). The command line is a text-based interface for working with the computer. The "command" in that phrase refers to tasks that a user wants the computer to perform. You can think of them like applications, but they typically fulfill a few (or just one) small task rather than many tasks. On the command line, you can perform tasks such as creating and deleting files, list the contents of a directory (a.k.a folder), fetch information from the internet, and open applications. You can combine multiple commands into a sequence, making the command line a powerful flexible environment for getting things done.

The command line provides a keyboard-driven way to perform tasks, including ones we have become accustomed to handling using modern graphical interfaces (GUIs). If you've ever learned the keyboard shortcuts for your operating system or an application you use frequently, you may appreciate how you can get things done more quickly using keyboard shortcuts than with keyboard and mouse. If you memorize various commands and keyboard shortcuts for the command line, you may come to appreciate the usefulness of this text-based computer interface.

## Word soup

We often use the phrases *command line*, *shell*, [*Bash*](abbr:Bourne Again Shell) and *terminal* interchangably. Essentially, a *terminal* is an application that provides interface to a *shell* which provides a *command line* and *Bash* is popular *shell* implementation (in the sense that Firefox is a browser implementation). So someone may ask you to "open a shell" or "open a terminal" or "go to the command line", and they typically mean the same thing. A thesaurus of some of these transposable terms is available at AA-thesaurus.md.

## What does the command line look like?

If you open a terminal on a new machine, you may see a window that looks similar to this:

![Bash shell with light color theme](images/BashNewLogin.png)

It almost certainly won't have exactly the same works inside the window because by default the shell will show you two things about your computer: your computer's name and your username. In this example, *dcmbp* is the computer's _hostname_ and *dcloud* is the username. The hostname identifies a computer on a network.

Another item of note is the `~` (tilde) symbol, which actually means "your user's home directory". There are a few important symbols that have one or more meanings on the command line. Try to remember that `~` means "home directory". That will come in handy later.

So here we have a line that shows the computer's hostname, a colon as a separator, then the current working directory (you are always working in a directory when using the command line), followed by a space, then the username, and finally a dollar sign `$`. That `$` is the *prompt*, an indication that the shell is waiting for user input. The `$` is the default prompt for most shells, but the prompt can be customized to look diffferent, so this may not always be the case.

Speaking of customization, there are options for changing colors as well. Perhaps as a callback to the early days of command line computing, many programmers prefer a dark background with light text. So you may run across a command line that looks more like this:

![Bash shell with dark color theme](images/BashNewLogin-Dark.png)

In Mac OS X's Terminal application, the default light color theme is called "Basic" and one of the dark color theme's is called "Pro".