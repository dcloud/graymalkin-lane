# OS X and the command line

There are some unique aspects about working in the command line on Mac OS X. There are some commands unique to OS X, as well some some customizations that you might want to make after you become versed in the command line.

# OS X commands

| Command name | What it does | Example |
| ------------ | ------------ | ------- |
| ``open`` | Opens files and directories in the appropriate GUI application, if available | ``open ~/Documents/`` would open the `Documents` directory in the Finder |
| ``xcode-select`` | Manages developer tools such as Xcode | You can issue the command `xcode-select --install` to install the command line developer tools. Needed if you plan on using **Homebrew** (see below). |

## Homebrew

##### http://brew.sh

Homebrew bills itself as "the missing package manager for OS X". Essentially, this is a project to help OS X users install various software packages that either don't come with OS X or which could be updated. A software package can provide one or more applications, usually along with documentation (available to `man`). For example, developers who use the Python programming language often install newer versions of Python using Homebrew. Homebrew provides an easy way to install a number of simple tools. There is a world of free and open source software applications available, and Homebrew provides a convenient method for installing and keeping them up-to-date.

The simplest way to install Homebrew is to follow the directions on the [Homebrew homepage](http://brew.sh). Some of the software packages as source code that needs to be compiled (made into an application), so installing the command line developer tools via `xcode-select --install` is a good idea as well.


### .bashrc customizations for homebrew

Since Homebrew installs packages into locations that the command line does not search for commands by default, you need to tell it where to look. You do this by customizing the `PATH`, which is essentially a list of places your computer should look for commands. The code below shows some bash-style syntax that checks for the existence of the `/usr/local/bin` and `/usr/local/sbin` paths, and updates the `PATH` environment variable for each one if the specific directory path exists. The `export PATH` line is the part that actually commits the update to the command line.


```
# Update homebrew paths
if [[ -d /usr/local/bin ]]; then
  PATH=/usr/local/bin:$PATH
fi
if [[ -d /usr/local/sbin ]]; then
  PATH=/usr/local/sbin:$PATH
fi

export PATH
```

Similarly, you can show the `man` command where to look for manual pages installed by Homebrew packages. The syntax here is similar, to above, but the environment variable being manipulated is `MANPAGE`.

```
if [[ -d /usr/local/man ]]; then
    MANPATH=/usr/local/man:$MANPATH
fi

export MANPATH
```