Lesson 02 Outline

- Making directories, making files
    - Activity: mkdir and touch and mv

# Working with directories and files

So far we've created files using output redirection (`>`). Now it's time to create new directories and empty files.

## Activity: Working with directories and files

Have students do the [Working with directories and files](../activities/files-directories-crud.md) activity. They will learn `mkdir`, `touch`, and `mv`, as well as learn about hidden files, and output redirection that appends to a file rather than overwrites it.

1. `ls | grep learning-command-line`. Remember `ls` and `grep`? Here we're using them to check for the existence of a file or directory with a particular name before attempting to create one.

2. `mkdir` makes directories.`mkdir` won't overwrite an existing directory, so the actions in #1 weren't necessary (except to review some concepts from before!).

3. You can use `mkdir` to create more than one directory at a time. Also check out the `-p` option to create nested directories using the provided path.

4. `touch` is for creating files and changing file modification dates.

5. Hidden files and directories start with a period! This is a cross-platform syntax for hidden files; OS X also has other methods for hiding files from the Finder...

6. You can put content into a file using `echo` and output redirection. Single *greater than* (`>`) will overwrite old contents, but double *greater than* (`>>`) will append to the existing contents. Again, use output redirection with caution.

7. Using the `mv` command, so search `man mv`. `mv` is for moving *and* renaming files and folders. We're using `-i` so we get a prompt before overwriting anything. Yes, you could mv one file onto another and lose data!

8. When using `mv`, remember that the destination is specified by a filesystem path. That means you can move and rename a file all in one step.

9. We can also move and rename directories. Make a new directory in your current working directory. Now `mv -i` it so that it is inside the `notes` directory using a different name.

10. The command `cp` operates similarly to `mv`. It has many of the same options, and the same caveat about possibly overwriting existing files. There is a `-R` option for *recursively* copying directories and their contents. Yes, `cp` won't copy directories by default.

