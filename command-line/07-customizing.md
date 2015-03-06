# Customizing the command line

On Mac OS X, the built-in terminal application, aka _way of accessing the command line_, is named *Terminal*. You can select and customize themes that control colors, font, window size, etc. Many developers opt for a theme that provides light text on a dark background, such as the "Pro" theme in *Terminal*.

### Bash

[Bash](https://en.wikipedia.org/wiki/Bash_\(Unix_shell\)) is the name of a shell implementation that is very common. There are other shell implementations out there, in the same way that Mac OS X is an operating system implementation, but there is also Linux and Windows. So the command line in your terminal is *probably* provided by the bash shell.

#### `.bashrc`, `.bash_profile`, etc.

You can further customize the appearance and behavior of the command line through configuration files in your home directory. On most systems, these files are `~/.bash_profile` and `~/.bashrc`. If you don't see them when you `ls -al ~`, then you can create them using: `touch ~/.bash_profile ~/.bashrc`.

Why two files? Well, accorrding to `man bash`, `~/.bash_profile` is your "personal initialization file, executed for login shells" and `~/.bashrc` is your "individual per-interactive-shell startup file". So the first sets things up when you log in to a shell, and the other is when you start an "interactive" shell. This distinction will probably be confusing because usually we are logging in to the command line to interact with it, and so both files get "sourced" for configuration. We'll try to point you to the proper file to edit in the following sections.

**Note:** You can write and run script files that use bash syntax (you may come across files ending in `.sh`). These "shell scripts" are run in "non-interactive" shells. We won't cover writing shell scripts, but this is why there is a distinction between "interactive" and "non-interactive" shells.

## Make sure `~/.bashrc` is loaded in an interactive shell

This may be specific to the command line on Mac OS X, but the following snippet should be placed at the end of `~/.bash_profile`. Basically it makes sure your `~/.bashrc` is loaded in an "interactive" shell.

```bash
case $- in
   *i*) source ~/.bashrc
esac
```

You can also add the following to the top of your `~/.bashrc` to make sure it doesn't load in a non-interactive shell:

```bash
[[ $- != *i* ]] && return
```

## Customize your prompt

The prompt is that bit of text at the start of every line you type on. It can look something like `Your-Computer:~ dcloud$ ` when you login. You can customize what this displays by setting an [environment variable](https://en.wikipedia.org/wiki/Environment_variable) named `PS1`. You can set the prompt in your `~/.bash_profile` using something like `PS1="% "`.

That would make your prompt show the percent sign and a space. You can try it out temporarily by typing that directly into the command line. You can edit the characters inside the quotation marks to change what your prompt looks like, but there are a number of special sequences you can use to put information in your prompt. These are listed in the man page for bash (`man bash`),but here are a few interesting ones:

- `\H` "The hostname"
- `\h` "the hostname up to the first `.'"
- `\u` "The username of the current user"
- `\W` "The basename of the current working directory, with $HOME abbreviated with a tilde"
- `\d` "the  date  in 'Weekday Month Date' format (e.g., 'Tue May 26')"
- `\@` "the current time in 12-hour am/pm format"
- `\$` "if the effective UID is 0, a #, otherwise a $"" (your account has an user id in addition to a username. 0 is the id of special "superuser")

The default prompt can be redefined by setting `PS1="\h:\W \u\$ "`.

## Customize colors

You can colorize the bash prompt and some commands also support colorized output. `ls` and `grep` are two notable commands that support colorized output. Customizing bash prompt colors can a bit tricky as it involves writing out special sequences of characters that turn on or off certain color combinations. The colors are defined broadly as red, green, blue, etc., but the exact shades of those colors is usually customizable in your Terminal application's preferences.

### See also

- https://wiki.archlinux.org/index.php/Color_Bash_Prompt
- [[TODO: Link for bash color codes]]

## Add command aliases

### `ls` improved

The following is a big list of aliases for `ls`. The first line changes your command line so that when you run `ls` you are actually running `ls -hFG`, enabling color output, slashes after directory names, and unit suffixes for file sizes when file sizes are displayed.

```bash
alias ls='ls -hFG'  # add colors for filetype recognition
alias l='ls -CF'
alias ll="ls -alF"
alias la='ls -Al'          # show hidden files
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
```

### Safer `rm`, `cp`, and `mv`

Adding the `-i` option to these commands forces them to prompt you before each potential deletion or file overwrite.

```bash
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
```

### Color grep

```bash
alias grep='grep --color=always'
```

### Run a simple HTTP server using [Python](https://www.python.org)

```bash
alias serve='python -m SimpleHTTPServer $PORT'
```

Running `serve` will have Python start up a simple http server that can serve files from your computer. The `$PORT` represents a bash *variable* so that you can run `serve 9000` (or some other number) and run a web server on whatever port you want. **Note:** When you use <kbd>Ctrl+c</kbd> to abort the simple http server, Python will output a number of lines of text indicating an error, but that's okay. It's really just telling us that it was interrupted by a keyboard command, which is exactly what we did.

### Print well-formatted [JSON](https://en.wikipedia.org/wiki/JSON) from a file

```bash
alias json='python -m json.tool'
```

Add that alias to your `.bashrc` and you'll have a `json` command that will print out a well-formatted representation of a (valid) JSON file. You'd run it like so: `json data.json`.