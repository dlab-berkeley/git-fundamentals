---
title: Git FUN!damentals
subtitle: Installation and Setup
minutes:
---

## On BCE

* You've already got it!
* But, just for fun:
  * `sudo apt-get install git`
  * you should see:

~~~{.output}
Reading package lists... done
Building dependency tree
Reading state information... done
git is already the newest version
~~~

* On a debian system (like BCE), you install via `apt-get install`
* On a RHEL system, you install via `yumm install`

## On OSX

* your system *might* have git installed already
  * you can test this by opening a terminal and typing `git`
* if not, install xcode from the app store

## On Windows

* you should already have this from when you grabbed git and git-bash during the last lesson

# Configuring git to work with you

## You need to tell git who you are

We do this by setting a couple of options in a file found in your home directory

~~~{.input}
git config --global user.name "Firstname Lastname"
git config --global user.email username@company.extension
~~~

Your name and email address is included in every change that you make, so it's easy to keep track of who did what

Also, unless you are a vimwizard, I would recommend chanigng your default editor to nano

~~~{.input}
git config --global core.editor nano
~~~

Make sure everything was entered correctly by typing `git config --list`

~~~{.output}
user.name=Dillon Niederhut
user.email=dillon.niederhut@gmail.com
core.editor=nano
~~~

## Acknowledgments

This learning module borrows and adapts materials from the following organizations and individuals. Thank you!

[Software Carpentry](https://github.com/swcarpentry/git-novice)
[Dav Clark](https://github.com/davclark/git-fundamentals)
