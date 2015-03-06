# More useful commands

Below is a collection of arbitrary commands that you might fund useful. Some of them may have to be installed via a package manager, such as [APT](https://wiki.debian.org/Apt) or [Yum](http://yum.baseurl.org) on Linux or [Homebrew](http://brew.sh) on Mac OS X.

| Command name | What it does |
| ------------ | ------------ |
| `ln` | Creates a "linked copy" of a file. It doesn't copy the information in the file, but rather creates a special file that "points" to an original. Frequently used with the `-s` option, which creates a "symbolic" link. |
| `wget` | Similar to `curl` (downloads content from URLs), but "Wget can follow links in HTML, XHTML, and CSS pages, to create local versions of remote web sites" |
| `zip`, `zipinfo`, `unzip` | Create, inspect, uncompress zip files. |
| `tar` | Create and manipulate archive files. If you see a `.tar` or `.tar.gz` file, you can use `tar -xvf` to uncompress them. |
| `top` | `top` shows information such as memory and CPU usage for processes (running applications). |
| `htop` | `htop` is an "interactive" version of `top` that supports keyboard commands for sorting and scrolling. Also supports colors! |
| `jq` | `jq` is a "commandline JSON processor". |
| `pip` | `pip` is an installer for additional packages (code tools) for Python. **OS X Users:** The version of Python provided by OS 10.10 and below does not include `pip`. You should probably install and use [homebrew](http://brew.sh))'s Python. |
| csvkit: `csvgrep`, `csvstat`, etc. | `csvkit` is a suite of tools for working with CSV files. You can `pip install csvkit` (if you have `pip` installed) |
| `info` | Some tools provide documentation in "INFO" format. `info` |
| `killall` | `killall` "kills processes selected by name". Someday you need to kill processes this way. |

## Tools to be aware of

There are a number of tools that programmers use that probably should be mentioned, but discussion of them is best left for other resources.

## Git

<http://git-scm.com>

> Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

[Github](https://github.com/about), a service for storing and sharing code using `git`, maintains a [list of resouces for learning git and Github](https://help.github.com/articles/good-resources-for-learning-git-and-github/).

## Python

<https://www.python.org>

> Python is a programming language that lets you work more quickly and integrate your systems more effectively.

There is a curated list of [Python tutorials for non-programmers](https://wiki.python.org/moin/BeginnersGuide/NonProgrammers), but in-person classes might be available in your area.

## Ruby

<https://www.ruby-lang.org/>

> A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.