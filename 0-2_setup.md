---
title: Git FUN!damentals
subtitle: Installation and Setup
minutes:
---

## On OSX

* your system *might* have git installed already
  * you can test this by opening a terminal and typing `git`
* if not, install xcode from the app store

## On Windows

* you should already have this from when you grabbed git and git-bash during the last lesson. If you do not have git or git-bash, please install from [here](https://git-scm.com/downloads).

## On Linux

* you can use the package manager by just typing:

~~~
$ apt-get install git
~~~

# Configuring git to work with you

## You need to tell git who you are

We do this by setting a couple of options in a file found in your home directory

~~~{.input}
git config --global user.name "Firstname Lastname"
git config --global user.email username@company.extension
~~~

Your name and email address is included in every change that you make, so it's easy to keep track of who did what

Also, unless you are a vimwizard, I would recommend changing your default editor to nano

~~~{.input}
git config --global core.editor nano
~~~

If you have a different favorite editor, you can type in the appropriate
command from the table below:

| Editor             | Configuration command                            |
|:-------------------|:-------------------------------------------------|
|Atom | `$ git config --global core.editor "atom --wait"`|
| nano               | `$ git config --global core.editor "nano -w"`    |
| Text Wrangler      | `$ git config --global core.editor "edit -w"`    |
| Sublime Text (Mac) | `$ git config --global core.editor "subl -n -w"` |
| Sublime Text (Win, 32-bit install) | `$ git config --global core.editor
"'c:/program files (x86)/sublime text 3/sublime_text.exe' -w"` |
| Sublime Text (Win, 64-bit install) | `$ git config --global core.editor
"'c:/program files/sublime text 3/sublime_text.exe' -w"` |
| Notepad++ (Win)    | `$ git config --global core.editor "'c:/program files
(x86)/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"`|
| Kate (Linux)       | `$ git config --global core.editor "kate"`       |
| Gedit (Linux)      | `$ git config --global core.editor "gedit -s -w"`   |
| emacs              | `$ git config --global core.editor "emacs"`   |
| vim                | `$ git config --global core.editor "vim"`   |

Make sure everything was entered correctly by typing `git config --list`

~~~{.output}
user.name=Example Person
user.email=example.person@gmail.com
core.editor=nano
~~~

## Getting Help

Of course, many issues you run into can be solved through Google, but Git
provides two help commands. `-h` will tell you more about a specific commandand
`--help` will bring up the manual:

~~~
$ git config -h
$ git --help
~~~

## Acknowledgments

This learning module borrows and adapts materials from the following organizations and individuals. Thank you!

[Software Carpentry](https://github.com/swcarpentry/git-novice)
