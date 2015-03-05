# Commands and redirection of input and output

There is another skill that makes commands more powerful, and that is called redirection. When calling commands, we often provide input beyond (usually in the form of arguments) and expect output. Many commands output information to the screen, but we can redirect the output to other destinations such as a file, or another command.

## Pipelines

**Note:** If you read `man bash`, you'll see that pipelines are discussed separately from redirection. Since the basic of use of pipelines *feels* like redirection of output, we're talking about it here.

We've talked about how `grep` is a powerful tool for searching for patterns inside files. By default, the matches grep finds are "printed" to the terminal all at once. When `grep` finds a large number of results, all of these are displayed right away, which is probably not that helpful. You can probably scroll in your terminal, but you can also make use of the `less` command to paginate the search results. You can *redirect* the output from `grep` to `less` using the `|` pipe character (<kbd>Shift+\</kbd> on most keyboards). So if I was searching for a pattern, the word 'access', in a file named 'dept_of_transportation_03012015.csv', and I wanted to "pipe" the results into `less`, I might write:

```bash
grep access dept_of_transportation_03012015.csv | less
```

I've piped the output from my `grep` search into `less` so I can look at and navigate the results as a sequence of pages (in `less` you can press `f` to go forward one page and `b` to go back).

You can use multiple pipes in a series. Say I wanted to search on the output of `ls` and I expected a lot of results again. I could run something like :

```bash
ls /Applications | grep Adobe | less
```

That will search for the phrase 'Adobe' in a list of files and directories in my *Applications* directory (maybe I have a lot of Adobe applications on my computer).

## Redirecting output

We can redirect output of commands to a file, creating the file if it does not exist. The symbol for redirecting output is `>`, so if you want to save the output of a command to a file you type the command followed by a `>` then the name of the file to create or overwrite (spaces around the `>` aren't required, but probably good for readability). I can save the results from `ls` to a file:

```bash
ls -alF ~/ > home_files.txt
```

Or I could save the results of my `grep` search to a file rather than piping it to `less`:

```bash
grep access dept_of_transportation_03012015.csv > dot_search_results.txt
```

**Warning:** Using the single `>` will *overwrite* an existing file. Be careful not to redirect to a file whose content you want to keep.

You can also *append* content to the end of a file rather than overwriting it. To redirect output to append a file, use `>>`.

## Redirecting input

You can also redirect from files using `<`, so that a file could be read and its contents sent to a command. The `grep` example above could be rewritten as:

```bash
grep access < dept_of_transportation_03012015.csv > dot_search_results.txt
```

There are more features for redirection that provide more powerful ways to manipulate input and output, such as the [Here document](https://en.wikipedia.org/wiki/Here_document), but we've enough to get you started with redirection.
