# About files and the filesystem

## The filesystem

The filesystem is a way of interacting with information stored on your computer. Essentially, it provides a representation of the information stored on one or more hard drives attached to your computer. You may even be tempted to think of the filesystem as "what's on the hard drive" because the filesystem controls how we interact with data on our hard drives. For now, be aware that the filesystem also provides a representation of all hard drives (or flash drives or DVDs) attached to your computer.

On Mac OS X, the filesystem is represented through the Finder. When you create a new Finder window, you typically are presented with your "Home" directory (or folder, in [GUI](abbr:Graphical User Interface) parlance). You can double-click on the "folder" icons to navigate into a subdirectory, or use a number of other methods to navigate the filesystem using the Finder. Navigating the filesystem on the command line requires a somewhat different understanding of the filesystem.

On the command line, we issue commands that require *path* arguments. A path should look familiar, since the notion of website URLs is based in part on the concept paths.

### Follow the path

A path is a way of referencing the unique location of a file or directory in the file system. In UNIX-based operating systems like Mac OS X and Linux, components (files or directories) of a path are joined with a forward slash `/` in between each component.

A path looks a lot like a URL with some of the first parts removed. A URL like <https://en.wikipedia.org/wiki/File_system> would become `/wiki/File_system` if we removed the protocol (`https`), some hierachy (`://`), and the domain (`en.wikipedia.org`). In the early days of the web, URLs often represented actual filesystem paths on remote computers.

On the command line, we can reference a file or directory using *absolute* or *relative* paths. For example, the absolute path to the *Documents* directory for a user named "dcloud" will look like `/Users/dcloud/Documents`. This path tells us that starting from the root of the filesystem (indicated by the leftmost forward slash), we'd look in the `Users` directory, then the `dcloud` directory, then the `Documents` directory. Or perhaps more understandably, we are referencing the `Documents` directory that is in the `dcloud` directory which is inside the `Users` directory which sits at the root level of the filesystem. If our working directory (remember `pwd`) was already `/Users/dcloud`, then `Documents` would be the equivalent *relative* path.

#### Path shortcuts

There are some useful symbols that help use navigate to certain parts of the filesystem quickly. These will come in handy

| Shortcut symbol | Meaning | Usage Example |
| --------------- | ------- | ------------- |
| `.` | The current directory | `ls ./images` would output the names of files in an images directory that is inside the present working directory |
| `..` | The "parent" directory (one directory ) | `cd ..` would change the working directory to the one above the current working directory. |
| `~` | The tilde means your home directory. Modern operating systems are set up for multiple user accounts, so each has their own home directory. | `cd ~` will change your current working directory to your home directory (if that isn't the current working directory already). |

## Files

### Text versus binary

[[TODO]]

### A note on spaces in file and folder names

Users of modern [GUI](abbr:Graphical User Interface) operating systems are accustomed to using _spaces_ in file and folder names (i.e. using `My Great Project` as a folder name). However, programs on the command line treat spaces as a separator for parameters to a command (since many commands act on multiple parameters). So when using files or folders with spaces in the name as parameters to a command, you should place quotation marks around them. So if you want to output a text file to the terminal, and that file has spaces in the name, you would type something like:

```
cat "/path/to/My Great Project"
```