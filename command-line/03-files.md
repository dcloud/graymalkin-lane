# About files and the filesystem

## Text versus binary


## Follow the path

### A note on spaces in file and folder names

Users of modern [GUI](abbr:Graphical User Interface) operating systems are accustomed to using _spaces_ in file and folder names (i.e. using `My Great Project` as a folder name). However, programs on the command line treat spaces as a separator for parameters to a command (since many commands act on multiple parameters). So when using files or folders with spaces in the name as parameters to a command, you should place quotation marks around them. So if you want to output a text file to the terminal, and that file has spaces in the name, you would type something like:

```
cat "/path/to/My Great Project"
```