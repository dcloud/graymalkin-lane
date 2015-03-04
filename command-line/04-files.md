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

A file is a storage container for binary or textual data. Binary is the format used for images, videos, music and similar. Text files can be store "plain" text (plain in that they contain no formatting such as bold or italic). That plain text can conform to a syntax, an arrangement of words, phrases and symbols, that can represent prose, code, markup or structured data. HTML `.html` and CSS `.css` files are text files. So are Python `.py` files and JavaScript `.js` files. CSV `.csv` and XML `.xml` files are as well. Many binary files even intersperse text content along with binary. That's how images and audio files contain metadata (author, title, caption, album).

There are some files that seem like they would be text files, but are actually binary files that contain text as well. Word `.doc` documents and PDF files are excellent examples of these. If you were to try to `cat` the contents of a PDF or Word `.doc`, you'd likely see a lot of gibberish because `cat` knows how to display plain text documents, and will try to treat binary data as text as well. If you run `cat` on a large file, remember that <kbd>Ctrl+c</kbd> will abort the currently running program!

### Hidden files

UNIX-based operating systems have a convention for "hiding" files from view: if you start a filename with a period, that file will not be visible by default. On Mac OS X, the operating system creates files named `.DS_Store` in directories to store information about how that folder should be displayed in the Finder. Both OS X and Linux can use hidden files in your home directory to configure various aspects of the command line. We'll look at those files when we [customize the command line](05-customizing.md).

### A note on spaces in file and folder names

Users of modern [GUI](abbr:Graphical User Interface) operating systems are accustomed to using _spaces_ in file and folder names (i.e. using `My Great Project.txt` as a file name). However, programs on the command line treat spaces as a separator for parameters to a command (since many commands act on multiple parameters). So when using files or folders with spaces in the name as parameters to a command, you should place quotation marks around them. So if you want to output a text file to the terminal, and that file has spaces in the name, you would type something like:

```
cat "/path/to/My Great Project.txt"
```

## More commands: Making, renaming and moving files and directories

### Warnings for `cp`, `mv` and `rm`

The commands `cp`, `mv` and `rm` described can overwrite or remove files/directories *without warning you first*! Files and directories that get removed or overwritten in this way will disappear. There is no "Trash" to recover them. You can make these commands ask before overwriting or removing anything by supplying the `-i` option. So use `mv -i`, `rm -i` and `cp -i` if you want to be careful.

| Command name | What it does | Example |
| ------------ | ------------ | ------- |
| ``mkdir`` | Makes a new directory (folder) with the name or path you provide | ``mkdir stuff`` will create a directory named "stuff" in your current working directory. If you [provide a path](#follow-the-path), you can create directories practically anywhere on your computer.|
| ``touch`` | Can "change file access and modification times", but typically used to create (empty) files. | ``touch ~/Hello.txt`` will create the file named ``Hello.txt`` in your home directory. |
| ``mv`` | Moves or renames a file or directory | ``mv ~/Hello.txt ~/Documents/`` would move a file named ``Hello.txt`` from your home directory to the `Documents` directory that is inside your home directory.  ``mv ~/Hello.txt ~/Documents/HelloThere.txt`` would move the file *and* rename it at the same time. This also works on directories. Be careful of [spaces in file or directory names](#a-note-on-spaces-in-file-and-folder-names). **See warnings above**. |
| ``cp`` | Copies the contents of a file from one path to another. The first argument is the source to copy from and the second argument is the path to copy to. Can copy directories of files if the `-R` option is specified. | `cp ~/Hello.txt AnotherHello.txt` will copy a file named `Hello.txt` from your home directory to a file named `AnotherHello.txt` in your current working directory. **See warnings above**. |
| ``rm`` | Removes a file from the filesystem. Can remove remove directories if the `-d` option is provided. | ``rm -i ~/Hello.txt`` will remove the file `Hello.txt` from the home directory if it exists (and if you approve it because you added the `-i` option).  **See warnings above**. |
| ``rmdir`` | Removes an empty directory from the filesystem. Sometimes directories have hidden files (this is very common on OS X) that prevent this command from working. | ``rmdir ~/Old_Stuff`` will remove the directory `Old_Stuff` from the home directory, provided it is empty. |
